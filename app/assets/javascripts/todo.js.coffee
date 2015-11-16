# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('.field').click (e) ->
        $.ajax '/todo/new',
            type: 'GET'
            dataType: 'html'
            error: (jqXHR, textStatus, errorThrown) ->
                alert "AJAX Error: #{textStatus}"
            success: (data, textStatus, jqXHR) ->
                $('#formarea').append data
