$(document).on 'page:change', ->
  $('#note_due_date').datepicker({ format: 'yyyy-mm-dd' })
  $('#note_time').timepicker(
    {
    showMeridian: false,
    defaultTime: false
    })