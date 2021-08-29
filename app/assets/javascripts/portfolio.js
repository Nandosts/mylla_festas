$( document ).on('turbolinks:load',function(){
    $('.owl-one').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots: true,
        autoplay:true,
        autoplayTimeout: 6500,
        smartSpeed: 700, // duration of change of 1 slide
        responsive:{
            0:{
                items:1
            }
        }
    });

    // $('.owl-two').owlCarousel({
    //     loop:true,
    //     margin:10,
    //     nav:true,
    //     responsive:{
    //         0:{
    //             items:1
    //         },
    //         600:{
    //             items:1
    //         },
    //         1000:{
    //             items:3
    //         }
    //     }
    // });
    $( ".owl-prev").html('<i class="fa fa-angle-left fa-3x"></i>');
    $( ".owl-next").html('<i class="fa fa-angle-right fa-3x"></i>');
  });