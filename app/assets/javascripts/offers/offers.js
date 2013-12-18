

$(document).ready(function () {
  $('.show-preferences').on('click', function(){
    $('.preferences').toggleClass('revealed');
    if($('.preferences').hasClass('revealed')) {
      $(this).text('Hide Preferences')
    } else {
      $(this).text('Show/Change Preferences')
    }
  })

  $('.available_offers').on('inview', '.available', function(event, isInView, visiblePartX, visiblePartY) {
    if (isInView) {
      // element is now visible in the viewport
      if (visiblePartY == 'top') {
        // console.log("top is visible");
      } else if (visiblePartY == 'bottom') {
        // console.log("bottom is visible");
      } else {
        console.log("whole element is visible");
        var offerId = $(this).data('offer-id');
        $.post( "/impressions", { "offer_id": offerId } );
        $(this).unbind('inview');
      }
    } else {
      // console.log("element has left viewport");
    }
  });
  
  $('.see-offer-link').click(function() {
    console.log("clicked")
    var offerId = $(this).data('offer-id');
    $.post( "/clicks", { "offer_id": offerId } );
  });

});

$.get('/businesses.json', function(businesses) {
  businesses.forEach(function(business) {
    addOffersForBusiness(business);
  })
});

