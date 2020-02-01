<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veiw.aspx.cs" Inherits="WebOne.Veiw" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Assets/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Assets/js/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="Assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="Assets/css/stylesheet.css" rel="stylesheet" />
    <link href="Assets/css/owl.carousel.css" rel="stylesheet" />
    <link href="Assets/css/owl.transitions.css" rel="stylesheet" />
    <link href="Assets/css/responsive.css" rel="stylesheet" />
    <link href="Assets/css/stylesheet-rtl.css" rel="stylesheet" />
    <link href="Assets/css/responsive-rtl.css" rel="stylesheet" />

</head>
<body>
    <div class="wrapper-wide">
        <div id="header">
            <!-- Top Bar Start-->
            <nav id="top" class="htop">
                <div class="container">
                    <div class="row">
                        <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
                        <div class="pull-left flip left-top">
                            <div class="links">
                                <ul>
                                    <li class="mobile"><i class="fa fa-phone"></i>+21 9898777656</li>
                                    <li class="email"><a href="mailto:info@marketshop.com"><i class="fa fa-envelope"></i>info@marketshop.com</a></li>
                                    <li class="wrap_custom_block hidden-sm hidden-xs"><a>بلاک سفارشی<b></b></a>
                                        <div class="dropdown-menu custom_block">
                                            <ul>
                                                <li>
                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <img alt="" src="image/banner/cms-block.jpg"></td>
                                                                <td>
                                                                    <img alt="" src="image/banner/responsive.jpg"></td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <h4>بلاک های محتوا</h4>
                                                                </td>
                                                                <td>
                                                                    <h4>قالب واکنش گرا</h4>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>این یک بلاک مدیریت محتواست. شما میتوانید هر نوع محتوای html نوشتاری یا تصویری را در آن قرار دهید.</td>
                                                                <td>این یک بلاک مدیریت محتواست. شما میتوانید هر نوع محتوای html نوشتاری یا تصویری را در آن قرار دهید.</td>
                                                            </tr>
                                                            <tr>
                                                                <td><strong><a class="btn btn-default btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                                <td><strong><a class="btn btn-default btn-sm" href="#">ادامه مطلب</a></strong></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="#">لیست علاقه مندی (0)</a></li>
                                    <li><a href="checkout.html">تسویه حساب</a></li>
                                </ul>
                            </div>
                            <div id="language" class="btn-group">
                                <button class="btn-link dropdown-toggle" data-toggle="dropdown">
                                    <span>
                                        <img src="image/flags/gb.png" alt="انگلیسی" title="انگلیسی">انگلیسی <i class="fa fa-caret-down"></i></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <button class="btn btn-link btn-block language-select" type="button" name="GB">
                                            <img src="image/flags/gb.png" alt="انگلیسی" title="انگلیسی" />
                                            انگلیسی</button>
                                    </li>
                                    <li>
                                        <button class="btn btn-link btn-block language-select" type="button" name="GB">
                                            <img src="image/flags/ar.png" alt="عربی" title="عربی" />
                                            عربی</button>
                                    </li>
                                </ul>
                            </div>
                            <div id="currency" class="btn-group">
                                <button class="btn-link dropdown-toggle" data-toggle="dropdown"><span>تومان <i class="fa fa-caret-down"></i></span></button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="EUR">€ Euro</button>
                                    </li>
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="GBP">£ Pound Sterling</button>
                                    </li>
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="USD">$ USD</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div id="top-links" class="nav pull-right flip">
                            <ul>
                                <li><a href="login.html">ورود</a></li>
                                <li><a href="register.html">ثبت نام</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <div class="container">


                <div id="content" class="col-sm-9">
                    <!-- Slideshow Start-->
                    <div class="slideshow single-slider owl-carousel">

                        <%foreach (var item in SRC)
                            { %>

                        <div class="item">
                            <a href="#">
                                <img class="img-responsive" src="<% =item %>" alt="banner 1" /></a>
                        </div>

                        <%} %>
                    </div>
                </div>
            </div>



            <h3 class="subtitle">ویژه</h3>
            <div class="owl-carousel product_carousel">
                <%foreach (var _obj in obj)
                    { %>
                <div class="product-thumb clearfix">
                    <div class="image">
                        <a href="product.html">
                            <img src="<%=_obj.Image %>"" alt="<%=_obj.name %>" title="<%=_obj.name %>" class="img-responsive" /></a>
                    </div>
                    <div class="caption">
                        <h4><a href="product.html"><%=_obj.name %></a></h4>

                        <% if (_obj.Is_Saving == 1)
                            {%>
             <p class="price"><span class="price-new"><%=_obj.Price_New %> تومان</span><span class="price-old"><%=_obj.Price_Old %> تومان</span><span class="saving"><%=_obj.Saving %></span></p>

                      <%}
                        else
                        { %>  
                            <p class="price"><%=_obj.Price_New %> تومان </p>

                        <%} %>


                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick="cart.add('42');"><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>
                <%} %>
            </div>

            <!--
                <div class="product-thumb clearfix">
                    <div class="image"><a href="product.html">
                        <img src="Assets/image/product/samsung_tab_1-200x200.jpg" alt="تبلت ایسر" title="تبلت ایسر" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="product.html">تبلت ایسر</a></h4>
                        <p class="price"><span class="price-new">98000 تومان</span> <span class="price-old">240000 تومان</span> <span class="saving">-5%</span> </p>
                        <div class="rating"><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span></div>
                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick="cart.add('49');"><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>


                <div class="product-thumb clearfix">
                    <div class="image"><a href="product.html">
                        <img src="Assets/image/product/sony_vaio_1-200x200.jpg" alt="کفش راحتی مردانه" title="کفش راحتی مردانه" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="product.html">کفش راحتی مردانه</a></h4>
                        <p class="price"><span class="price-new">32000 تومان</span> <span class="price-old">12 میلیون تومان</span> <span class="saving">-25%</span> </p>
                        <div class="rating"><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span></div>
                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick="cart.add('46');"><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>



                <div class="product-thumb clearfix">
                    <div class="image"><a href="product.html">
                        <img src="Assets/image/product/macbook_1-200x200.jpg" alt="آیدیا پد یوگا" title="آیدیا پد یوگا" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="product.html">آیدیا پد یوگا</a></h4>
                        <p class="price">900000 تومان </p>
                        <div class="rating"><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span></div>
                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick="cart.add('43');"><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>


                <div class="product-thumb clearfix">
                    <div class="image"><a href="product.html">
                        <img src="Assets/image/product/iphone_1-200x200.jpg" alt="آیفون 7" title="آیفون 7" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="product.html">آیفون 7</a></h4>
                        <p class="price">2200000 تومان </p>
                        <div class="rating"><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span><span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span></div>
                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick=""><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>



                <div class="product-thumb clearfix">
                    <div class="image"><a href="product.html">
                        <img src="Assets/image/product/canon_eos_5d_1-200x200.jpg" alt="تیشرت آستین بلند مردانه" title="تیشرت آستین بلند مردانه" class="img-responsive" /></a></div>
                    <div class="caption">
                        <h4><a href="product.html">تیشرت آستین بلند مردانه</a></h4>
                        <p class="price"><span class="price-new">98000 تومان</span> <span class="price-old">122000 تومان</span> <span class="saving">-20%</span> </p>
                    </div>
                    <div class="button-group">
                        <button class="btn-primary" type="button" onclick=""><span>افزودن به سبد</span></button>
                        <div class="add-to-links">
                            <button type="button" data-toggle="tooltip" title="Add to Wish List" onclick=""><i class="fa fa-heart"></i></button>
                            <button type="button" data-toggle="tooltip" title="مقایسه this محصولات" onclick=""><i class="fa fa-exchange"></i></button>
                        </div>
                    </div>
                </div>
            </div>
-->
            <script src="Assets/js/jquery-2.1.1.min.js"></script>
            <script src="Assets/js/bootstrap/js/bootstrap.min.js"></script>
            <script src="Assets/js/jquery.easing-1.3.min.js"></script>
            <script src="Assets/js/jquery.dcjqaccordion.min.js"></script>
            <script src="Assets/js/owl.carousel.min.js"></script>
            <script src="Assets/js/custom.js"></script>
</body>
</html>
