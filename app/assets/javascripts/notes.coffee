$(document).on 'page:change', ->
  $('#note_due_date').datepicker({ format: 'yyyy-mm-dd' })
  $('#note_time').timepicker(
    {
    showMeridian: false,
    defaultTime: false
    })
  $('#note_created_at').datetimepicker(
    format: 'YYYY-MM-DD HH:mm'
    daysOfWeekDisabled: [0]
    showClear: true
    showClose: true
  );

  $('#note_updated_at').datetimepicker(
    {
      format: 'YYYY-MM-DD HH:mm'
      sideBySide: true
    }
  );

  $("#note_created_at").on "dp.change", (e) ->
    $('#note_updated_at').data("DateTimePicker").minDate(e.date)

  $("#note_updated_at").on "dp.change", (e) ->
    $('#note_created_at').data("DateTimePicker").maxDate(e.date)