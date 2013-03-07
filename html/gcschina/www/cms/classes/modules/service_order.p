@CLASS
service_order

###
###
###
@auto[]
$module_name[service_order.p]
$module_title[Заявка на услуги]
$table_name[${MAIN:sql_config.table_prefix}form_serviceorder]

###
###
###
@index[]
$f[^table::sql{select id, title, type, params, required from $table_name order by order_by ASC}]
^if($f){

$mail_sended(0)

^if(def ^f.menu{$form_name[field_${f.id}]$form:$form_name}[ && def ]){
#^if(^form:form_verify.int(0) eq "1"){

$now[^date::now[]]
$text[На сайте $env:HTTP_HOST была сформирована новая заявка:

^f.menu{$form_name[field_${f.id}]$f.title - $form:$form_name}[
]

---
IP-отправителя: $env:REMOTE_ADDR
Дата и время: ^now.sql-string[]]
$html[<p>На сайте $env:HTTP_HOST была сформирована новая заявка: <p>^f.menu{$form_name[field_${f.id}]$f.title - <b>$form:$form_name</b>}[<br />]<p>---<br />IP-отправителя: $env:REMOTE_ADDR<br />Дата и время: ^now.sql-string[]]

	^mail:send[
		$.from[$MAIN:from_email]
		$.to[$MAIN:to_email]
		^if(def $MAIN:cc_email){$.cc[$MAIN:cc_email]}
		^if(def $MAIN:bcc_email){$.bcc[$MAIN:bcc_email]}
		$.subject[Заявка с сайта www.gcschina.ru]
		$.text[$text]
		$.html{$html}
	] 
	<b>Ваша заявка отправлена и в ближайшее время будет рассмотрена.</b><br />Благодарим за обращение в нашу компанию.
	$mail_sended(1)

#}
}

^if($mail_sended eq "0"){
<div id="service_order">
	<form action="$request:uri" method="post" name="service_order_form" id="service_order_form">
	<ul>
	^f.menu{
		<li>
			<ul>
				<li class="left_li"><span>$f.title</span></li>
				<li>
					^switch[$f.type]{
						^case[menu_select]{
							$menu_select[^table::sql{select id, menu_title from ${MAIN:sql_config.table_prefix}menu where menu_parent_id = '0' and visible = '1' and menu_id = '$f.params' order by order_by ASC}]
							<select name="field_${f.id}" class="input_select^if($f.required eq 1){ required}">
								^menu_select.menu{
									<option value="$menu_select.menu_title">$menu_select.menu_title</option>
									$menu_select_childs[^table::sql{select id, menu_title from ${MAIN:sql_config.table_prefix}menu where menu_parent_id = '$menu_select.id' and visible = '1' and menu_id = '$f.params' order by order_by ASC}]
									^menu_select_childs.menu{
										<option value="$menu_select_childs.menu_title">&mdash^;&mdash^; $menu_select_childs.menu_title</option>
									}
								}
							</select>
						}
						^case[text]{
							<input type="text" name="field_${f.id}" value="" class="input_text^if($f.required eq 1){ required}" />
						}
						^case[textarea]{
							<textarea name="field_${f.id}" class="input_textarea^if($f.required eq 1){ required}" /></textarea>
						}
						^case[DEFAULT]{default}
					}
				</li>
			</ul>
			<div class="clear"></div>
		</li>
	}
		<li>
			<ul>
				<li class="left_li_">&nbsp^;</li>
				<li>
					<input type="submit" value="^if(${MAIN:language_prefix} eq "/en"){Send}{^if($MAIN:language_prefix eq "/cn"){发送（按键）}{Отправить заявку}}" />
				</li>
			</ul>
		</li>
	</ul>
	</form>
</div>
}

}

###
###
###
@admin[]
admin
