
$MAIN:menu[^table::sql{select id, menu_title, menu_uri, visible from ${MAIN:sql_config.table_prefix}menu where menu_id = '^MAIN:part_params.int(0)' and menu_parent_id = '0' order by order_by ASC}]
^if($MAIN:menu){
<ul>
	<li><a href="/">^if($MAIN:language_prefix eq ""){Главная}{Home}</a>
	^MAIN:menu.menu{
		^if($MAIN:menu.visible eq "1"){
			<li><a href="^uri:get_uri_by_menu_id[${MAIN:menu.id}]">$MAIN:menu.menu_title</a>

#			$MAIN:submenu[^table::sql{select id, menu_title, menu_uri, visible from ${MAIN:sql_config.table_prefix}menu where menu_id = '^MAIN:part_params.int(0)' and menu_parent_id = '$MAIN:menu.id' order by order_by ASC}]
#			^if($MAIN:submenu){
#				<ul>
#					^MAIN:submenu.menu{
#						<li><a href="^uri:get_uri_by_menu_id[${MAIN:submenu.id}]">$MAIN:submenu.menu_title</a></li>
#					}
#				</ul>
#			}

			</li>
		}
	}
</ul>
}
<div class="clear"></div>

^if($MAIN:user_status eq "99"){
<div class="admin_link"><input type="button" value="Изменить меню" onClick="show_modal('${MAIN:language_prefix}/admin/edit_menu/?id=^MAIN:part_params.int(0)')" /></div>
}

