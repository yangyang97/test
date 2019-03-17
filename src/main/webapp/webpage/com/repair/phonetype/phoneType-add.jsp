<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>手机列表</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<t:base type="bootstrap,layer,validform,webuploader,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="phoneTypeController.do?doAdd" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id"/>
		<div class="form-group">
			<label for="phonePhoto" class="col-sm-3 control-label">手机照片：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<t:webUploader fileNumLimit="1" name="phonePhoto" outJs="true" auto="true" showImgDiv="filediv_topImg" type="image" buttonText='添加图片' displayTxt="false"></t:webUploader>
					<div class="form" id="filediv_topImg"></div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="phoneName" class="col-sm-3 control-label">手机名称：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="phoneName" name="phoneName" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入手机名称"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="phoneColor" class="col-sm-3 control-label">手机颜色：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="phoneColor" name="phoneColor" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入手机颜色"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="phoneFault" class="col-sm-3 control-label">故障类型：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="phoneFault" name="phoneFault" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入故障类型"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="phoneMemo" class="col-sm-3 control-label">预留字段：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="phoneMemo" name="phoneMemo" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入预留字段"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="phoneMemory" class="col-sm-3 control-label">维修价格：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="phoneMemory" name="phoneMemory" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入维修价格"  ignore="ignore" />
				</div>
			</div>
		</div>

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