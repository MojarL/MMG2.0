<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./categories.html">Categories</a></li>
                                        <li><a href="./anime-details.html">Anime Details</a></li>
                                        <li><a href="./anime-watching.html">Anime Watching</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./signup.html">Sign Up</a></li>
                                        <li><a href="./login.html">Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="./login.html"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./categories.html">Categories</a>
                        <span>Romance</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4>BANDS</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Order by:</p>
                                        <ul class="dropdown" id="orderBy">
                                            <li id="orderList" value="1">A-Z Bands</li>
                                            <li id="orderList" value="2">A-Z Discs</li>
                                            <li id="orderList" value="3">A-Z Genres</li>
                                            <li id="orderList" value="4">Popularity</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      Dropdown button
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                      <a class="dropdown-item" href="#">Action</a>
                                      <a class="dropdown-item" href="#">Another action</a>
                                      <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                  </div>
                            </div>
                        </div>

                        <!--
                        <table class="table table-striped table-hover table-light" id="dtBasicExample">
                            <thead>
                                <tr>
                                    <td>Nombre</td>
                                    <td>{$countBandas->suma}</td>

                                </tr>
                            </thead>
                            <tbody id="bandsContainer">
                                {foreach from=$bandas item=$banda}


                                <tr class="band-tr">
                                    <td> {$banda->nombre_banda}</td>
                                    <td> {$banda->id_disco}</td>

                                    <td> {$banda->nombre_disco}</td>

                                    <td><img class="band-img" src="{$banda->foto_banda}" id="entryBanner"
                                            alt="{$banda->nombre_banda}" /></td>

                                </tr>

                                {/foreach}
                            </tbody>
                        </table>-->


                        <!--
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/popular-1.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/popular/popular-2.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/trending/trend-6.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Code Geass: Hangyaku no Lelouch R2</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->

                        <!--------------------------------------BANDS GRID------------------------------------------------------>
                        <div id="bandsContainer">
                            <div class="row">

                                {foreach from=$bandas item=$banda}

                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <img src="{$banda->foto_banda}" alt="{$banda->nombre_banda}">

                                        <div class="product__item__text">
                                            <ul>
                                                <li>{$banda->nombre_banda}</li>
                                                <li>genero</li>
                                            </ul>
                                            <h5><a href="{$banda->link_disco}">{$banda->nombre_disco}</a></h5>
                                        </div>
                                    </div>
                                </div>

                                {/foreach}

                            </div>
                        </div>

                        <!-------------------------------------PAGINATION------------------------------------------------------->
                        <div class="product__pagination" id="paginationBands">

                            <ul class="pagination">
                                <div class="pagination">
                                    {$print}
                                </div>
                            </ul>
                        </div>

                        <!--<div class="product__pagination">
                        <a href="#" class="current-page">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><i class="fa fa-angle-double-right"></i></a>
                    </div>-->
                        <!-------------------------------------------------------------------------------------------->



                        <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="product__sidebar">
                                <div class="product__sidebar__view">
                                    <div class="section-title">
                                        <h5>Top Views</h5>
                                    </div>
                                    <ul class="filter__controls">
                                        <li class="active" data-filter="*">Day</li>
                                        <li data-filter=".week">Week</li>
                                        <li data-filter=".month">Month</li>
                                        <li data-filter=".years">Years</li>
                                    </ul>
                                    <div class="filter__gallery">
                                        <div class="product__sidebar__view__item set-bg mix day years"
                                            data-setbg="img/sidebar/tv-1.jpg">
                                            <div class="ep">18 / ?</div>
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#">Boruto: Naruto next generations</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix month week"
                                            data-setbg="img/sidebar/tv-2.jpg">
                                            <div class="ep">18 / ?</div>
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix week years"
                                            data-setbg="img/sidebar/tv-3.jpg">
                                            <div class="ep">18 / ?</div>
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix years month"
                                            data-setbg="img/sidebar/tv-4.jpg">
                                            <div class="ep">18 / ?</div>
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            <div class="ep">18 / ?</div>
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment">
                                    <div class="section-title">
                                        <h5>New Comment</h5>
                                    </div>
                                    <div class="product__sidebar__comment__item">
                                        <div class="product__sidebar__comment__item__pic">
                                            <img src="img/sidebar/comment-1.jpg" alt="">
                                        </div>
                                        <div class="product__sidebar__comment__item__text">
                                            <ul>
                                                <li>Active</li>
                                                <li>Movie</li>
                                            </ul>
                                            <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                            <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                        </div>
                                    </div>
                                    <div class="product__sidebar__comment__item">
                                        <div class="product__sidebar__comment__item__pic">
                                            <img src="img/sidebar/comment-2.jpg" alt="">
                                        </div>
                                        <div class="product__sidebar__comment__item__text">
                                            <ul>
                                                <li>Active</li>
                                                <li>Movie</li>
                                            </ul>
                                            <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                                            <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                        </div>
                                    </div>
                                    <div class="product__sidebar__comment__item">
                                        <div class="product__sidebar__comment__item__pic">
                                            <img src="img/sidebar/comment-3.jpg" alt="">
                                        </div>
                                        <div class="product__sidebar__comment__item__text">
                                            <ul>
                                                <li>Active</li>
                                                <li>Movie</li>
                                            </ul>
                                            <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                                            <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                        </div>
                                    </div>
                                    <div class="product__sidebar__comment__item">
                                        <div class="product__sidebar__comment__item__pic">
                                            <img src="img/sidebar/comment-4.jpg" alt="">
                                        </div>
                                        <div class="product__sidebar__comment__item__text">
                                            <ul>
                                                <li>Active</li>
                                                <li>Movie</li>
                                            </ul>
                                            <h5><a href="#">Monogatari Series: Second Season</a></h5>
                                            <span><i class="fa fa-eye"></i> 19.141 Viewes</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="page-up">
            <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="footer__nav">
                        <ul>
                            <li class="active"><a href="./index.html">Homepage</a></li>
                            <li><a href="./categories.html">Categories</a></li>
                            <li><a href="./blog.html">Our Blog</a></li>
                            <li><a href="#">Contacts</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="search-input">

            <form class="search-model-form">
                <div class="search-close-switch">
                    <i class="icon_close"></i>
                </div>
                <input type="text" id="search-text" placeholder="Search here.....">
            </form>
        </div>
        <div class="d-flex align-items-center justify-content-center">

            <div id="search-div">

            </div>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
   <!-- <script src="js/jquery.nice-select.min.js"></script>----------------------->
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bands-functions.js"></script>
</body>

</html>