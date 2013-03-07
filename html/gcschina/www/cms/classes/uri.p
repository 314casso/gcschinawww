###
###
###
@CLASS
uri

@auto[]
$path_[^request:uri.lsplit[/]]
$path[^table::create{piece}]
^path_.menu{
^if($path_.piece ne "" && ^path_.piece.left(6) ne "?page=" && $path_.piece ne "en" && $path_.piece ne "cn"){
^path.append{$path_.piece}
}
}

###
###
###
$path_first[$path.piece]
^path.offset(+1)$path_second[$path.piece]^path.offset(-1)
^path.offset(+2)$path_third[$path.piece]^path.offset(-2)
^path.offset(-1)$path_last[$path.piece]^path.offset(+1)
^path.offset(-2)$path_relast[$path.piece]^path.offset(+2)

###
###
###
@inspect_uri[][i]
$i(1)
^uri:path.menu{
	$is_menu(^int:sql{select id from ${MAIN:sql_config.table_prefix}menu where menu_uri = '$uri:path.piece' and menu_parent_id = '^if(^uri:path.line[] eq "1"){0}{$MAIN:inspect_path_last}'}[$.limit(1) $.offset(0) $.default{0}])
	$MAIN:inspect_path_last($is_menu)
	^if($is_menu eq "0"){$i(0)}
}
^if($i eq "1"){$i($is_menu)}
$result($i)

###
###
###
@get_uri_by_menu_id[menu_id;menu][]
$MAIN:temp_uri[/]
^if(^menu_id.int(0) > 0){
	$menu[^table::sql{select * from ${MAIN:sql_config.table_prefix}menu where id = '$menu_id'}]
	^if($menu){
		$MAIN:temp_uri[/${menu.menu_uri}/]
		^if($menu.menu_parent_id ne "0"){
			^get_uri_by_parent_menu_id[$menu.menu_parent_id]
		}
	}
}
$result[${MAIN:language_prefix}${MAIN:temp_uri}]

@get_uri_by_parent_menu_id[menu_id;menu][]
$menu[^table::sql{select * from ${MAIN:sql_config.table_prefix}menu where id = '$menu_id'}]
^if($menu){
	$MAIN:temp_uri[/${menu.menu_uri}${MAIN:temp_uri}]
	^if($menu.menu_parent_id ne "0"){
		^get_uri_by_parent_menu_id[$menu.menu_parent_id]
	}
}

