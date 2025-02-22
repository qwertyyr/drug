<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>医药信息管理系统</title>
    <script src="static-res/js/jquery.js"></script>	
	<link href="static-res/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="static-res/css/main.css" rel="stylesheet">
	<script src="static-res/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<link href="static-res/bootstrap-3.3.7-dist/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="static-res/bootstrap-3.3.7-dist/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script src="static-res/bootstrap-3.3.7-dist/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
  </head>
  
  <body>
  <c:if test="${empty sessionScope.login }">
  		<script type="text/javascript">
  			window.location.href="<%=basePath%>index.jsp";
  		</script>
  </c:if>
   <div class="container-fluid">
		<div class="row" style="background-color:rgba(232,232,232,0.6);">
			<div class="main_nav">
  				<h1>医药信息管理系统</h1>
			</div>
		</div>
		<div class="row" style="height:50px">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="<%=basePath%>main">药品基础信息</a></li>
						<li><a href="<%=basePath%>tostore">进货信息</a></li>
						<li><a href="<%=basePath%>store">药品库存信息</a></li>
						<li><a href="<%=basePath%>sell">零售信息</a></li>
						<li><a href="<%=basePath%>rx">处方药管理</a></li>
						<li><a href="<%=basePath%>date">效期提示</a></li>
						<li><a href="<%=basePath%>storetip">库存预警</a></li>
						<li><a href="<%=basePath%>sellover">缺货信息</a></li>
						<li class="active"><a href="<%=basePath%>tips">销售记录</a></li>
						<li><a href="<%=basePath%>clerk_manage">员工管理</a></li>
						<li><a href="<%=basePath%>index.jsp">退出系统</a></li>
						<li><a href="#">欢迎${login.user}登录系统</a></li>
					</ul>
				</div>

			</div>
			</nav>
		</div>
		
		<div class="row" style="padding-top:3px">
			<form action="<%=basePath%>tips" method="post">
				<div class="input-group col-md-3" >
					<input type="text" class="form-control picker"
						name="selltime" id="querytime" value="" readonly /> 
					<span class="input-group-btn">
						<button class="btn btn-info" type="submit">按日期查询销售记录</button>
					</span>
				</div>
			</form>
		</div>
	   <div class="row">
		   ${today}预计净利润:${moneyinfo}元
	   </div>
		<c:if test="${alltips.list.size()==0 }">
				<div class="row">
					没有当天的销售记录。
				</div>
		</c:if>
		<c:if test="${alltips.list.size()>0 }">
<%--			<div class="row">--%>
<%--				<div class="col-md-12">--%>
<%--					<table class="table table-hover table-condensed table-bordered">--%>
<%--						<tr>--%>
<%--							<th>药品名称</th>--%>
<%--							<th>厂商</th>--%>
<%--							<th>销售价格</th>--%>
<%--							<th>有效期至</th>--%>
<%--							<th>批号</th>--%>
<%--							<th>备注</th>--%>
<%--							<th>单位</th>--%>
<%--							<th>规格</th>--%>
<%--							<th>数量</th>--%>
<%--							<th>金额</th>--%>
<%--							<th>交易时间</th>--%>
<%--							<th>操作</th>--%>
<%--						</tr>--%>
<%--						<c:forEach items="${alltips.list }" var="dq">--%>
<%--							<tr>--%>
<%--								<td>${dq.drugname }</td>--%>
<%--								<td>${dq.changshang }</td>--%>
<%--								<td>${dq.price }</td>--%>
<%--								<td>${dq.date }</td>--%>
<%--								<td>${dq.pihao }</td>--%>
<%--								<td>${dq.beizhu }</td>--%>
<%--								<td>${dq.unit }</td>--%>
<%--								<td>${dq.guige }</td>--%>
<%--								<td>${dq.amount }</td>--%>
<%--								<td>${dq.sum }</td>--%>
<%--								<td>${dq.selltime }</td>--%>

