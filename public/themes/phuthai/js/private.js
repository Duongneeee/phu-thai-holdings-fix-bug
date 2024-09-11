$(document).ready(function() {$(window).scroll(function () {
        $('.mile_cover.aos-animate').closest('.mile_item').addClass('done')
        if ($(window).scrollTop() >= 1) {
            $('header').addClass('scroll');
            $('main').addClass('scroll');
        } else {
            $('header').removeClass('scroll');
            $('main').removeClass('scroll');
        }
    });
    var swiper = new Swiper(".banner_slider .swiper", {
        autoplay: {
            delay: 5000
        },
        effect: 'fade',
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        speed: 1000,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        on: {
            slideChangeTransitionStart: function () {
                $('.banner-abs *').hide(0);
                $('.banner-abs *').removeClass('aos-init').removeClass('aos-animate');
            },
            slideChangeTransitionEnd: function () {
                $('.banner-abs *').show(0);
                AOS.init();
            },
        }
    });
    var swiper4 = new Swiper(".index_slider .swiper", {
        autoplay: true,
        slidesPerView: 2,
        spaceBetween: 10,
        loop: true,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 10,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
            1024: {
                loop: false,
                slidesPerView: 5,
                spaceBetween: 10,
            },
        },
    });
    var swiper5 = new Swiper(".project_slider .swiper", {
        autoplay: {
            delay: 5000
        },
        slidesPerView: 1,
        spaceBetween: 40,
        loop: true,
        speed: 1000,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-2",
            prevEl: ".swiper-button-prev-2",
        },
    });
    var swiper414 = new Swiper(".his_slider .swiper", {
        autoplay: false,
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        speed: 1500,
        freeMode: true,
        watchSlidesProgress: true,
    });
    var swiper411 = new Swiper(".his_slider_thumb .swiper", {
        autoplay: true,
        slidesPerView: 3,
        spaceBetween: 0,
        loop: true,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 3,
                spaceBetween: 0,
            },
            768: {
                slidesPerView: 5,
                spaceBetween: 0,
            },
            1024: {
                slidesPerView: 7,
                spaceBetween: 0,
            },
        },
        thumbs: {
            swiper: swiper414,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
    var swiper415 = new Swiper(".pj_gl .swiper", {
        autoplay: false,
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        speed: 1500,
        freeMode: true,
        watchSlidesProgress: true,
    });
    var swiper416 = new Swiper(".pj_gl_thumb .swiper", {
        autoplay: true,
        slidesPerView: 2,
        spaceBetween: 30,
        loop: true,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 30,
            },
        },
        thumbs: {
            swiper: swiper415,
        },
    });
    var swiper417 = new Swiper(".box_dh_1 .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-2",
            prevEl: ".swiper-button-prev-2",
        },
    });
    var swiper418 = new Swiper(".box_dh_2 .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-3",
            prevEl: ".swiper-button-prev-3",
        },
    });
    var swiper419 = new Swiper(".tech_slider .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        speed: 1500,
        navigation: {
            nextEl: ".swiper-button-next-1",
            prevEl: ".swiper-button-prev-1",
        },
    });
    var swiper420 = new Swiper(".tech_slider_2 .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        speed: 1500,
        navigation: {
            nextEl: ".swiper-button-next-2",
            prevEl: ".swiper-button-prev-2",
        },
    });
    var swiper4144 = new Swiper(".news_slider .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: false,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            1024: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-3",
            prevEl: ".swiper-button-prev-3",
        },
    });
    AOS.init({
        once: true,
        disable: function () {
            var maxWidth = 767;
            return window.innerWidth < maxWidth;
        }
    });
    $("#menu").mmenu({
        "extensions": [
            "fx-menu-zoom"
        ],
        "counters": true
    });
    $('.btn-search, .btn-s-mb').click(function () {
        $('.search-hd').slideToggle(200)
    });
    $('#hamburger').click(function (e) {
        e.preventDefault();
        $(this).toggleClass('mm-wrapper_opened');
        $('body').toggleClass('hidden');
        $('.header_abs').toggleClass('is-opened');
    })
    if($(".timers").length){
        $(".timers").countTo({
            speed: 1000,
            refreshInterval: 2
        });
    }
    $('.pin_nor').hover(function () {
        var pinItem = $(this).closest('.pin_item');
        var id = pinItem.attr("data-id");
        $('#line-'+id).toggleClass('show')
    })
    $('a[href*="#"]').on('click', function (event) {
        // event.preventDefault();
        var href = $(this).attr('href');
        
        if (href.includes('#')) {
            var fragment = href.split('#')[1];
            
            updateTabs(fragment);
        }

        function updateTabs(fragment) {
            $('.lv2_tabs2 > .tab-pane:first-child').addClass("active in");
            $(".lv2_tabs2 > .tab-pane").removeClass("active in");
            $("#" + fragment).addClass("active in");
            $('a[href="#'+ fragment +'"]').tab('show')
        }
    });
})
