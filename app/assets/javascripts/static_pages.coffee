# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  #$('#products_search input:submit').hide()
  $('#products_search input').change ->
      $.ajax
          type: $(this.form).attr('method')
          url: $(this.form).attr('action')
          data: $(this.form).serialize()
          dataType: 'script'

  $('#slider').slider
    range: true
    min: 0
    max: 400
    values: [
      50
      350
    ]
    slide: (event, ui) ->
      $('#amount_min').val ui.values[0]
      $('#amount_max').val ui.values[1]
      return
  $('#amount_min').val $('#slider').slider('values', 0)
  $('#amount_max').val $('#slider').slider('values', 1)
  return
