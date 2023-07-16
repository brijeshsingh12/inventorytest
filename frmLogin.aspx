<%@ page language="C#" autoeventwireup="true" inherits="frmLogin, Root" enableeventvalidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>Inventory Management System</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <link rel="stylesheet" href="assets/LoginTheme/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/LoginTheme/font-awesome/4.5.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/LoginTheme/css/fonts.googleapis.com.css" />
    <link rel="stylesheet" href="assets/LoginTheme/css/ace.min.css" />
    <link rel="stylesheet" href="assets/LoginTheme/css/ace-rtl.min.css" />
</head>
<body class="login-layout">
    <form id="form1" class="login" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container">
                            <div class="center">
                                <h1>
                                    <i class="ace-icon fa fa-leaf green"></i>
                                    <span class="red">Inventory</span>
                                    <span class="white" id="id-text2">System</span>
                                </h1>
                                <%--  <h4 class="blue" id="id-company-text">&copy; B.K.Infotech System</h4>--%>
                            </div>

                            <div class="space-6"></div>

                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header blue lighter bigger">
                                                <i class="ace-icon fa fa-coffee green"></i>
                                                Please Enter Your Information
                                            </h4>

                                            <div class="space-6"></div>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtComCode" runat="server" class="form-control" placeholder="Company Code"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                                ControlToValidate="txtComCode" Display="Dynamic" ErrorMessage="Enter Company Code" ValidationGroup="A"></asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Enter User Name"  ValidationGroup="A"></asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Enter Password" ValidationGroup="A"></asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <div class="space"></div>

                                                    <div class="clearfix" style="text-align: left">
                                                        <label class="inline">
                                                            <input type="checkbox" class="ace" />
                                                            <span class="lbl">Remember Me</span>
                                                        </label>
                                                    </div>
                                                    <div>
                                                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-sm btn-primary" ValidationGroup="A" OnClick="Button1_Click" />
                                                        <asp:Button ID="Button2" runat="server" Text="Home" class="btn btn-sm btn-primary" OnClick="Button2_Click" />
                                                        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </fieldset>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


     <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="assets/LoginTheme/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='assets/LoginTheme/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {
            $(document).on('click', '.toolbar a[data-target]', function (e) {
                e.preventDefault();
                var target = $(this).data('target');
                $('.widget-box.visible').removeClass('visible');//hide others
                $(target).addClass('visible');//show target
            });
        });



        //you don't need this, just used for changing background
        jQuery(function ($) {
            $('#btn-login-dark').on('click', function (e) {
                $('body').attr('class', 'login-layout');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'blue');

                e.preventDefault();
            });
            $('#btn-login-light').on('click', function (e) {
                $('body').attr('class', 'login-layout light-login');
                $('#id-text2').attr('class', 'grey');
                $('#id-company-text').attr('class', 'blue');

                e.preventDefault();
            });
            $('#btn-login-blur').on('click', function (e) {
                $('body').attr('class', 'login-layout blur-login');
                $('#id-text2').attr('class', 'white');
                $('#id-company-text').attr('class', 'light-blue');

                e.preventDefault();
            });

        });
    </script>


</body>
</html>
