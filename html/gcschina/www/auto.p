###
###
###
@auto[]
$CLASS_PATH[^table::create{path
/cms/classes/modules/
/cms/classes/includes/
/cms/classes/}]

###
### Формируем HTTP-заголовки
###
$response:Last-Modified[^date::now[]]
$response:Expires[^date::now(+((1/24/60/60)*1))]

$request:charset[utf-8]
$response:charset[utf-8]
$response:content-type[
	$.value[text/html]
	$.charset[utf-8]
]
$response:cache-control[no-cache]

^if(^request:uri.pos[/en/] >= 0){
	$MAIN:language_prefix[/en]
	$MAIN:sql_config[^table::load[/cms/cfg/sql_en.cfg]]
}{
	^if(^request:uri.pos[/cn/] >= 0){
		$MAIN:language_prefix[/cn]
		$MAIN:sql_config[^table::load[/cms/cfg/sql_cn.cfg]]
	}{
		$MAIN:language_prefix[]
		$MAIN:sql_config[^table::load[/cms/cfg/sql.cfg]]
	}
}

$MAIN:current_theme[gcs]
# || $env:REMOTE_ADDR eq "178.238.112.82"
^if($cookie:gcs_is_admin eq "1" || $env:HTTP_HOST eq "gcs"){ $MAIN:user_status(99) }
$MAIN:from_email[no-reply@gcschina.ru]
$MAIN:to_email[info@gcschina.ru]
$MAIN:cc_email[]
$MAIN:bcc_email[gynsus@yandex.ru]

###
###
###
@main[]
^use[lib.p]
#^use[sql.p]
^use[uri.p]
^use[templates.p]
^use[mailto.p]

^if(^uri:path_last.right(4) eq ".css"){^templates:parse_css[${MAIN:current_theme};$uri:path_last]}{^generate_page[]}




###
###
###
@generate_page[]
###
###
###
^connect[mysql://${MAIN:sql_config.login}:${MAIN:sql_config.password}@${MAIN:sql_config.host}/${MAIN:sql_config.base}]{
^void:sql{SET NAMES utf8}

$repa___[^table::create{from	to
#/en/order/	/order/
href="/"	href="${MAIN:language_prefix}/"}]

	$MAIN:content[^content[]]
	$MAIN:page[
		^switch[$uri:path_first]{
			^case[admin]{ ^templates:parse_template[${MAIN:current_theme};ajax] }
			^case[]{ ^templates:parse_template[${MAIN:current_theme};index] }
			^case[DEFAULT]{ ^templates:parse_template[${MAIN:current_theme};^if(def $MAIN:template){$MAIN:template}{default}] }
		}
	]
	$MAIN:page[^MAIN:page.replace[$repa___]]
	$MAIN:page
#	^mailto:crypt[$MAIN:page][html]

}
