<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Font Family-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@400;500;700&family=Shippori+Mincho&display=swap"
        rel="stylesheet">
    <!--Font Family end-->
    <link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Kuti Gallery</title>
</head>

<body>
    <header>
        <%@ include file="fragments/header.html" %>
    </header>
    <!-- Gallery -->
    <section id="Gallery" class="Gallery">
        <div class="container">
            <div class="section-title mt-4 mb-4" data-aos="fade-zoom-in" data-aos-easing="ease-in-back"
                data-aos-duration="800">
                <h2>Gallery</h2>
                <p>這裡充斥著各種不同時期的照片，有用手機拍的、相機拍的、有沒有調色過的。</p>
                <p> 但基本上就是少數人像，多數都拍景跟動物而已，人像好難.....</p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                    <img src="img/p2.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="夜晚的公園小道" />

                    <img src="img/p9.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="淡水路人" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img src="img/p10.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="草莓園" />

                    <img src="img/p7.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="試院路" />
                </div>

                <div class="col-lg-4 mb-4 mb-lg-0">
                    <img src="img/p8.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="淡水小狗" />

                    <img src="img/p1.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="貓咖小貓" />
                </div>
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <img src="img/p6.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="李孟軒" />

                    <img src="img/p4.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="山中小鴨" />
                </div>
                <div class="col-lg-6 mb-4 mb-lg-0">
                    <img src="img/p3.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="山上小貓" />

                    <img src="img/p5.jpg" class="w-100 shadow-1-strong rounded mb-4" data-aos="fade-up"
                        data-aos-anchor-placement="top-center" data-aos-easing="linear" data-aos-duration="1000"
                        alt="方天霖" />
                </div>
            </div>
        </div>
    </section>
    <!-- Gallery -->
    <footer>
        <%@ include file="fragments/footer.html" %>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>

    <script>
        AOS.init();
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>