(function($) {

/* jQuery Pre loader
  -----------------------------------------------*/
  $(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
  });              


/* Mobile Navigation
    -----------------------------------------------*/
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});


/* HTML document is loaded. DOM is ready. 
-------------------------------------------*/
$(document).ready(function() {

  /* Hide mobile menu after clicking on a link
    -----------------------------------------------*/
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });


 /* Parallax section
    -----------------------------------------------*/
  function initParallax() {
    $('.intro-section').parallax("100%", 0.1);
    $('.overview-section').parallax("100%", 0.3);
    $('.details-section').parallax("100%", 0.2);
    $('.video-section').parallax("100%", 0.3);
    $('.speakers-section').parallax("100%", 0.1);
    $('.program-section').parallax("100%", 0.2);
    $('.register-section').parallax("100%", 0.1);
    $('.faq-section').parallax("100%", 0.3);
    $('.rte-section').parallax("100%", 0.1);
    $('.sponsors-section').parallax("100%", 0.3);
    $('.contact-section').parallax("100%", 0.2);

  }
  initParallax();


  /* Owl Carousel
  -----------------------------------------------*/
  $(document).ready(function() {
    $("#owl-speakers").owlCarousel({
      autoPlay: 6000,
      items : 4,
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [979,1],
      itemsTablet: [768,1],
      itemsTabletSmall: [985,2],
      itemsMobile : [479,1],
    });
  });


  /* Back top
  -----------------------------------------------*/
    $(window).scroll(function() {
        if ($(this).scrollTop() > 200) {
        $('.go-top').fadeIn(200);
        } else {
          $('.go-top').fadeOut(200);
        }
        });   
        // Animate the scroll to top
      $('.go-top').click(function(event) {
        event.preventDefault();
      $('html, body').animate({scrollTop: 0}, 300);
      })


  /* wow
  -------------------------------*/
  new WOW({ mobile: false }).init();

  });

  $('form').submit(function(event) {
      event.preventDefault()

      if (!this.checkValidity()) {
          // If the form is invalid, submit it. The form won't actually submit;
          // this will just cause the browser to display the native HTML5 error messages.
          this.find('input[type=submit]').click()
      } else {
        var values = $(this).serialize();
        $.ajax({
          type: this.method,
          url: this.action,
          data: values,
          success: function(data){
              if (data.success) {
                  $('#success-dialog').modal('show');
                  $('form')[0].reset();
                  $('form')[1].reset();
              } else {
                  $('#fail-dialog').modal('show');
              }
          },
          error: function(response) {
              $('#fail-dialog').modal('show');
          }
        });
      }
  });

  // Initialize SmoothScroll on anchors with hrefs of type '#'
  new SmoothScroll('a[href*="#"]');
})(jQuery);

var vid = document.getElementById("main-video");
vid.pause();

