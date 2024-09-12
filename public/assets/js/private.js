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
        // effect: 'fade',
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
                $('.banner_abs *').hide(0);
                $('.banner_abs *').removeClass('aos-init').removeClass('aos-animate');
            },
            slideChangeTransitionEnd: function () {
                $('.banner_abs *').show(0);
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
    var swiper477 = new Swiper(".fields_slider .swiper", {
        autoplay: false,
        slidesPerView: 1,
        spaceBetween: 22,
        loop: false,
        speed: 1000,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 22,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 22,
            },
            1024: {
                loop: false,
                slidesPerView: 5,
                spaceBetween: 22,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-222",
            prevEl: ".swiper-button-prev-222",
        },
    });
    var swiper478 = new Swiper(".news_nav .swiper", {
        autoplay: false,
        slidesPerView: "auto",
        spaceBetween: 20,
        loop: false,
        speed: 1000,
        navigation: {
            nextEl: ".swiper-button-next-222",
            prevEl: ".swiper-button-prev-222",
        },
    });
    // $('.fields_slider .swiper').on('mouseenter', function(e){
    //     swiper477.autoplay.stop();
    // })
    // $('.fields_slider .swiper').on('mouseleave', function(e){
    //     swiper477.autoplay.start();
    // })
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
    var swiper421 = new Swiper(".aw_slider .swiper", {
        autoplay: false,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: false,
        speed: 1500,
        navigation: {
            nextEl: ".swiper-button-next-33",
            prevEl: ".swiper-button-prev-33",
        },
    });
    var swiper422 = new Swiper(".aw_slider_2 .swiper", {
        autoplay: false,
        slidesPerView: 1,
        spaceBetween: 30,
        loop: false,
        speed: 1500,
        navigation: {
            nextEl: ".swiper-button-next-44",
            prevEl: ".swiper-button-prev-44",
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
    var swiper4122 = new Swiper(".n_slider_1 .swiper", {
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
                slidesPerView: 3,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-33",
            prevEl: ".swiper-button-prev-33",
        },
    });
    var swiper4123 = new Swiper(".n_slider_2 .swiper", {
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
                slidesPerView: 3,
                spaceBetween: 30,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-33",
            prevEl: ".swiper-button-prev-33",
        },
    });
    var swiper11 = new Swiper(".partners_slider .swiper", {
        autoplay: true,
        slidesPerView: 2,
        spaceBetween: 20,
        loop: false,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 2,
                spaceBetween: 20,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 20,
            },
            1024: {
                slidesPerView: 6,
                spaceBetween: 20,
            },
        },
        navigation: {
            nextEl: ".swiper-button-next-44",
            prevEl: ".swiper-button-prev-44",
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true
        },
    });
    var swiper12 = new Swiper(".his_slider .swiper", {
        autoplay: true,
        slidesPerView: 2,
        spaceBetween: 10,
        loop: false,
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
                spaceBetween: 20,
            },
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true
        },
    });
    var swiper13 = new Swiper(".contact_slider .swiper", {
        autoplay: true,
        slidesPerView: 1,
        spaceBetween: 15,
        loop: false,
        speed: 1500,
        breakpoints: {
            640: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
            768: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
            1024: {
                loop: false,
                slidesPerView: 2,
                spaceBetween: 15,
            },
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true
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
    $('.fields_item').hover(function () {

    })
    $(".fields_item").hover(function () {
            $(this).find('.fields_list').slideDown(100)
        },
        function () {
            $(this).find('.fields_list').slideUp(100)
        });
    $('#file_choose').on('change', function(){
        var filename = $(this).val().replace(/C:\\fakepath\\/i, '');
        $('#file_names').html(filename);
    });
    if ($('.tab-pane').length) {
        $('.lv2_tabs2 > .tab-pane:first-child').addClass("active in");
        var url = window.location.href;
        var activeTab = url.substring(url.indexOf("#") + 1);
        $(".lv2_tabs2 > .tab-pane").removeClass("active in");
        $("#" + activeTab).addClass("active in");
        $('a[href="#'+ activeTab +'"]').tab('show')
    }
    $('.aw_items .aw_item').click(function () {
        var awIndex = $(this).data('index');
        var awTitle = $(this).data('name');
        var awDesc = $(this).data('desc');
        var awImg = $(this).data('img');
        var awLongDesc = $(this).data('longdesc');
        $(this).closest('.awards_box').find('.aw_index').html(awIndex);
        $(this).closest('.awards_box').find('.aw_h').html(awTitle);
        $(this).closest('.awards_box').find('.aw_lv').html(awDesc);
        $(this).closest('.awards_box').find('.aw_desc').html(awLongDesc);
        $(this).closest('.awards_box').find('.col-md-6 img').attr("src", awImg);
    })
    $('a[href*="#"]').on('click', function (event) {
        var href = $(this).attr('href');
        if (href.includes('#') && href.split('#')[0].endsWith('/business')) {
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
    $('.lv2_tabs2 .nav-tabs a').on('click', function(e) {
        e.preventDefault();
        
        var $this = $(this);
        var target = $this.attr('href');
        var $target = $this.closest('li');
        
        var scrollContainer = $('.nav-tabs');
        scrollContainer.animate({
            scrollLeft: $target.position().left + scrollContainer.scrollLeft()
        }, 500);

    });
})
