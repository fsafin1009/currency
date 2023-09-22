function loadCurrencies() {
  $.ajax({
    url: 'fetch.php',
    dataType: 'json',
    success: function(data) {
      var options = '';
      data.forEach(function(currency) {
        options += '<option value="' + currency.code + '">' + currency.name + '</option>';
      });
      $('#currency_from, #currency_to').html(options);
    },
  });
}

function convert() {
  var price = $('#price').val();
  var from = $('#currency_from').val();
  var to = $('#currency_to').val();

  $.ajax({
    url: 'convert.php',
    type: 'POST',
    dataType: 'json',
    data: {
      price: price,
      from: from,
      to: to,
    },
    success: function(data) {
      if (data.result) {
        $('#result').text(data.result);
      } else {
        $('#result').text("Error");
      }
    },
    error: function(xhr, status, error) {
        // Handle any errors that occur during the request
        console.log(xhr);
        console.error(error);
    }
  });
}

$(document).ready(function() {
  loadCurrencies();

  $('#convert').click(function(event) {
    event.preventDefault();
    convert();
  });
});