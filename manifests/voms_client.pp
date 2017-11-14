class wn::voms_client (
  $vo_vomses = {}
){
  $vos = keys($vo_vomses)
    

  file {"/etc/grid-security/vomsdir":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
  }
  
  file {"/etc/vomses":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
  }

  Wn::Voms_client::Voms_directories[$vos] -> Wn::Voms_client::Create_files['files']

  wn::voms_client::voms_directories{$vos:}
  
  wn::voms_client::create_files{'files': 
    vomses => $vo_vomses
  }


  define create_files($vomses = {}){

  $yaml = inline_template('
---
<% @vomses.each_pair do |vo, servers | %>
<% servers.each do |s| -%>
/etc/grid-security/vomsdir/<%= vo %>/<%= s["server"] %>.lsc:
  content: "<%= s["dn"] %>\n<%= s["ca_dn"] %>\n"
  require: File[/etc/grid-security/vomsdir/<%= vo %>]
  
/etc/vomses/<%= vo %>-<%= s["server"] %>:
  content: "\"<%= vo %>\" \"<%= s["server"] %>\" \"<%= s["port"] %>\" \"<%= s["dn"] %>\" \"<%= vo %>\" \"24\"\n"
  require: File[/etc/vomses]
  
<% end -%>
<% end -%>
  ')

   $filedata = parseyaml($yaml)
   create_resources('file',$filedata)
  }

  define voms_directories(){
  
  file {"/etc/grid-security/vomsdir/${name}":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0755',
    recurse => true,
    purge   => true,
    require => File['/etc/grid-security/vomsdir']
  }

  # Set defaults for the rest of this scope.
  File{
    owner => root,
    group => root,
    mode  => '0644',
  }
 }
}
