$(document).on 'page:change', ->
  $('#note_due_date').datepicker({ format: 'yyyy-mm-dd' })