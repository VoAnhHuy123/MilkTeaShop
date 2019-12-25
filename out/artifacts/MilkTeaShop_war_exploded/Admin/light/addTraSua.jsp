<%@ page import="vn.edu.nlu.fit.util.Util" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
%>

<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/light/add_professor.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 25 Oct 2019 07:56:10 GMT -->
<head>
	<meta charset="UTF-8">
	<%@ include file="layout/css.jsp" %>
</head>
<!-- END HEAD -->

<body
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo">
	<div class="page-wrapper">
		<!-- start header -->
		<div class="page-header navbar navbar-fixed-top">
			<div class="page-header-inner ">
				<!-- logo start -->
				<div class="page-logo">
					<a>
						<span class="logo-icon material-icons fa-rotate-45">school</span>
						<span class="logo-default">Tà Tưa</span> </a>
				</div>
				<!-- logo end -->
				<ul class="nav navbar-nav navbar-left in">
					<li><a class="menu-toggler sidebar-toggler"><i class="icon-menu"></i></a></li>
				</ul>

				<div class="page-title" style="font-size: 20px; margin-top: 10px">Products Add
					<ol class="breadcrumb page-breadcrumb pull-right" style="margin: -2px 60px 0px 0px; border-radius: 25px;">
						<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
															   href="<%=Util.fullPath("AllUser")%>">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
						</li>
						<li><a class="parent-item" href="<%=Util.fullPath("AllUser")%>">Products List</a>&nbsp;<i class="fa fa-angle-right"></i>
						</li>
						<li class="active">Products Add</li>
					</ol>
				</div>

				<!-- start mobile menu -->
				<!-- end mobile menu -->
				<!-- start header menu -->
			</div>
		</div>
		<!-- end header -->
		<!-- start color quick setting -->
		<div class="quick-setting-main">
			<button class="control-sidebar-btn btn" data-toggle="control-sidebar"><i
					class="fa fa-cog fa-spin"></i></button>
			<div class="quick-setting display-none">
				<ul id="themecolors">
					<li>
						<p class="selector-title">Main Layouts</p>
					</li>
					<li class="complete">
						<div class="theme-color layout-theme">
							<a href="#" data-theme="light"><span class="head"></span><span class="cont"></span></a>
							<a href="http://radixtouch.in/templates/admin/smart/source/dark/add_professor.html"
							   data-theme="dark"><span class="head"></span><span
									class="cont"></span></a>
						</div>
					</li>
					<li>
						<p class="selector-title">Sidebar Color</p>
					</li>
					<li class="complete">
						<div class="theme-color sidebar-theme">
							<a href="#" data-theme="white"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="dark"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="blue"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="indigo"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="cyan"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="green"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="red"><span class="head"></span><span class="cont"></span></a>
						</div>
					</li>
					<li>
						<p class="selector-title">Header Brand color</p>
					</li>
					<li class="theme-option">
						<div class="theme-color logo-theme">
							<a href="#" data-theme="logo-white"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="logo-dark"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="logo-blue"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="logo-indigo"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="logo-cyan"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="logo-green"><span class="head"></span><span class="cont"></span></a>
							<a href="#" data-theme="logo-red"><span class="head"></span><span class="cont"></span></a>
						</div>
					</li>
					<li>
						<p class="selector-title">Header color</p>
					</li>
					<li class="theme-option">
						<div class="theme-color header-theme">
							<a href="#" data-theme="header-white"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-dark"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-blue"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-indigo"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-cyan"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-green"><span class="head"></span><span
									class="cont"></span></a>
							<a href="#" data-theme="header-red"><span class="head"></span><span class="cont"></span></a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- end color quick setting -->
		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
			<div class="sidebar-container">
				<div class="sidemenu-container navbar-collapse collapse fixed-menu">
					<div id="remove-scroll" class="left-sidemenu">
						<ul class="sidemenu  page-header-fixed slimscroll-style" data-keep-expanded="false"
							data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
							<li class="sidebar-toggler-wrapper hide">
								<div class="sidebar-toggler">
									<span></span>
								</div>
							</li>
							<li class="sidebar-user-panel">
								<div class="user-panel">
									<div class="pull-left image" style="width: 100%; max-width: 100%">
										<img src="<%=Util.fullPath("Admin/assets/img/flags/dp.jpg")%>"
											 class="img-circle user-img-circle"
											 alt="User Image"/>
									</div>
								</div>
							</li>
							<!--							//user-->
							<li class="nav-item active">
								<a href="<%=Util.fullPath("AllUser")%>" class="nav-link nav-toggle"> <i
										class="material-icons">person</i>
									<span class="title">Users</span><span class="selected"></span>
									<span class="arrow open"></span>
								</a>
							</li>
							<!--							product-->
							<li class="nav-item nav-item">
								<a href="<%=Util.fullPath("LoaiTraSua")%>" class="nav-link nav-toggle"> <i class="material-icons">business</i>
									<span class="title">Products</span> <span class="selected"></span>
									<span class="arrow open"></span>
								</a>
							</li>

							<%--                        Đơn hàng--%>
							<li class="nav-item">
								<a class="nav-link nav-toggle"> <i class="material-icons">business</i>
									<span class="title">Don Hang</span><span class="selected"></span>
									<span class="arrow open"></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- end sidebar menu -->
			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar" style="margin-top: -20px">
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<div class="card-head">
									<header>Basic Information</header>
									<button id="panel-button"
											class="mdl-button mdl-js-button mdl-button--icon pull-right"
											data-upgraded=",MaterialButton">
										<i class="material-icons">more_vert</i>
									</button>
									<ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
										data-mdl-for="panel-button">
										<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action
										</li>
										<li class="mdl-menu__item"><i class="material-icons">print</i>Another action
										</li>
										<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else
											here
										</li>
									</ul>
								</div>

								<form class="card-body row" action="<%=Util.fullPath("ThemTraSua")%>" method="post">
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" id="txtFirstName"
												   name="name">
											<label class="mdl-textfield__label">Name</label>
										</div>
									</div>
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" id="txtLasttName"
												   name="loai">
											<label class="mdl-textfield__label">Tên Loại</label>
										</div>
									</div>
