# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready', ->
    pressed = false

    newAjax = ->
        $.ajax
            method: 'GET'
            url: 'todos/new'
            accepts: html: 'text/html'
            success: (data, status, xhr) ->
                $('#formarea').append data.trim()
                $('#formarea').show()
                $('.field').val 'Exit'
                $('#new_todo').on 'submit', formAjax
                return
            error: (xhr, status, error) ->
                alert "AJAX Error: #{status} ; #{error}"
                return
        return

    hideForm = ->
        $('#formarea').html ''
        $('.field').val 'New'
        $('#formarea').hide()
        return

    
    bindAjax = ->
        $('ul.todos').append data
        hideForm()
        pressed = false
        return

    formAjax = ->
        data = $('#new_todo').serialize();
        $.ajax
            method: 'POST'
            url: 'todos/create'
            data: data
            accepts: html: 'text/html'
            success: (data, status, xhr) ->
                $('#todos').append data.trim()
                hideForm()
                pressed = false
                return
            error: (xhr, status, error) ->
                alert "AJAX Error: #{status} ; #{error}"
                return
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
