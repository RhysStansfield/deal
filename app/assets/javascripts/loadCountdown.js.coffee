$ ->
  updateTimer = ->
    seconds = parseInt $('.time_remaining').text(), 10
    seconds -= 1

    $('.time_remaining').text(seconds)

  window.setInterval updateTimer, 1000