<%--									<div class="col-lg-6 p-t-20">--%>
<%--										<div--%>
<%--												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--											<input class="mdl-textfield__input" type="email" id="txtemail" name="email">--%>
<%--											<label class="mdl-textfield__label">Email</label>--%>
<%--											<span class="mdl-textfield__error">Enter Valid Email Address!</span>--%>
<%--										</div>--%>
<%--									</div>--%>
									<%--									<div class="col-lg-6 p-t-20">--%>
									<%--										<div--%>
									<%--											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
									<%--											<input class="mdl-textfield__input" type="text" id="date">--%>
									<%--											<label class="mdl-textfield__label">Joining Date</label>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" id="size"
												   name="id">
											<label class="mdl-textfield__label">Size</label>
										</div>
									</div>
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="number" id="txtPwd"
												   name="gia">
											<label class="mdl-textfield__label">Price</label>
										</div>
									</div>
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="number" id="txtConfirmPwd"
												   name="sale">
											<label class="mdl-textfield__label">Sale</label>
										</div>
									</div>
									<%--									<div class="col-lg-6 p-t-20">--%>
									<%--										<div--%>
									<%--											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
									<%--											<input class="mdl-textfield__input" type="text" id="designation">--%>
									<%--											<label class="mdl-textfield__label">Designation</label>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<%--									<div class="col-lg-6 p-t-20">--%>
									<%--										<div--%>
									<%--											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">--%>
									<%--											<input class="mdl-textfield__input" type="text" id="list2" value="" readonly--%>
									<%--												tabIndex="-1">--%>
									<%--											<label for="list2" class="pull-right margin-0">--%>
									<%--												<i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>--%>
									<%--											</label>--%>
									<%--											<label for="list2" class="mdl-textfield__label">Department</label>--%>
									<%--											<ul data-mdl-for="list2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">--%>
									<%--												<li class="mdl-menu__item" data-val="DE">Computer</li>--%>
									<%--												<li class="mdl-menu__item" data-val="BY">Mechanical</li>--%>
									<%--												<li class="mdl-menu__item" data-val="BY">Mathematics</li>--%>
									<%--												<li class="mdl-menu__item" data-val="BY">Commerce</li>--%>
									<%--											</ul>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<%--									<div class="col-lg-6 p-t-20">--%>
									<%--										<div--%>
									<%--											class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">--%>
									<%--											<input class="mdl-textfield__input" type="text" id="sample2" value=""--%>
									<%--												readonly tabIndex="-1">--%>
									<%--											<label for="sample2" class="pull-right margin-0">--%>
									<%--												<i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>--%>
									<%--											</label>--%>
									<%--											<label for="sample2" class="mdl-textfield__label">Gender</label>--%>
									<%--											<ul data-mdl-for="sample2"--%>
									<%--												class="mdl-menu mdl-menu--bottom-left mdl-js-menu">--%>
									<%--												<li class="mdl-menu__item" data-val="DE">Male</li>--%>
									<%--												<li class="mdl-menu__item" data-val="BY">Female</li>--%>
									<%--											</ul>--%>
									<%--										</div>--%>
									<%--									</div>--%>
