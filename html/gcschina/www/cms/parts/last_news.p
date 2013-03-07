^if($MAIN:user_status eq "99"){
<br /><br />
}

$f[^table::sql{select id, title, announce, body, published, updated from ${MAIN:sql_config.table_prefix}module_news order by published DESC}[$.limit(1) $.offset(0)]]
^if($f){
	<h2>Последние новости</h2>
	<p />^f.published.left(10)
	<p><b>$f.title</b></p>
	^untaint{$f.announce}
#	$MAIN:meta_title[${f.title}]
	<p style="text-align: right"><a href="/news/${f.id}.html">читать новость полностью...</a></p>
}

