@CLASS
editor

@auto[]

###
###
###
@main___[editor_name;editor_value;height;type][]
^if(!def $MAIN:editor_scripts){
<script type="text/javascript" src="/js/editor/fckeditor.js"></script> 
$MAIN:editor_scripts(1)
}

#$editor_value[^editor_value.trim[]]
<textarea id="editor_${editor_name}" name="editor_${editor_name}" class="editor___" height="${height}" toolbarset="${type}">^if(def $editor_value){$editor_value}{}</textarea> 

###
###
###
@main_[editor_name;editor_value;height;type][]
^if(!def $MAIN:editor_scripts){
#<script type="text/javascript" src="/js/ckeditor/ckeditor.js"></script>
#<script type="text/javascript" src="/js/ckeditor/adapters/jquery.js"></script>
$MAIN:editor_scripts(1)
}

<textarea cols="80" id="editor1" name="editor1" rows="10">^if(def $editor_value){$editor_value}{}</textarea> 


##########################

###
###
###
@main[editor_name;editor_value;height;type][]
^if(!def $MAIN:editor_scripts){
<script type="text/javascript">
var CKEDITOR_BASEPATH = '/js/editor/'^;
</script>
<script type="text/javascript" src="/js/editor/ckeditor.js"></script>
<script type="text/javascript" src="/js/editor/adapters/jquery.js"></script>
<script type="text/javascript" src="/js/ckfinder/ckfinder.js"></script>
<script type="text/javascript" src="/js/editor/jquery_editor_init_.js"></script>
$MAIN:editor_scripts(1)
}

<textarea class="jquery_ckeditor^if(def $type){_^type.lower[]}" height="${height}" id="editor_${editor_name}" name="editor_${editor_name}">^if(def $editor_value){$editor_value}{}</textarea>

