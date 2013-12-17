$('.available').bind('inview', function(event, isInView, visiblePartX, visiblePartY) {
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


$('.see-offer-link').click(function() {
  console.log("clicked")
  var offerId = $(this).data('id');
  $.post( "/clicks", { "offer_id": offerId } );
});



$(document).ready(function() {

  if($('.available_offers').length) {
    $.get('/businesses.json', function(businesses) {
      businesses.forEach(function(business) {
        console.log(business.company_name)
        addOffersForBusiness(business);
      })
    });
  }

  // $.get('/offers.json', function(businesses) {
  //     addOffersForBusiness(businesses);
  // });
});

// $(document).ready(function() {
//   $('.show-preferences').click(function(){                   
//     //make the collapse content to be shown or hide
//     var toggle_switch = $(this);
//     $('.preferences').toggle(function(){
//       if($(this).css('display')=='none'){
//                         //change the button label to be 'Show/Change Preferences'
//         toggle_switch.html('Show/Change Preferences');
//       }else{
//                         //change the button label to be 'Hide Preferences'
//         toggle_switch.html('Hide Preferences');
//       }
//     });
//   });

// });



$(document).ready(function () {
  $('.show-preferences').on('click', function(){
    $('.preferences').toggleClass('revealed');
    if($('.preferences').hasClass('revealed')) {
      $(this).text('Hide Preferences')
    } else {
      $(this).text('Show/Change Preferences')
    }
  })
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