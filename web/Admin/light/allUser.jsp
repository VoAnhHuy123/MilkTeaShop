<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.util.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf8");
    response.setCharacterEncoding("utf8");
%>

<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/light/all_professors.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 25 Oct 2019 07:56:05 GMT -->
<head>
    <meta charset="UTF-8">
    <%@ include file="layout/css.jsp" %>
</head>
<!-- END HEAD -->

<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo">
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

            <div class="page-title" style="font-size: 20px; margin-top: 10px">User List
                <ol class="breadcrumb page-breadcrumb pull-right" style="margin: -2px 60px 0px 0px; border-radius: 25px;">
                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
                                                           href="<%=Util.fullPath("AllUser")%>">Home</a>&nbsp;<i
                            class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">User List</li>
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
                        <a href="http://radixtouch.in/templates/admin/smart/source/dark/all_professors.html"
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
    <!-- end header -->
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
                <div class="page-bar" style="margin-bottom: -50px">
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tabbable-line">
                            <div class="tab-content">
                                <div class="tab-pane active fontawesome-demo" id="tab1">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="card card-box">
                                                <div class="card-head">
                                                    <header>All User</header>
                                                    <div class="tools">
                                                        <a class="fa fa-repeat btn-color box-refresh"
                                                           href="javascript:;"></a>
                                                        <a class="t-collapse btn-color fa fa-chevron-down"
                                                           href="javascript:;"></a>
                                                        <a class="t-close btn-color fa fa-times"
                                                           href="javascript:;"></a>
                                                    </div>
                                                </div>
                                                <div class="card-body ">
                                                    <div class="row">
                                                        <div class="col-md-6 col-sm-6 col-6">
                                                            <div class="btn-group">
                                                                <a href="<%=Util.fullPath("AddUser")%>" id="addRow"
                                                                   class="btn btn-info">
                                                                    Add New <i class="fa fa-plus"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6 col-6">
                                                            <div class="btn-group pull-right">
                                                                <a class="btn deepPink-bgcolor  btn-outline dropdown-toggle"
                                                                   data-toggle="dropdown">Tools
                                                                    <i class="fa fa-angle-down"></i>
                                                                </a>
                                                                <ul class="dropdown-menu pull-right">
                                                                    <li>
                                                                        <a href="javascript:;">
                                                                            <i class="fa fa-print"></i> Print </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">
                                                                            <i class="fa fa-file-pdf-o"></i> Save as
                                                                            PDF </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="javascript:;">
                                                                            <i class="fa fa-file-excel-o"></i>
                                                                            Export to Excel </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="table-scrollable">
                                                        <table
                                                                class="table table-striped table-bordered table-hover table-checkable order-column valign-middle"
                                                                id="example4">
                                                            <thead>
                                                            <tr>
                                                                <th></th>
                                                                <th> First Name</th>
                                                                <th> Last Name</th>
                                                                <th> Email</th>
                                                                <th> Password</th>
                                                                <th> Phone</th>
                                                                <th> Active</th>
                                                                <th></th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <%
                                                                ResultSet rs = (ResultSet) request.getAttribute("a");
                                                                int i = 1;
                                                                while (rs.next()) {
                                                            %>
                                                            <tr class="odd gradeX">
                                                                <td class="patient-img"><%= i++%>
                                                                </td>
                                                                <td><%=rs.getString(2)%>
                                                                </td>
                                                                <td class="left"><%=rs.getString(3)%>
                                                                </td>
                                                                <td class="left"><%=rs.getString(4)%>
                                                                </td>
                                                                <td class="left"><%=rs.getString(5)%>
                                                                </td>
                                                                <td><%=rs.getInt(6)%>
                                                                </td>
                                                                <td><%=rs.getInt(7)%>
                                                                </td>
                                                                <td>
                                                                    <a href="EditUser?stt=<%=rs.getString(1)%>"
                                                                       class="btn btn-primary btn-xs">
                                                                        <i class="fa fa-pencil"></i>
                                                                    </a>
                                                                    <a href="DeleteUser?stt=<%=rs.getString(1)%>"
                                                                       onclick="return confirm('Bạn có muốn xóa không !!!')">
                                                                        <button type="submit" class="btn btn-danger btn-xs">
                                                                            <i class="fa fa-trash-o "></i>
                                                                        </button>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <%}%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
<script src="<%=Util.fullPath("Admin/assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js")%>"></script>
<!-- data tables -->
<script src="<%=Util.fullPath("Admin/assets/plugins/datatables/jquery.dataTables.min.js")%>"></script>
<script src="<%=Util.fullPath("Admin/assets/plugins/datatables/plugins/bootstrap/dataTables.bootstrap4.min.js")%>"></script>
<script src="<%=Util.fullPath("Admin/assets/js/pages/table/table_data.js")%>"></script>
<!-- Common js-->
<script src="<%=Util.fullPath("Admin/assets/js/app.js")%>"></script>
<script src="<%=Util.fullPath("Admin/assets/js/layout.js")%>"></script>
<script src="<%=Util.fullPath("Admin/assets/js/theme-color.js")%>"></script>
<!-- Material -->
<script src="<%=Util.fullPath("Admin/assets/plugins/material/material.min.js")%>"></script>
<!-- end js include path -->
</body>


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/light/all_professors.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 25 Oct 2019 07:56:08 GMT -->
</html>