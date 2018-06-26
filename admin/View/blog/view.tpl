<table id="table"></table>

<script>

    $('#table').bootstrapTable({
        url: '/blog/list',
        pagination: true,
        paginationLoop: true,
        columns: [
            {field: 'id',title: 'ID'},
            {field: 'title',title: '标题'},
            {field: 'author_id',title: '作者'},
            {field: 'category_id',title: '分类'},
            {field: 'tags',title: '标签'},
            {field: 'content',title: '内容'},
            {field: 'status',title: '状态'}
        ]
    });

</script>