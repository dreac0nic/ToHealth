# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('.field').click (e) ->
        $.ajax
            method: "GET"
            url: "/todo/new"
            accepts:
                html: "text/html"
            success: ( data, status, xhr ) ->
                $('#formarea').append data
                $('#formarea').show()
            error: ( xhr, status, errorThrown ) ->
                alert "AJAX Error: #{status}; #{errorThrown}"
