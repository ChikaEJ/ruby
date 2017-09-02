//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function () {
    $('#clean_cart').on('click', function (event) {
        // event.preventDefault();
        $('#order_items').remove();

    });
});