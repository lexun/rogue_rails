$ ->
  $('.sortable').sortable
    axis: 'y'
    revert: 200
    update: ->
      $.post($(@).data('update-path'), $(@).sortable('serialize'))

  $('tr').children().each ->
    $(@).width($(@).width())
