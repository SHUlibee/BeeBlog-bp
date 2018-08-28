/**
 * Created by bee on 2018/8/17.
 */
$(document).ready(function() {



    $('#table-blog').bootstrapTable({
        url: '/blog/list',
        striped: true,
        search: false,
        showRefresh: false,
        showColumns: false,
        minimumCountColumns: 2,
        clickToSelect: true,
        // detailView: true,
        // detailFormatter: 'detailFormatter',
//        pagination: true, //分页有问题，妈卖批
        paginationLoop: false,
        sidePagination: 'server',
        silentSort: false,
        smartDisplay: false,
        escape: true,
        searchOnEnterKey: true,
        idField: 'id',
//        sortName: 'createTime',
//        sortOrder: 'desc',
        sortStable: true,
        maintainSelected: true,
        columns: [
            {field: 'id',title: 'ID'},
            {field: 'title',title: '标题'},
            {field: 'author_id',title: '作者'},
            {field: 'category_id',title: '分类'},
            {field: 'tags',title: '标签'},
            {field: 'content',title: '内容', formatter: function (value, row, index) {
                return value.substr(0, 100) + '...';
            }},
            {field: 'status',title: '状态'},
            {field: 'action',title: '预览', width: 150, formatter: function (value, row, index) {
                return '<div class="btn-group">' +
                    '<a href="javascript:;" class="btn btn-sm btn-info" onclick="contentPreview(' + row.id + ')">预览</a>' +
                    '<a href="javascript:;" class="btn btn-sm btn-primary" onclick="updateAction(' + row.id + ')">更新</a>' +
                    '<a href="javascript:;" class="btn btn-sm btn-danger" onclick="deleteAction(' + row.id + ')">删除</a>' +
                    '</div>';
            }},
        ],
        onLoadSuccess: function(res){
            // console.log(res);
        }
    });
});

function contentPreview(id){
    $.ajax();
}

var updateDialog;
function updateAction(id){
    updateDialog = bootbox.dialog({
        title: '更新博客',
        size: 'large',
        message: '<p><i class="icon icon-spin icon-spinner-indicator"></i> Loading...</p>'
    });
    updateDialog.init(function(){
        $.ajax({
            method: 'get',
            url: 'blog/update?id=' + id,
            success: function(data){
                updateDialog.find('.bootbox-body').html(data);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {

            }
        });
    });
}

function deleteAction(id){
    $.ajax({
        method: 'get',
        url: 'blog/delete?id=' + id,
        success: function(data){
            $('#table-blog').bootstrapTable('refresh');
            if(data.code == 1){
                alert("删除成功！")
            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {

        }
    });
}