<%--									<div class="col-lg-6 p-t-20">--%>
<%--										<div--%>
<%--												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
<%--											<input class="mdl-textfield__input" type="text"--%>
<%--												   pattern="-?[0-9]*(\.[0-9]+)?" id="text5" name="mobile">--%>
<%--											<label class="mdl-textfield__label" for="text5">Mobile Number</label>--%>
<%--											<span class="mdl-textfield__error">Number required!</span>--%>
<%--										</div>--%>
<%--									</div>--%>
									<%--                                    <div class="col-lg-6 p-t-20">--%>
									<%--                                        <div--%>
									<%--                                                class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">--%>
									<%--                                            <input class="mdl-textfield__input" type="text" id="dateOfBirth">--%>
									<%--                                            <label class="mdl-textfield__label">Birth Date</label>--%>
									<%--                                        </div>--%>
									<%--                                    </div>--%>
									<%--									<div class="col-lg-12 p-t-20">--%>
									<%--										<div class="mdl-textfield mdl-js-textfield txt-full-width">--%>
									<%--											<textarea class="mdl-textfield__input" rows="4" id="text7"></textarea>--%>
									<%--											<label class="mdl-textfield__label" for="text7">Address</label>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<%--									<div class="col-lg-12 p-t-20">--%>
									<%--										<label class="control-label col-md-3">Upload Photo--%>
									<%--										</label>--%>
									<%--										<div class="col-md-12">--%>
									<%--											<div id="id_dropzone" class="dropzone"></div>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<%--									<div class="col-lg-12 p-t-20">--%>
									<%--										<div class="mdl-textfield mdl-js-textfield txt-full-width">--%>
									<%--											<textarea class="mdl-textfield__input" rows="4" id="education"></textarea>--%>
									<%--											<label class="mdl-textfield__label" for="text7">Education</label>--%>
									<%--										</div>--%>
									<%--									</div>--%>
									<div class="col-lg-6 p-t-20">
										<div
												class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
											<input class="mdl-textfield__input" type="text" id="number" name="active">
											<label class="mdl-textfield__label">Active</label>
										</div>
									</div>
									<div class="col-lg-6 p-t-20">
										<label style="color: #C5C4C4">Upload Photo</label>
										<div id="id_dropzone" class="dropzone dz-clickable" style="border: 2px dashed black; padding: 10px">
											<div class="dz-default dz-message">
												<span>Drop files here to upload</span></div></div>
									</div>

									<div class="col-lg-12 p-t-20 text-center">
										<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink">ADD</button>
										<a href="<%=Util.fullPath("LoaiTraSua")%>" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default">
											Cancel
										</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end page content -->
			<!-- start chat sidebar -->
			<!-- end chat sidebar -->
		</div>
		<!-- end page container -->
		<!-- start footer -->
		<div class="page-footer">
			<div class="page-footer-inner"> 2017 &copy; Smart University Theme By
				<a href="mailto:redstartheme@gmail.com" target="_top" class="makerCss">Redstar Theme</a>
			</div>
			<div class="scroll-to-top">
				<i class="icon-arrow-up"></i>
			</div>
		</div>
		<!-- end footer -->
	</div>
	<!-- start js include path -->
	<script src="<%=Util.fullPath("Admin/assets/plugins/jquery/jquery.min.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/popper/popper.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/jquery-blockui/jquery.blockui.min.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/jquery-slimscroll/jquery.slimscroll.js")%>"></script>
	<!-- bootstrap -->
	<script src="<%=Util.fullPath("Admin/assets/plugins/bootstrap/js/bootstrap.min.js")%>"></script>
	<!-- Common js-->
	<script src="<%=Util.fullPath("Admin/assets/js/app.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/js/layout.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/js/theme-color.js")%>"></script>
	<!-- Material -->
	<script src="<%=Util.fullPath("Admin/assets/plugins/material/material.min.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/js/pages/material-select/getmdl-select.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/material-datetimepicker/moment-with-locales.min.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/material-datetimepicker/datetimepicker.js")%>"></script>
	<!-- dropzone -->
	<script src="<%=Util.fullPath("Admin/assets/plugins/dropzone/dropzone.js")%>"></script>
	<script src="<%=Util.fullPath("Admin/assets/plugins/dropzone/dropzone-call.js")%>"></script>
	<!-- end js include path -->
</body>


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/light/add_professor.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 25 Oct 2019 07:56:30 GMT -->
</html>