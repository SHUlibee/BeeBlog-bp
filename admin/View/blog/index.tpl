<link href="/Assert/bootstrap-table-1.11.0/bootstrap-table.min.css" rel="stylesheet"/>
<link href="/Assert/zui/lib/datagrid/zui.datagrid.min.css" rel="stylesheet"/>

<table id="table-blog"></table>
<div id="myDataGrid" class="datagrid"></div>

<script src="/Assert/bootstrap-table-1.11.0/bootstrap-table.min.js"></script>
<script src="/Assert/bootstrap-table-1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/Assert/zui/lib/datagrid/zui.datagrid.min.js"></script>
<script>
$(document).ready(function() {

    $('#table-blog').bootstrapTable({
        url: '/blog/list2',
        striped: true,
        showColumns: false,
        pagination: true,
        paginationLoop: true,
        idField: 'id',
        columns: [
            {field: 'id',title: 'ID'},
            {field: 'title',title: '标题'},
            {field: 'author_id',title: '作者'},
            {field: 'category_id',title: '分类'},
            {field: 'tags',title: '标签'},
            {field: 'content',title: '内容'},
            {field: 'status',title: '状态'},
        ],
        onLoadSuccess: function(res){
            console.log(res);
        }
    });


    $('#myDataGrid').datagrid({
        dataSource: {
            cols:[
                {name: 'id',label: 'ID'},
                {name: 'title',label: '标题'},
                {name: 'author_id',label: '作者'},
                {name: 'category_id',label: '分类'},
                {name: 'tags',label: '标签'},
                {name: 'content',label: '内容'},
                {name: 'status',label: '状态'}
            ],
            remote: function(params) {
                return {
                    // 原创请求地址
                    url: '/blog/list',
                    // 请求类型
                    type: 'GET',
                    // 数据类型
                    dataType: 'json'
                };
            }
        },
        // ... 其他初始化选项
    });

});

</script>