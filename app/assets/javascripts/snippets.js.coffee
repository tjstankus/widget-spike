# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

($ document).ready ->
	$(".snippet-link").click (e)->
    content = $(this).parent().find(".snippet_content").html()
    $('#registered_app_widget').append(content)

