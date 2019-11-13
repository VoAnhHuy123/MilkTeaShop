
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="content-top">
    <div class="container">
        <div class="main-slider">
            <div id="spinner"></div>
            <div class="swiper-viewport">
                <div id="slideshow0" class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide text-center"><a href="#"><img src="image/cache/catalog/main-banner-1-1400x535.jpg" alt="Mainbanner1" class="img-responsive" /></a></div>
                        <div class="swiper-slide text-center"><a href="#"><img src="image/cache/catalog/main-banner-2-1400x535.jpg" alt="Mainbanner2" class="img-responsive" /></a></div>
                    </div>
                </div>
                <div class="swiper-pagination slideshow0"></div>
                <div class="swiper-pager">
                    <ul class="swiper-pager-button">
                        <li class="swiper-button-prev">
                            <a class="swiper-prev"></a>
                        </li>
                        <li class="swiper-button-next">
                            <a class="swiper-next"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <script type="text/javascript"><!--
        $('#slideshow0').swiper({
            mode: 'horizontal',
            slidesPerView: 1,
            pagination: '.slideshow0',
            paginationClickable: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            spaceBetween: 0,
            autoplay: 5000,
            autoplayDisableOnInteraction: true,
            loop: true
        });
        --></script>

        <script type="text/javascript">
            // Can also be used with $(document).ready()
            $(window).load(function() {
                $("#spinner").fadeOut("slow");
            });
        </script>

    </div>
</div>