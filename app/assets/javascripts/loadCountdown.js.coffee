$ ->

  if $('.time_remaining').length
    rand = Math.random().toString(36).slice(2)

    $.get window.location.pathname + '/time_remaining?' + rand, (data) ->
      $('.time_remaining').text(data.seconds + 's')
      $('.hidden_offer').show();
      window.deal_length = data.deal_length;

  updateTimer = ->
    seconds = parseInt $('.time_remaining').text(), 10
    seconds -= 1

    if(seconds <= 0) 
      window.location = '/'

    $('.time_remaining').text(seconds + 's')
    percentage = 100 - ((seconds / window.deal_length) * 100)
    $('#elapsed_bar').animate({height: percentage + '%'})

    # TODO: SOMETING IN THE LINES OF THE BLEOW MALARKI

  window.setInterval updateTimer, 1000