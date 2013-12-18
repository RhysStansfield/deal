$('.example-basic').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
  if (isInView) {
    // element is now visible in the viewport
    if (visiblePartY == 'top') {
      // console.log("top is visible");
    } else if (visiblePartY == 'bottom') {
      // console.log("bottom is visible");
    } else {
      console.log("whole element is visible");
      var offerId = $(this).data('id');
      $.post( "/impressions", { "offer_id": offerId } );
      $(this).unbind('inview');
    }
  } else {
    // console.log("element has left viewport");
  }
});





$.get('/businesses.json', function(businesses) {
  businesses.forEach(function(business) {
    addOffersForBusiness(business);
  })
});

$(document).ready(function() {
<<<<<<< HEAD
    $('body').on('click', '.available_offers a', function(e) {
      e.preventDefault();

      if(!$(this).hasClass('click-logged')) {
        e.stopPropagation();

        var link = this;
        var offerId = $(this).data('offer-id');

        $.post( "/clicks", { "offer_id": offerId }, function(){
          $(link).addClass('click-logged').trigger('click');
        });
      }

    });
          $('.show-preferences').click(function(){                   
            //make the collapse content to be shown or hide
            var toggle_switch = $(this);
            $('.preferences').toggle(function(){
              if($(this).css('display')=='none'){
                                //change the button label to be 'Show/Change Preferences'
                toggle_switch.html('Show/Change Preferences');
              }else{
                                //change the button label to be 'Hide Preferences'
                toggle_switch.html('Hide Preferences');
              }
            });
          });
 
        });


// http://patik.com/blog/within-viewport-javascript-and-jquery-plugin/
// https://github.com/patik/within-viewport
// http://www.appelsiini.net/projects/viewport


// google search: jquery check if something is in the view
// http://imakewebthings.com/jquery-waypoints/#get-started


// THEN: page visibility api
// https://github.com/protonet/jquery.inview
// http://www.w3.org/TR/page-visibility/
// http://www.samdutton.com/pageVisibility/