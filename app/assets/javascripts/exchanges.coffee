exchange = ->
  $.ajax '/convert',
    type: 'GET'
    dataType: 'json'
    data: {
            source_currency: $("#source_currency").val(),
            target_currency: $("#target_currency").val(),
            amount: $("#amount").val()
          }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $('#result').val(data.value)
  return false

$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/convert'
      exchange()
    return false
  
  $('select').formSelect()
  
  $('#btn_change_currencys').click ->
    source_currency = $('#source_currency').val()
    target_currency = $('#target_currency').val()
    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    $('select').formSelect()
    
    if($('#amount').val() > 0)
      exchange()
    return false

  $('#amount').keyup ->
    setTimeout (->
      exchange()
    ), 500
    return false

  $('#amount').change ->
    setTimeout (->
      exchange()
    ), 500
    return false

  $('#source_currency').change ->
      exchange()

  $('#target_currency').change ->
      exchange()