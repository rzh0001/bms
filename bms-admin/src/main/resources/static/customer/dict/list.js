var dtGridColumns = [{
    id : 'code',
    title : '字典标识',
    type : 'string',
    columnClass : 'text-left',
    headerStyle : 'color:grey;'
},{
    id : 'num',
    title : '序号',
    type : 'string',
    columnClass : 'text-center',
    headerStyle : 'color:grey;'
},{
    id : 'name',
    title : '名称',
    type : 'string',
    columnClass : 'text-center',
    headerStyle : 'color:grey;'
},{
    id : 'tips',
    title : '备注',
    type : 'string',
    columnClass : 'text-center',
    headerStyle : 'color:grey;'
},{
    id : 'operation',
    title : '操作',
    type : 'string',
    columnClass : 'text-center tpl-table-black-operation',
    headerStyle : 'color:grey;',
    resolution:function(value, record, column, grid, dataNo, columnNo){
    	  var content = '';
          content += '<a href="#" onclick="loadPage(\'dict/'+record.id+'/select\');"> <i class="am-icon-pencil"></i> 编辑</a> ';
          content += '  ';
          content += '<a href="#" onclick="delResource('+record.id+');" class="tpl-table-black-operation-del del-btn"><i class="am-icon-trash"></i> 删除</a>';
          return content;
    }
}];

var dtGridOption = {
    lang : 'zh-cn',
    ajaxLoad : true,
    checkWidth :'37px',
    check : true,
    isTreeGrid : true,
    isLeafColumn : 'last',
    iconColumn : 'code',
    indexKey : 'id',//主键id 列名,默认值为id
    parentId : 'pid',//默认值为'parentId'
    loadURL : 'dict/list',
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
	  grid.parameters['code'] = $("#code").val();
	  grid.refresh(true);
}

function deldict(id){
	del("dict/"+id+"/delete",search);
}
function toAdd(){
    var rows = grid.getCheckedRecords();
    if (rows.length>1) {
    	layer.msg("请选择一条记录", {icon : 0});
    }else{
    	if(rows.length==1){
    		if(rows[0].pid!=0){
    			layer.msg("请选择根目录", {icon : 0});
    		}else{
    			loadPage('dict/form?pid='+rows[0].id+'&code='+rows[0].code);
    		}
    	}else{
    		loadPage('dict/form');
    	}
    }
}
function delResource(id){
	del("dict/"+id+"/delete",search);
}

