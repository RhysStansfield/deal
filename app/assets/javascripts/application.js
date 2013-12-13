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
//= require_tree .

$(".submittable").click(function() { 
    var form = $('form.edit_customer');
    var url = form.attr("action");

    $.post(url, form.serialize(), function(data) {

      $('.businesses').html('')

      data.forEach(function(business) {
        var businessElem = $('<div class="business" />')
        businessElem.html(business.followers + ' ' + business.name);
        businessElem.append(
          $('<button class="follow">' + business.follow_button_text + '</button>')
        )

        $('.businesses').append(businessElem);
      })

    }, 'json');

});

// $(document.createElement('div') {
//   // $.get
// });

// $('selector').on('click', function() {

// })

