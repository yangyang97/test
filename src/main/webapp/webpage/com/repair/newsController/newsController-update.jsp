<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>新闻动态</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.config.js"></script>
	<script type="text/javascript"  charset="utf-8" src="plug-in/ueditor/ueditor.all.min.js"></script>
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="newsControllerController.do?doUpdate" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id" value="${newsController.id}"/>
	<div class="form-group">
		<label for="newsTitle" class="col-sm-3 control-label">新闻标题：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<input id="newsTitle" name="newsTitle" value='${newsController.newsTitle}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入新闻标题"  ignore="ignore" />
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="newsDes" class="col-sm-3 control-label">新闻内容：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<td class="value">
					<textarea name="newsDes" datatype="*" id="newsDes" style="width: 800px;height:600px">${newsController.newsDes}</textarea>
					<script type="text/javascript">
                        var editor = UE.getEditor('newsDes');
					</script>
					<span class="Validform_checktip"></span>
					<label class="Validform_label" style="display: none;">内容</label>
				</td>			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="newsTime" class="col-sm-3 control-label">新闻时间：</label>
		<div class="col-sm-7">
			<div class="input-group" style="width:100%">
				<input id="newsTime" name="newsTime" value='${newsController.newsTime}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入新闻时间"  ignore="ignore" />
			</div>
		</div>
	</div>
	<%--<div class="form-group">--%>
		<%--<label for="newsSour" class="col-sm-3 control-label">新闻排序：</label>--%>
		<%--<div class="col-sm-7">--%>
			<%--<div class="input-group" style="width:100%">--%>
				<%--<input id="newsSour" name="newsSour" value='${newsController.newsSour}' type="text" maxlength="32" class="form-control input-sm" placeholder="请输入新闻排序"  datatype="n"  ignore="ignore" />--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
	</form>
	</div>
 </div>
<script type="text/javascript">
var subDlgIndex = '';
$(document).ready(function() {
	//单选框/多选框初始化
	$('.i-checks').iCheck({
		labelHover : false,
		cursor : true,
		checkboxClass : 'icheckbox_square-blue',
		radioClass : 'iradio_square-blue',
		increaseArea : '20%'
	});
	
	//表单提交
	$("#formobj").Validform({
		tiptype:function(msg,o,cssctl){
			if(o.type==3){
				validationMessage(o.obj,msg);
			}else{
				removeMessage(o.obj);
			}
		},
		btnSubmit : "#btn_sub",
		btnReset : "#btn_reset",
		ajaxPost : true,
		beforeSubmit : function(curform) {
		},
		usePlugin : {
			passwordstrength : {
				minLen : 6,
				maxLen : 18,
				trigger : function(obj, error) {
					if (error) {
						obj.parent().next().find(".Validform_checktip").show();
						obj.find(".passwordStrength").hide();
					} else {
						$(".passwordStrength").show();
						obj.parent().next().find(".Validform_checktip").hide();
					}
				}
			}
		},
		callback : function(data) {
			var win = frameElement.api.opener;
			if (data.success == true) {
				frameElement.api.close();
			    win.reloadTable();
			    win.tip(data.msg);
			} else {
			    if (data.responseText == '' || data.responseText == undefined) {
			        $.messager.alert('错误', data.msg);
			        $.Hidemsg();
			    } else {
			        try {
			            var emsg = data.responseText.substring(data.responseText.indexOf('错误描述'), data.responseText.indexOf('错误信息'));
			            $.messager.alert('错误', emsg);
			            $.Hidemsg();
			        } catch (ex) {
			            $.messager.alert('错误', data.responseText + "");
			            $.Hidemsg();
			        }
			    }
			    return false;
			}
		}
	});
});
</script>
</body>
</html>