# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
    $('.field').click ->
        $('.list').fadeIn 350

        $(document).keyup (e) ->
            if e.keyCode == 27
                $('.list').fadeOut 350
            return

        $('.list li').click ->
            $('.list').fadeOut 350
            return

        $(document).one ->
            $('.list').fadeOut 350
            return
