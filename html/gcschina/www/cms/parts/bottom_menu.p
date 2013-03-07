
$MAIN:menu[^table::sql{select id, menu_title, menu_uri, visible from ${MAIN:sql_config.table_prefix}menu where menu_id in (2,3) and menu_parent_id = '0' order by menu_id DESC, order_by ASC}]
^if($MAIN:menu){
<ul>
	^MAIN:menu.menu{
		^if($MAIN:menu.visible eq "1"){
			<li /><a href="/${MAIN:menu.menu_uri}/">$MAIN:menu.menu_title</a>
#			$MAIN:submenu[^table::sql{select id, menu_title, menu_uri, visible from ${MAIN:sql_config.table_prefix}menu where menu_id in (2,3) and menu_parent_id = '$MAIN:menu.id' order by order_by ASC}]
#			^if($MAIN:submenu){
#				<ul>
#					^MAIN:submenu.menu{
#						<li /><a href="/${MAIN:menu.menu_uri}/${MAIN:submenu.menu_uri}/">$MAIN:submenu.menu_title</a>
#					}
#				</ul>
#			}
		}
	}
</ul>
}
<div class="clear"></div>

