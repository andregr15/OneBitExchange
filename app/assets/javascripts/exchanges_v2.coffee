exchange = ->
  $.ajax '/exchanges_v2/convert',
    type: 'GET'
    dataType: 'json'
    data: {
            source_currency: $("#source_currency_v2").val(),
            target_currency: $("#target_currency_v2").val(),
            amount: $("#amount_v2").val()
          }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $('#result_v2').val(data.value)
  return false

$(document).ready ->
  $('form').submit ->
    if $('form').attr('action') == '/exchanges_v2/convert'
      exchange()
    return false
  
  $('select').formSelect()
  
  $('#btn_change_currencys_v2').click ->
    source_currency = $('#source_currency_v2').val()
    target_currency = $('#target_currency_v2').val()
    $('#source_currency_v2').val(target_currency)
    $('#target_currency_v2').val(source_currency)
    $('select').formSelect()
    
    if($('#amount_v2').val() > 0)
      exchange()
    return false

  $('#amount_v2').keyup ->
    setTimeout (->
      exchange()
    ), 500
    return false

  $('#amount_v2').change ->
    setTimeout (->
      exchange()
    ), 500
    return false

  $('#source_currency_v2').change ->
      exchange()

  $('#target_currency_v2').change ->
      exchange()