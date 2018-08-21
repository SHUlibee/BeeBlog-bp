$(document).ready(function(){

    KindEditor.create('textarea.kindeditorSimple', {
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
        $.ajax({
            method: 'post',
            url: 'blog/save',
            data: $('#form-add-blog').serialize(),
            success: function(data){
                if(data.code == 1){
                    alert('发布成功！');
                }
                $('#form-add-blog')[0].reset();
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {

            }
        })
    });

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

    

});