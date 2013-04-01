class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()
$(document).ready(Home.document_ready)
# class Timer
#   start: (e) ->
#   count = parseInt $('.datetime').val()
#   clearInterval(timer)
#   timer = setInterval(clock, 1000)
#   clock: ->
#   counter++
#   $('#timer').text(counter)

