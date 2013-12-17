// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require angular
//= require jsapi 
//= require chartkick
//= require_directory .

// function filterByTime(business) {
//   business.offers.forEach(function(offer){
//     var beginningTime = offer.start_at;
//     var endTime = offer.end_at;
//     var timeNow = new Date().getTime();
//     console.log(timeNow/1000);
//     console.log(beginningTime);

//     if(timeNow >= beginningTime && timeNow <= endTime) {
//       availableOffers.html('<span class="company_name">' + offer.company_name + '</span>' + ' ' + '<small>' + "Created" + " " + offer.created_at + '</small>' + ' ' + "<a href=" + offer.offer_path + " data-method='post'> See offer</a>")
//       $('.available_offers').prepend(availableOffers);
//     }
//   });
// };

// function timeFiltering(offer) {

// }


function addOffersForBusiness(business) {
  business.offers.forEach(function(offer) {
    console.log(offer)
    var availableOffers = $('<div data-company-id=' + business.id + " " +' class="available" />')
    var beginningTime = offer.start_at;
    var endTime = offer.end_at;
    var timeNow = new Date().getTime();
    console.log(timeNow);

    if(timeNow >= Date.parse(beginningTime) && timeNow <= Date.parse(endTime)) {
      console.log("Hello")
      availableOffers.append('<span class="company_name">' + offer.company_name + '</span>' + ' ' + '<small>' + "Created" + " " + offer.created_at + '</small>' + ' ' + "<a href=" + offer.offer_path + " data-method='post'> See offer</a>")
      $('.available_offers').prepend(availableOffers);
    }
    // console.log(Date.parse(beginningTime));
    // console.log(Date.parse(endTime);

  // business.offers.forEach(function(offer) {
  //   var availableOffers = $('<div class="available" /div>')
  //   availableOffers.html('<span class="company_name">' + offer.company_name + '</span>' + ' ' + '<small>' + offer.created_at + '</small>' + ' ' + "<a href=" + offer.offer_path + " data-method='post' data-offer-id=" + offer.id + "> See offer</a>")
  // $('.available_offers').prepend(availableOffers);
  // });
  });
};




$(".submittable").click(function() { 
  var form = $('form.edit_customer');
  var url = form.attr("action");

  $.post(url, form.serialize(), function(data) {

    $('.businesses').html('')

    data.forEach(function(business) {
      var businessElem = $('<div class="business"/>')
      businessElem.html('<span class="follower_count">' + business.followers + '</span>' + ' ' + business.name);
      businessElem.append(
        $('<button class="follow" data-id=' + business.id + '>' + business.follow_button_text + '</button>')
      )

      $('.businesses').append(businessElem);
    })

  }, 'json');

});

$('.businesses').on('click', '.follow', function() {
  var url = "/businesses/" + $(this).data("id") + "/follow"
  var $button = $(this)
  var $followerCount = $(this).parent().find('.follower_count');

  $.post(url, function(data) {
    $followerCount.text(data.new_follow_count);
    $button.text(data.follow_button_text);
    if(data.offers) {
      console.log('adding offers')
      console.log(data.offers)
      addOffersForBusiness(data)
    } else {
      removeOffers(data);
    }
  }); 
});

function removeOffers(business) {
  $('[data-company-id=' + business.id + ']').remove();
}


// make flash notice disappear after 1.5 seconds

setTimeout(function() {
  $(".notice").slideUp().empty();
}, 1500);

setTimeout(function() {
  $(".alert").slideUp().empty();
}, 1500);

// function preferences() {
//   $('.available_offers').html('')

//     data.offers.forEach(function(offer){
//       var availableOffers = $('<div class="available" /div>')
//       availableOffers.html('<span class="company_name">' + offer.company_name + '</span>' + ' ' + offer.created_at);
//     $('.available_offers').prepend(availableOffers);
//     });
//   };

// var $offers = Offer.all

// $('.available_offers').html('')

//       offers.forEach(function(offer){
//         var availableOffers = $('<div class="available" />')
//         if (current_customer.businesses.include? offer.business){
//           availableOffers.html(<%= render partial: "offer", locals: { offer: offer});
//         }
//           $('.available').append(availableOffers);




// function follow() {
//   $.get(url, function(data) {
//     $('.follow').html('Follow');
//   })
// }

// all customers in business array so we can count the size (business.customers.size)
// business 

// def follow(business)
//     unless business.customers.include? self
//       business.customers << self
//     else
//       business.customers.delete(self)
//     end 
//   end

// $(document.createElement('div') {
//   // $.get
// });



