<%@ page language="C#" autoeventwireup="true" inherits="frmAboutProduct, Root" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Inventory Management System</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="landing/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="landing/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="landing/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="landing/images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="landing/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>
<body class="main-layout">
    <form id="form1" runat="server">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader">
                <img src="landing/images/loading.gif" alt="#" />
            </div>
        </div>
        <!-- end loader -->
        <!-- header -->
        <header>
            <!-- header inner -->
            <div class="header">
               <%-- <div class="head_top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="top-box">
                                    <ul class="sociel_link">
                                        <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="top-box">
                                    <p>long established fact that a reader will be </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                            <div class="full">
                                <div class="center-desk">
                                    <div class="logo">
                                        <a href="index.html">
                                            <img style="width:150px;height:100px" src="landing/images/logo.png" alt="logo" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-9 col-sm-9">
                            <div class="menu-area">
                                <div class="limit-box">
                                    <nav class="main-menu">
                                        <ul>
                                            <li class="active"><a href="frmAboutProduct.aspx">About Product</a> </li>
                                             <li class="active"><a href="frmLogin.aspx">Login</a> </li>
                                             <li class="mean-last"><a href="#"></a> </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end header inner -->
            </div>
        </header>
        <!-- end header -->



        <div class="brand_color">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                            <h2>Inventory/Stock Management System</h2>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Lastestnews -->
        <div class="Lastestnews blog">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">

                            <span>Inventory management refers to the process of ordering, storing and using a company's inventory.
                                <br>
                                This includes the management of raw materials, components and finished products, as well as warehousing and processing such items. </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margin">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/g.jpg" alt="img" style="height:300px" />
                            </figure>
                            <h3>Master</h3>
<%--                            <span>March 20</span><span>Comment</span>--%>
                            <p>Create different master like Supplier, Customer, Shipper, Item Master, Item-Supplier Mapping etc. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margin">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/f.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Sales Order</h3>
                           <%-- <span>March 20</span><span>Comment</span>--%>
                            <p>Create Sale Order, Sale Order Return, Material Shipping, Automatic email to Customer, Generate Sale Order Report. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margin">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/e.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Purchase</h3>
                          <%--  <span>March 20</span><span>Comment</span>--%>
                            <p>Create Purchase Order, Purchase Order Return, Material Receipt, Automatic Email to Supplier for PO Order, Generate Purchase Order Report. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/d.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Payment Collection/Expenditure</h3>
                          <%--  <span>March 20</span><span>Comment</span>--%>
                            <p>Payment collection from different vendor & Get pay pending payment to supplier. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/c.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Reports</h3>
                           <%-- <span>March 20</span><span>Comment</span>--%>
                            <p>Generate all types Report like Purchase summary report, Sale Order Report, Stock Details, Outstanding Report, Item Master details, Get details for all PO/SO Issue, Return reports. </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/b.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Import Inventory through Excel</h3>
                           <%-- <span>March 20</span><span>Comment</span>--%>
                            <p>You can easily import your existing inventory details in our database for first time from difference source like excel, CSV file. </p>
                        </div>
                    </div>
                      <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                        <div class="news-box">
                            <figure>
                                <img src="landing/images/a.jpg" alt="img"  style="height:300px" />
                            </figure>
                            <h3>Role based Security & Menu Access</h3>
                           <%-- <span>March 20</span><span>Comment</span>--%>
                            <p>Manage Security through Differen user Roles and proper authorization for menu assignment. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end Lastestnews -->
        <!--  footer -->
        <footr>
            <div class="footer">
                <div class="container">
                    <%--                    <div class="row">
                        <div class="col-md-6 offset-md-3">
                            <ul class="sociel">
                                <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="contact">
                                <h3>conatct us</h3>
                                <span>14A, Street No. 6, West Sagarpur<br />
                                    New Delhi-110046
                                +91-9711881781</span>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="contact">
                                <h3>ADDITIONAL LINKS</h3>
                                <ul class="lik">
                                    <li><a href="http://aadisoftware.somee.com">Official Website</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="contact">
                                <h3>service</h3>
                                <ul class="lik">
                                    <li><a href="#">Software Development</a></li>
                                    <li><a href="#">Computer repair</a></li>
                                    <li><a href="#">Website Design</a></li>
                                    <li><a href="#">Data Migration</a></li>
                                    <li><a href="#">Mobile Application</a></li>
                                    <li><a href="#">Technical support</a></li>
                            </div>
                        </div>
                        <%--  <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="contact">
                                <h3>IT NEXT THEME</h3>
                                <span>Tincidunt elit magnis
                                    <br>
                                    nulla facilisis. Dolor
                                    <br>
                                    sagittis maecenas.
                                    <br>
                                    Sapien nunc amet
                                    <br>
                                    ultrices, </span>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </footr>
        <!-- end footer -->
        <!-- Javascript files-->
        <script src="landing/js/jquery.min.js"></script>
        <script src="landing/js/popper.min.js"></script>
        <script src="landing/js/bootstrap.bundle.min.js"></script>
        <script src="landing/js/jquery-3.0.0.min.js"></script>
        <script src="landing/js/plugin.js"></script>
        <!-- sidebar -->
        <script src="landing/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="landing/js/custom.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });

        </script>
    </form>
</body>
</html>
