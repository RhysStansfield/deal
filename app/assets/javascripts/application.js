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
//= require mustache
//= require_directory .


function addOffersForBusiness(business) {

  business.offers.forEach(function(offer) {
    var mustache = $('#stream-offer').html();

    var availableOffers = $('<div data-company-id=' + business.id +' data-offer-id=' + offer.id + ' class="available" />')

      availableOffers.append(Mustache.render(mustache, offer))
      $('.available_offers').prepend(availableOffers);

  });
};




$(".submittable").click(function() { 
  var form = $('form.edit_customer');
  var url = form.attr("action");

  $.post(url, form.serialize(), function(data) {

    $('.businesses').html('')

    data.forEach(function(business) {
      var businessElem = $('<div class="business"/>')
      businessElem.append(
        $('<div id="name_and_follow"><div id="avatar_for_follow"><img src="' + business.logo + '" class="follow_avatar"></div><div id="name_for_follow">' + business.name + '</div><div id="follow_for_follow"><button class="follow" data-id=' + business.id + '>' + business.follow_button_text + '</button>'))
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
      addOffersForBusiness(data)
    } else {
      removeOffers(data);
    }
  }); 
});

function removeOffers(business) {
  console.log(business)
  $('[data-company-id=' + business.id + ']').remove();
}


// make flash notice disappear after 1.5 seconds

setTimeout(function() {
  $(".notice").slideUp().empty();
}, 1800);

setTimeout(function() {
  $(".alert").slideUp().empty();
}, 1800);

$(document).foundation();
var dropdown = $('.right-dropdown').remove()
dropdown.appendTo('.home_top_width');


$(document).ready(function(){
    var preview = $(".upload-preview img");
    
    $(".file").change(function(event){
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
});