<cfquery name="EmpList" datasource="Simple">
SELECT menu_id,menu_name FROM menus
</cfquery>
<cfquery name="newsList" datasource="Simple">
SELECT n_id,n_name,n_content FROM news
</cfquery>
<cfquery name="setList" datasource="Simple">
SELECT s_id,s_logo_url,s_about FROM settings
</cfquery>
<!DOCTYPE html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <link rel="stylesheet" type="text/css" href="fontaws/css/fontawesome.min.css" />
        <link rel="stylesheet" type="text/css" href="fontaws/css/all.min.css" />


        <title>Galva Metal</title>
</head>

<body>
        <section id="menu-top">
                <div class="container">
                        <nav class="navbar navbar-light p-3">
                        <cfoutput query="setList">
                        <a class="navbar-brand"><img src="#s_logo_url#" class="img-responsive"
                        </cfoutput>
                                
                                                alt="Galva Metal"></a>
                                <div class="lang">
                                        <ul class="lang-inline">
                                                <li><a href=""><img src="images/lang/tr.png" alt=""></a></li>
                                                <li><a href=""><img src="images/lang/en.png" alt=""></a></li>
                                                <li><a href=""><img src="images/lang/gm.png" alt=""></a></li>
                                                <li><a href=""><img src="images/lang/ru.png" alt=""></a></li>
                                        </ul>
                                        <form class="">
                                                <input class="form-control" id="search" type="search"
                                                        placeholder="Search" aria-label="Search">
                                        </form>
                                </div>

                        </nav>
                </div>
        </section>

        <section id="menu">

                <div id="nav">
                        <ul> 
                                        <cfoutput query="EmpList">
                                                <li><a href="index.cfm">#menu_name#</a></li>
                                        </cfoutput>
                        </ul>
                </div>
        </section>
        <section id="sliderMain">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="5000">
                        <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                                <div class="carousel-item active">
                                        <img class="d-block w-100 img-fluid" style="height: 320px;" src="images/lang/slide1.jpg"
                                                alt="First slide">
                                </div>
                                <div class="carousel-item">
                                        <img class="d-block w-100 img-fluid" style="height: 320px;" src="images/lang/slide2.jpg"
                                                alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                        <img class="d-block w-100 img-fluid" style="height: 320px;" src="images/lang/slide3.jpg"
                                                alt="Third slide">
                                </div>
                                <div class="carousel-item">
                                        <img class="d-block w-100 img-fluid" style="height: 320px;" src="images/lang/slide4.jpg"
                                                alt="Third slide">
                                </div>
                        </div>
                </div>

        </section>
        <section id="main">
                <div class="container">
                        <div class="row">
                                <div class="col-md-4">
                                        <h2 id="main-topic">Haberler</h2>
                                        <hr>
                                        <div class="vertical-menu">
                                        <cfoutput query="newsList">
                                                <div class="content">
                                                        <h5>#n_name#</h5>
                                                        <p>#n_content#</p>
                                                        <a href="">Devamini oku >></a>
                                                </div>
                                        </cfoutput>
                                                
                                                
                                        </div>
                                </div>
                                <div class="col-md-8">
                                        <div class="row">
                                                <div class="col-md-4 top-container">
                                                        <div class="col-md-12 text-center">
                                                                <div class="top-c-img">
                                                                        <img src="images/lang/content1.gif" alt="">
                                                                </div>
                                                                <div class="top-content">
                                                                <cfoutput query="setList">
                                                                <p>#s_about#</p>
                                                                </cfoutput>
                                                                        
                                                                </div>


                                                        </div>


                                                </div>
                                                <div class="col-md-8 bottom-container">
                                                        <div class="slideshow-container">



                                                                <div class="mySlides">
                                                                        <img src="images/lang/contentb1.gif" alt="">
                                                                        <br>
                                                                        <p>Uzmanlığı Galvanizlii ve boyalı sac ticareti
                                                                                olan Galva Metal,
                                                                                10 yılı aşkın süredir bu işi yapıyor.
                                                                                Uluslararası ticareti
                                                                                çok iyi bilen, edindiği deneyim ve
                                                                                uluslararası operasyon
                                                                                gücünü iş ortakları ile paylaşan Galva
                                                                                Metal, her satın
                                                                                alma sürecini planlandığı gibi
                                                                                bitiriyor. Beklenmeyen
                                                                                süprizlerle ve sonu gelmeyen tedarik
                                                                                süreçleriyle sizi
                                                                                yalnız bırakmayan güvenli bir tedarik
                                                                                süreci sunuyor.</p>

                                                                </div>

                                                                <div class="mySlides">
                                                                        <img src="images/lang/contentb1.gif" alt="">
                                                                        <br>
                                                                        <p>2Uzmanlığı Galvanizlii ve boyalı sac ticareti
                                                                                olan Galva Metal,
                                                                                10 yılı aşkın süredir bu işi yapıyor.
                                                                                Uluslararası ticareti
                                                                                çok iyi bilen, edindiği deneyim ve
                                                                                uluslararası operasyon
                                                                                gücünü iş ortakları ile paylaşan Galva
                                                                                Metal, her satın
                                                                                alma sürecini planlandığı gibi
                                                                                bitiriyor. Beklenmeyen
                                                                                süprizlerle ve sonu gelmeyen tedarik
                                                                                süreçleriyle sizi
                                                                                yalnız bırakmayan güvenli bir tedarik
                                                                                süreci sunuyor.</p>

                                                                </div>
                                                                <div class="mySlides">
                                                                        <img src="images/lang/contentb1.gif" alt="">
                                                                        <br>
                                                                        <p>1Uzmanlığı Galvanizlii ve boyalı sac ticareti
                                                                                olan Galva Metal,
                                                                                10 yılı aşkın süredir bu işi yapıyor.
                                                                                Uluslararası ticareti
                                                                                çok iyi bilen, edindiği deneyim ve
                                                                                uluslararası operasyon
                                                                                gücünü iş ortakları ile paylaşan Galva
                                                                                Metal, her satın
                                                                                alma sürecini planlandığı gibi
                                                                                bitiriyor. Beklenmeyen
                                                                                süprizlerle ve sonu gelmeyen tedarik
                                                                                süreçleriyle sizi
                                                                                yalnız bırakmayan güvenli bir tedarik
                                                                                süreci sunuyor.</p>

                                                                </div>

                                                                <a class="prev" onclick="plusSlides(-1)">❮</a>
                                                                <a class="next" onclick="plusSlides(1)">❯</a>

                                                        </div>


                                                </div>
                                        </div>
                                        <div class="row">
                                                <div class="col-md-6">
                                                        <h6 style="color: #BDBDBD;">e-bülten</h6>
                                                        <hr>
                                                        <div class="bottom-content">
                                                                <input type="text" placeholder="e-posta adresiniz">
                                                                <button type="sumit">gönder</button>
                                                                <p>Galva ile ilgili yeniliklerden haberdar olmak için
                                                                        <span>kayıt olun.</span></p>

                                                        </div>
                                                </div>
                                                <div class="col-md-6">
                                                        <h6 style="color: #BDBDBD;">Şikayet ve Önerileriniz</h6>
                                                        <hr>
                                                        <div class="bottom-content-2">
                                                                <div class="row">
                                                                        <div class="col-md-2">
                                                                                <img src="images/lang/conten2.gif"
                                                                                        alt="">
                                                                        </div>
                                                                        <div class="col-md-10">
                                                                                <p>Müşterilerimiz bizim için çok
                                                                                        değerli. Her türlü istek, öneri
                                                                                        ve şikayetlerinizi bizlerle<a
                                                                                                href="#"> hemen
                                                                                                paylaşabilirsiniz
                                                                                                »</a></p>
                                                                        </div>



                                                                </div>
                                                        </div>
                                                </div>
                                        </div>

                                </div>



                        </div>
                </div>
                </div>
        </section>