<%--								<td>--%>
<%--									<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal">--%>
<%--										<span class="glyphicon glyphicon-ban-circle"--%>
<%--											aria-hidden="true"></span>删除--%>
<%--									</button>--%>
<%--								</td>--%>
<%--							</tr>--%>
<%--						</c:forEach>--%>
<%--					</table>--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover table-condensed table-bordered">
						<tr>
							<th>药品名称</th>
							<th>厂商</th>
							<th>销售价格</th>
							<th>有效期至</th>
							<th>批号</th>
							<th>备注</th>
							<th>单位</th>
							<th>规格</th>
							<th>数量</th>
							<th>金额</th>
							<th>交易时间</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${alltips.list }" var="dq">
							<tr>
								<td>${dq.drugname }</td>
								<td>${dq.changshang }</td>
								<td>${dq.price }</td>
								<td>${dq.date }</td>
								<td>${dq.pihao }</td>
								<td>${dq.beizhu }</td>
								<td>${dq.unit }</td>
								<td>${dq.guige }</td>
								<td>${dq.amount }</td>
								<td>${dq.sum }</td>
								<td>${dq.selltime }</td>

								<td>
									<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal">
										<span class="glyphicon glyphicon-ban-circle"
											  aria-hidden="true"></span>删除
									</button>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<!--  -->

			<div class="row">
				<div class="col-md-6" style="padding-top:27px"><strong>当前第${alltips.pageNum}页,总${alltips.pages}页,共${alltips.total}条记录</strong></div>
				<div class="col-md-6">
					<nav aria-label="Page navigation">
						<ul class="pagination">
							<li><a href="<%=basePath%>tips?pn=1&selltime=${today }">首页</a></li>
							<c:if test="${alltips.hasPreviousPage }">
								<li><a href="<%=basePath%>tips?pn=${alltips.pageNum - 1}&selltime=${today }"
									   aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>


							<c:forEach items="${alltips.navigatepageNums }" var="page_Num">
								<c:if test="${page_Num == alltips.pageNum}">
									<li class="active"><a href="#">${page_Num }</a></li>
								</c:if>
								<c:if test="${page_Num != alltips.pageNum}">
									<li><a href="<%=basePath%>tips?pn=${page_Num }&selltime=${today }">${page_Num }</a></li>
								</c:if>
							</c:forEach>
							<c:if test="${alltips.hasNextPage }">
								<li><a href="<%=basePath%>tips?pn=${alltips.pageNum + 1}&selltime=${today }"
									   aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>

							<li><a href="<%=basePath%>tips?pn=${alltips.pages}&selltime=${today }">末页</a></li>
							<!--  -->
							<li>
								<div class="btn-group dropup">
									<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
										跳转 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<c:forEach var="x" begin="1" end="${alltips.pages}"
												   step="10">
											<li><a
													href="<%=basePath%>tips?pn=${x}&selltime=${today }">跳转至第${x }页</a></li>
										</c:forEach>
									</ul>
								</div>
							</li>
							<!--  -->
						</ul>
					</nav>
				</div>
			</div>
			</c:if>


	</div>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title text-center" style="color:red">确定删除吗?</h4>
				</div>
				<div class="modal-body">
					<form action="<%=basePath%>deltips" method="post">
						<input type="hidden" id="inputdn-del" name="drugname" value="">
						<input type="hidden" id="inputcs-del" name="changshang" value="">
						<input type="hidden" id="inputph-del" name="pihao" value="">
						<input type="hidden" id="inputst-del" name="selltime" value="">
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary">确定</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
			$(".picker").datetimepicker({
					format : 'yyyy-mm-dd',
					language : 'zh-CN',
					minView : 2,
					autoclose : true,
				});
			$(".btn.btn-danger.btn-sm").click(function(){
					$("#inputdn-del").val($(this).parents("tr").children("td").eq(0).text());
					$("#inputcs-del").val($(this).parents("tr").children("td").eq(1).text());
					$("#inputph-del").val($(this).parents("tr").children("td").eq(4).text());
					$("#inputst-del").val($(this).parents("tr").children("td").eq(10).text());
			 });
	</script>
  </body>
</html>



