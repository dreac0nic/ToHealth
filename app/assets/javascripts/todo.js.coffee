# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready', ->
    pressed = false

    newAjax = ->
        $.ajax
            method: 'GET'
            url: 'todo/new'
            accepts: html: 'text/html'
            success: (data, status, xhr) ->
                $('#formarea').append data.trim()
                $('#formarea').show()
                $('.field').val 'Exit'
                return
            error: (xhr, status, error) ->
                alert "AJAX Error: #{status} ; #{status}"
                return
        return

    hideForm = ->
        $('#formarea').html ''
        $('.field').val 'New'
        $('#formarea').hide()
        return

    $('.field').on 'click', (e) ->
        if pressed
            pressed = false
            hideForm()
            return
        else
            pressed = true
            newAjax()
        return
    return
