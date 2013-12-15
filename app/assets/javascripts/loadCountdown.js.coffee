$ ->
  updateTimer = ->
    seconds = parseInt $('.time_remaining').text(), 10
    seconds -= 1

    #$('.time_remaining').text(seconds)
    # TODO: SOMETING IN THE LINES OF THE BLEOW MALARKI
    #$.get('/offers/5/timewindows/5/time_remaining', (data)->
    #  if data.seconds <= 0 
    #    window.location = "/offers"  
    #)

  window.setInterval updateTimer, 1000