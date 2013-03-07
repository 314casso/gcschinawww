@CLASS
faq

###
###
###
@auto[]
$module_name[faq.p]
$module_title[Вопросы и ответы (FAQ)]
$table_name[${MAIN:sql_config.table_prefix}module_faq]

###
###
###
@index[]

^if(def $form:question){
	$id(^int:sql{select id from $table_name where question = '$form:question'}[$.default{0} $.limit(1) $.offset(0)])
	^if($id eq "0"){
		^void:sql{insert into $table_name (title, question, published) values ('Новый вопрос', '$form:question', now())}

$now[^date::now[]]
$text[На сайте $env:HTTP_HOST был задан новый вопрос:

$form:question]

---
IP-отправителя: $env:REMOTE_ADDR
Дата и время: ^now.sql-string[]]
$html[<p>На сайте $env:HTTP_HOST был задан новый вопрос:</p><p>$form:question<p>---<br />IP-отправителя: $env:REMOTE_ADDR<br />Дата и время: ^now.sql-string[]]

	^mail:send[
		$.from[$MAIN:from_email]
		$.to[$MAIN:to_email]
		^if(def $MAIN:cc_email){$.cc[$MAIN:cc_email]}
		^if(def $MAIN:bcc_email){$.bcc[$MAIN:bcc_email]}
		$.subject[Новый вопрос на сайте www.gcschina.ru]
		$.text[$text]
		$.html{$html}
	] 


	}
		<i>Ответ на Ваш вопрос в ближайшее время появится в данном разделе</i>.<br />Благодарим за интерес к нашей компании.
}{
<input type="button" name="show_form_button" onClick="^$('#service_order').toggle()^;" value="Задать вопрос" />

<div id="service_order" style="display: none^; padding-top: 10px^;">
	<form action="$request:uri" method="post" name="service_order_form" id="service_order_form">
	<ul>
		<li>
			<ul>
				<li class="left_li"><span>Ваш вопрос</span></li>
				<li>
					<textarea name="question" class="input_textarea required" /></textarea>
				</li>
			</ul>
			<div class="clear"></div>
		</li>
		<li>
			<ul>
				<li class="left_li_">&nbsp^;</li>
				<li>
					<input type="submit" value="^if(${MAIN:language_prefix} eq "/en"){Send}{^if($MAIN:language_prefix eq "/cn"){发送（按键）}{Отправить}}" />
				</li>
			</ul>
		</li>
	</ul>
	</form>
</div>
<div class="clear"></div>
}

$f[^table::sql{select id, title, question, answer, published, updated from $table_name where answer != '' order by order_by ASC}]
^if($f){
<div id="faq">
	<ul>
	^f.menu{
		<li>
			<b>$f.title</b><br />^if(def $f.question){^untaint{$f.question}}
			<ul id="answer_${f.id}" style="background-color: #cccccc^;">
				<li>^untaint{$f.answer}</li>
			</ul>
		</li>
	}
	</ul>
</div>
}{ Ни одного вопроса не создано }



###
###
###
@admin[][]
^switch[$form:todo]{
	^case[add]{
		^if(def $form:key_id){
			$this[^table::sql{select * from $table_name where id = '$form:key_id'}]
			<h1>Редактировать вопрос</h1>
		}{
			<h1>Создать новый вопрос</h1>
		}

		<form action="${MAIN:language_prefix}/admin/submit_form_ajax/" method="post" name="create_question" id="create_question">
			<b>Тема вопроса</b>:<br />
			<input type="text" name="title" value="$this.title" size="100" />
			<br /><br />
			<b>Текст вопроса</b>:<br />
			^use[editor.p]
			$editor_name_[question]
			$editor_text[$this.question]
			^editor:main[${editor_name_};^if(def $form:$editor_name_){$form:$editor_name_}{$editor_text};100;Basic]
			<br /><br />

			<b>Текст ответа</b>:<br />
			^use[editor.p]
			$editor_name_[answer]
			$editor_text[$this.answer]
			^editor:main[${editor_name_};^if(def $form:$editor_name_){$form:$editor_name_}{$editor_text};100;Basic]
			<br /><br />

			<input type="button" name="submit_this_form" value="^if(def $form:key_id){Изменить}{Создать}" onClick="submit_form_ajax('create_question', 'update_modal(\'${MAIN:language_prefix}/admin/module/?id=${form:id}\')')" />
			<input type="hidden" name="table_name" value="${table_name}" />
			<input type="hidden" name="key_name" value="id" />
			<input type="hidden" name="key_value" value="^form:key_id.int(0)" />
			<input type="hidden" name="status" value="1" />
			$now[^date::now[]]
			<input type="hidden" name="published" value="^now.sql-string[]" />
			<input type="hidden" name="updated" value="^now.sql-string[]" />
		</form>
	}
	^case[DEFAULT]{
		<h1>$module_title</h1>

		<input type="button" name="add_new_question" value="Создать новый вопрос" onClick="update_modal('${MAIN:language_prefix}/admin/module/?id=${module_name}&todo=add')" />
		<p />
		$f[^table::sql{select id, title, status from $table_name order by order_by ASC}]
		^if($f){
			<ul class="sortable">
			^f.menu{
				<li class="ui-state-default" id="module_faq_${f.id}">
					<span class="ui-icon ui-icon-arrowthick-2-n-s"></span>
					$f.title
					<a href="javascript:dummy()" onClick="update_modal('${MAIN:language_prefix}/admin/module/?id=${module_name}&todo=add&key_id=${f.id}')"><img src="/js/i/edit.png" class="admin_icon" alt="Изменить" title="Изменить" /></a>
					<a href="javascript:dummy()" onClick="please_confirm('Подтвердите удаление', 'delete_element(\'${table_name}\', \'id\', \'$f.id\', \'module_faq_${f.id}\')')"><img src="/js/i/delete.png" class="admin_icon" alt="Удалить" title="Удалить" /></a>
				</li>
			}
			</ul>
		}{Не добавлено ни одного вопроса}
	}
}
