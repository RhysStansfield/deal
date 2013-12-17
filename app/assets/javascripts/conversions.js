$('#stripeButton').click(function() {
  console.log("clicked to buy - yay :)")
  var offerId = $(this).data('id');
  $.post( "/conversions", { "offer_id": offerId } );
});