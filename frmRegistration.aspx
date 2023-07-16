<%@ page language="C#" autoeventwireup="true" inherits="frmRegistration, Root" enableeventvalidation="false" %>

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
                                                            <asp:TextBox ID="txtCompanyName" runat="server" class="form-control" placeholder="Company Name"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                ControlToValidate="txtCompanyName" Display="Dynamic"
                                                                ErrorMessage="Enter Company Name" ValidationGroup="A">
                                                            </asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtFirstname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                ControlToValidate="txtFirstname" Display="Dynamic"
                                                                ErrorMessage="Enter First Name" ValidationGroup="A">
                                                            </asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtLastName" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                                ControlToValidate="txtEmail" Display="Dynamic"
                                                                ErrorMessage="Enter Email" ValidationGroup="A">
                                                            </asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Phone/Mobile"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                                ControlToValidate="txtPhone" Display="Dynamic"
                                                                ErrorMessage="Enter Phone/Mobile" ValidationGroup="A">
                                                            </asp:RequiredFieldValidator>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <div class="space"></div>

                                                    <div class="clearfix">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-sm btn-primary" OnClick="Button1_Click" ValidationGroup="A" />
                                                        <asp:Button ID="Button2" runat="server" Text="Home" class="btn btn-sm btn-primary" OnClick="Button2_Click" />
                                                        <br />
                                                        <asp:Label ID="lblmsg" runat="server" Text="" Font-Bold="true" Style="color: #FF0000"></asp:Label>
                                                        <%-- <button type="button" class="width-35 pull-right btn btn-sm btn-primary">
                                                        <i class="ace-icon fa fa-key"></i>
                                                        <span class="bigger-110">Login</span>
                                                    </button>--%>
                                                    </div>

                                                    <div class="space-4"></div>
                                                </fieldset>
                                            </form>

                                            <%--   <div class="social-or-login center">
                                            <span class="bigger-110">Or Login Using</span>
                                        </div>

                                        <div class="space-6"></div>

                                        <div class="social-login center">
                                            <a class="btn btn-primary">
                                                <i class="ace-icon fa fa-facebook"></i>
                                            </a>

                                            <a class="btn btn-info">
                                                <i class="ace-icon fa fa-twitter"></i>
                                            </a>

                                            <a class="btn btn-danger">
                                                <i class="ace-icon fa fa-google-plus"></i>
                                            </a>
                                        </div>--%>
                                        </div>
                                        <!-- /.widget-main -->

                                        <%--  <div class="toolbar clearfix">
                                        <div>
                                            <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                                <i class="ace-icon fa fa-arrow-left"></i>
                                                I forgot my password
                                            </a>
                                        </div>

                                        <div>
                                            <a href="#" data-target="#signup-box" class="user-signup-link">I want to register
													<i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>--%>
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.login-box -->

                                <div id="forgot-box" class="forgot-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header red lighter bigger">
                                                <i class="ace-icon fa fa-key"></i>
                                                Retrieve Password
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>
                                                Enter your email and to receive instructions
                                            </p>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="email" class="form-control" placeholder="Email" />
                                                            <i class="ace-icon fa fa-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <div class="clearfix">
                                                        <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                            <i class="ace-icon fa fa-lightbulb-o"></i>
                                                            <span class="bigger-110">Send Me!</span>
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                        <!-- /.widget-main -->

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">Back to login
												<i class="ace-icon fa fa-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.forgot-box -->

                                <div id="signup-box" class="signup-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header green lighter bigger">
                                                <i class="ace-icon fa fa-users blue"></i>
                                                New User Registration
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>Enter your details to begin: </p>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="email" class="form-control" placeholder="Email" />
                                                            <i class="ace-icon fa fa-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="text" class="form-control" placeholder="Username" />
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Password" />
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Repeat password" />
                                                            <i class="ace-icon fa fa-retweet"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block">
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl">I accept the
															<a href="#">User Agreement</a>
                                                        </span>
                                                    </label>

                                                    <div class="space-24"></div>

                                                    <div class="clearfix">
                                                        <button type="reset" class="width-30 pull-left btn btn-sm">
                                                            <i class="ace-icon fa fa-refresh"></i>
                                                            <span class="bigger-110">Reset</span>
                                                        </button>

                                                        <button type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                            <span class="bigger-110">Register</span>

                                                            <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>

                                        <div class="toolbar center">
                                            <a href="#" data-target="#login-box" class="back-to-login-link">
                                                <i class="ace-icon fa fa-arrow-left"></i>
                                                Back to login
                                            </a>
                                        </div>
                                    </div>
                                    <!-- /.widget-body -->
                                </div>
                                <!-- /.signup-box -->
                            </div>
                            <!-- /.position-relative -->
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.main-content -->
        </div>
    </form>
    <!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="assets/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
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

<%--<body>
    <h2 align="center" style="background-color: #FFFFCC">
        INVENTORY MANAGEMENT SYSTEM</h2>
    <form id="form1" class="login" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
  <h1>Login</h1>
  <asp:TextBox ID="txtUserName" runat="server" class="login-input" ></asp:TextBox>
  
  <asp:TextBox ID="txtPassword" runat="server" class="login-input" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Login" class="login-submit" 
        onclick="Button1_Click" />
    
    <p class="login-help"><a href="#">Forgot password?</a></p>
    </form>
      <div style="width:100%; background-color: ActiveBorder; border:2px; text-align:center">
                           ---------Created By Developer Zone ----------
                        </div>
</body>--%>
</html>
