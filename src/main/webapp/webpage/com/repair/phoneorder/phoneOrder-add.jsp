<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>订单表</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<t:base type="bootstrap,layer,validform,bootstrap-form"></t:base>
</head>
 <body style="overflow:hidden;overflow-y:auto;">
 <div class="container" style="width:100%;">
	<div class="panel-heading"></div>
	<div class="panel-body">
	<form class="form-horizontal" role="form" id="formobj" action="phoneOrderController.do?doAdd" method="POST">
		<input type="hidden" id="btn_sub" class="btn_sub"/>
		<input type="hidden" id="id" name="id"/>
		<div class="form-group">
			<label for="orderName" class="col-sm-3 control-label">订单手机名称：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderName" name="orderName" type="text" maxlength="250" class="form-control input-sm" placeholder="请输入订单手机名称"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderTime" class="col-sm-3 control-label">订单日期：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderTime" name="orderTime" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入订单日期"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderColor" class="col-sm-3 control-label">订单颜色：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderColor" name="orderColor" type="text" maxlength="100" class="form-control input-sm" placeholder="请输入订单颜色"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderWay" class="col-sm-3 control-label">维修方式：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderWay" name="orderWay" type="text" maxlength="100" class="form-control input-sm" placeholder="请输入维修方式"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderType" class="col-sm-3 control-label">故障类型：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderType" name="orderType" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入故障类型"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderNamem" class="col-sm-3 control-label">预留信息：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderNamem" name="orderNamem" type="text" maxlength="50" class="form-control input-sm" placeholder="请输入预留信息"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderTel" class="col-sm-3 control-label">电话：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderTel" name="orderTel" type="text" maxlength="50" class="form-control input-sm" placeholder="请输入电话"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderRemark" class="col-sm-3 control-label">备注：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderRemark" name="orderRemark" type="text" maxlength="1000" class="form-control input-sm" placeholder="请输入备注"  ignore="ignore" />
				</div>
			</div>
		</div>
		<div class="form-group">
			<label for="orderMemo" class="col-sm-3 control-label">预留：</label>
			<div class="col-sm-7">
				<div class="input-group" style="width:100%">
					<input id="orderMemo" name="orderMemo" type="text" maxlength="32" class="form-control input-sm" placeholder="请输入预留"  ignore="ignore" />
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