<hr>
<section id="footer-logo">
        <div class="container">

        
        <div class="row">
                <div class="col-md-6">
                        <div class="left-img">
                                <img id="left-img-1" src="images/lang/f-1.gif" alt="">
                                <p id="left-img-2"> Copyright © 2019 Galva Metal A.Ş.</p>
                                <img id="left-img-3" src="images/lang/f-2.png" alt="">
                        </div>
                </div>
                <div class="col-md-6">
                                <div class="right-img">
                                                
                                                <a href=""><img id="right-img-1" src="images/lang/f-5.gif" alt=""></a>
                                                <img id="right-img-2" src="images/lang/f-4.gif" alt="">
                                                
                                        </div>
                        </div>
        </div>
</div>
</section>
<section id="footer-logo-2">
                <div class="container text-center">
                    <img src="images/lang/f-6.gif" alt="">
                    <p>Galva Metal A.Ş. 140 yıllık çelik işleme ve deneyimiyle dünyanın önde 
                            gelen markalarından Alman Wupperman Group ile %35 iş ortağıdır.</p>
                </div>
            </section>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/smooth-scroll/smooth-scroll.js"></script>
        <script src="fontaws/js/fontawesome.min.js"></script>

        <script type="text/javascript">
                $(document).ready(function () {
                        $("#selam").click(function () {
                                $("ul").slideToggle(2000);//toggle
                        });
                });
        </script>
        <script src="js/main.js"></script>
</body>

</html>