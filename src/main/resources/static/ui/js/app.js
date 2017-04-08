var tabCounter = 0;
var $tab = $('#doc-tab');
var $nav = $tab.find('.am-tabs-nav');
var $bd = $tab.find('.am-tabs-bd');
$(function() {
	 $('.sidebar-nav').dropdown();
    // 读取body data-type 判断是哪个页面然后执行相应页面方法，方法在下面。
    var dataType = $('body').attr('data-type');
    autoLeftNav();
    console.log(dataType);
    for (key in pageData) {
        if (key == dataType) {
            pageData[key]();
        }
    }
    $(window).resize(function() {
        autoLeftNav();
        console.log($(window).width());
    });
 // 移除标签页
    $nav.on('click', '.am-icon-close', function() {
      var $item = $(this).closest('li');
      var index = $nav.children('li').index($item);

      $item.remove();
      $bd.find('.am-tab-panel').eq(index).remove();

      $tab.tabs('open', index > 0 ? index - 1 : index + 1);
      $tab.tabs('refresh');
    });

   
});

function addTab(url,title) {
  var nav = '<li><span class="am-icon-close"></span>' +
    '<a href="javascript: void(0)">' + title + '</a></li>';
  var content = '<div class="am-tab-panel"></div>';
  $nav.append(nav);
  $bd.append(content);
  $.get(url, 
		  function(data, textStatus){ 
	  		$('.am-tab-panel:last').append(data);
   }); 
  tabCounter++;
  $tab.tabs('refresh');
}

// 页面数据
var pageData = {
    // ===============================================
    // 首页
    // ===============================================
  
}
// 风格切换

$('.tpl-skiner-toggle').on('click', function() {
    $('.tpl-skiner').toggleClass('active');
})

$('.tpl-skiner-content-bar').find('span').on('click', function() {
	var color = $(this).attr('data-color');
    $('body').attr('class',color )
    saveSelectColor.Color = color;
    // 保存选择项
    storageSave(saveSelectColor);

})




// 侧边菜单开关
function autoLeftNav() {
    $('.tpl-header-switch-button').on('click', function() {
        if ($('.left-sidebar').is('.active')) {
            if ($(window).width() > 1024) {
                $('.tpl-content-wrapper').removeClass('active');
            }
            $('.left-sidebar').removeClass('active');
        } else {

            $('.left-sidebar').addClass('active');
            if ($(window).width() > 1024) {
                $('.tpl-content-wrapper').addClass('active');
            }
        }
    })

    if ($(window).width() < 1024) {
        $('.left-sidebar').addClass('active');
    } else {
        $('.left-sidebar').removeClass('active');
    }
}


// 侧边菜单
$('.sidebar-nav-sub-title').on('click', function() {
    $(this).siblings('.sidebar-nav-sub').slideToggle(80)
        .end()
        .find('.sidebar-nav-sub-ico').toggleClass('sidebar-nav-sub-ico-rotate');
})


function loadPage(url){
	$(".tpl-content-wrapper").load(url,function(response,status,xhr){
		if(xhr.getResponseHeader('sessionstatus') == 'timeout'){
			 window.location = "/";  
		}
	});
}
/**
 * 菜单加载
 * @param url
 * @param obj
 */
function menuLoad(url,obj){
	$("a[class='active']").removeClass('active');
	$(obj).addClass("active");
	$(obj).parent().parent().parent().find('a:first').addClass("active");
	if(url.indexOf("druid")!=-1){
		 window.open(url);
	}else{
		loadPage(url);
	}
}
/**
 * 表单提交通用
 * @param formId
 * @param commitUrl
 * @param jumpUrl
 */
function commit(formId, commitUrl, jumpUrl) {
    //组装表单数据
    var index;
    var data = $("#" + formId).serialize();
    $.ajax({
        type : "POST",
        url : commitUrl,
        data : data,
        beforeSend : function() {
            index = layer.load();
        },
        success : function(resultdata) {
        	console.log(resultdata);
            layer.close(index);
            if (resultdata.status) {
                layer.msg(resultdata.message, {
                    icon : 1
                });
                loadPage(jumpUrl);
            } else {
                layer.msg(resultdata.message, {
                    icon : 5
                });
            }
        },
        error : function(data, errorMsg) {
            layer.close(index);
            layer.msg(data.responseText, {
                icon : 2
            });
        }
    });
}
/**
 * 删除通用
 * @param nav
 * @param jumpUrl
 */
function del(nav,callback){
	layer.confirm('确认删除吗？', {
        icon : 3,
        title : '删除提示'
    }, function(index, layero) {
        $.ajax({
            type : "DELETE",
            url :  nav,
            dataType : "json",
            success : function(resultdata) {
                if (resultdata.status=="0") {
                    layer.msg(resultdata.message, {
                        icon : 1
                    });
                    if (callback) {
                        callback();
                    }
                } else {
                    layer.msg(resultdata.message, {
                        icon : 0
                    });
                }
            },
            error : function(errorMsg) {
                layer.msg('服务器未响应,请稍后再试', {
                    icon : 3
                });
            }
        });
        layer.close(index);
    });
}
/**
 * 编辑通用
 * @param nav
 */
function edit(nav){
	  $.ajax({
          type : "PUT",
          url :  nav,
          dataType : "json",
          error : function(errorMsg) {
              layer.msg('服务器未响应,请稍后再试', {
                  icon : 3
              });
          }
      });
}

/**
 * 获取多选选中
 * @returns
 */
function getCheckAll(data){
	 var checkIds = "";
     $(data).each(function(i){
	      if(0==i){
	    	  checkIds = data[i].id;
	      }else{
	    	  checkIds += (","+data[i].id);
	      }
     });
     return checkIds;
}

