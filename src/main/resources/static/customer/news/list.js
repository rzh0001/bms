var dtGridColumns = [{
    id : 'title',
    title : '标题',
    type : 'string',
    columnClass : 'text-center',
    headerStyle : 'color:grey;'
},{
    id : 'descs',
    title : '描述',
    type : 'string',
    columnClass : 'text-center',
    headerStyle : 'color:grey;'
}];

var dtGridOption = {
    lang : 'zh-cn',
    ajaxLoad : true,
    check : true,
    checkWidth :'37px',
    loadURL : 'news/list',
    columns : dtGridColumns,
    gridContainer : 'dtGridContainer',
    toolbarContainer : 'dtGridToolBarContainer',
    tools : '',
    pageSize : 10,
    pageSizeLimit : [10, 20, 30]
};
var grid = $.fn.dlshouwen.grid.init(dtGridOption);


$(function() {
	grid.load();
	$('select').selected();
});

function search(){
	  grid.parameters = new Object();
	  grid.parameters['title'] = $("#title").val();
	  grid.refresh(true);
}

function delteAll(){
	var checkId = getCheckAll(grid.getCheckedRecords());
	if(checkId!=''){
		del("news/"+checkId+"/deleteBatch",search);
	}else{
		 layer.msg('请选择要删除的数据', {
             icon : 3
         });
	}
}

