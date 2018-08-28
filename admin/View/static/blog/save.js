$(document).ready(function(){

    $.ajax({
        method: 'get',
        url: 'category/list',
        async: false,
        success: function (data) {
            for(var i = 0; i < data.length; i++){
                $('#category_id').append('<option value="' + data[i].id + '">' + data[i].name + '</option>');
            }
        }
    });

    $(".form-datetime").datetimepicker(
        {
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1,
            format: "yyyy-mm-dd hh:ii"
        });

    var editor = KindEditor.create('#content', {
        basePath: '/dist/lib/kindeditor/',
        bodyClass : 'article-content',
        resizeType : 1,
        allowPreviewEmoticons : false,
        allowImageUpload : false,
        items : [
            'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
            'removeformat', '|', 'code', 'preview', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
            'insertunorderedlist', '|', 'emoticons', 'image', 'link'
        ]
    });

    $('#btn-save-blog').on('click', function () {
        editor.sync();
        $.ajax({
            method: 'post',
            url: 'blog/save',
            data: $('#form-save-blog').serialize(),
            success: function(data){
                if(data.code == 1){
                    alert('发布成功！');
                    $('#form-add-blog')[0].reset();
                    editor.html('');
                }else if(data.code == 2){
                    alert('更新成功！');
                    updateDialog.modal('hide');
                }
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {

            }
        })
    });

    var id = $('#id').val();
    if(id != undefined){
        $.ajax({
            method: 'get',
            url: 'blog/getById?id=' + id,
            success: function (data) {
                $.each(data, function(name, value){
                    if(name == 'content'){
                        editor.html(value);
                    }else{
                        $('#' + name).val(value);
                    }
                });
            }
        });
    }
    

});