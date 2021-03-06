<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/pages/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="${baseUrlStatic}/css/common/layout.css" rel="stylesheet">
	<jsp:include page="../common/commonStatic.jsp"></jsp:include>
	<title>role</title>
</head>
<style>
	.search-button{
		margin-left: 16px;
	}
	.add-button{
		float: right;
	}
</style>
<body>
<div>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="javascript:void(0)">角色管理</a></li>
	</ul>
	<div class="search-area">
		<div class="input-group input-group-sm" style="width:100%">
			<input type="text" class="form-control" placeholder="角色名称" style="width: 150px" id="searchRole">
			<button type="button" class="btn btn-primary btn-sm search-button" id="search">查询</button>
			<button type="button" class="btn btn-primary btn-sm add-button" id="addRecord">添加角色</button>
		</div>
	</div>
	<div class="table-center">
		<form>
			<table class="table table-striped" id="mainTable">

			</table>
		</form>
	</div>
	<%--弹出框--%>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" data-backdrop="false">
		<div class="modal-dialog" role="document">
			<div class="modal-content" style="width:500px">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="modalLabel">添加角色</h4>
				</div>
				<div class="modal-body">
					<form id="roleForm">
						<input type="hidden" id="roleId" value="" name="roleId">
						<div class="form-group">
							<label class="control-label">角色名称:</label>
							<input type="text" class="form-control" id="roleName" name="roleName" style="width:90%;">
						</div>
						<div class="form-group">
							<label class="control-label">角色描述:</label>
							<input class="form-control" id="roleDescription" name="roleDescription" style="width:90%;">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="submit">确定</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${baseUrlStatic}/js/system/role.js"></script>
<script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script>
</body>
</html>