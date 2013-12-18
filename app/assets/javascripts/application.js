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

function addOffersForBusiness(business) {
  business.offers.forEach(function(offer){
    var availableOffers = $('<div class="available" /div>')
    availableOffers.html('<span class="company_name">' + offer.company_name + '</span>' + ' ' + '<small>' + offer.created_at + '</small>' + ' ' + "<a href=" + offer.offer_path + " data-method='post' data-offer-id=" + offer.id + "> See offer</a>")
  $('.available_offers').prepend(availableOffers);
  });
}

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
      addOffersForBusiness(data)
    } else {
      removeOffers(data)
    }
  }); 
});

function removeOffers(business) {
  $('[data-company-id=' + business.id +']').remove();
}



