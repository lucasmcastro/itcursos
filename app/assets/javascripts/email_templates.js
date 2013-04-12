$('input,textarea').addClass('input-xlarge');

function build_topics(topics) {
  var result = "";
  topics = topics.split(",");
  jQuery.each(topics, function(index,value) {
    result+= "• "+value+"<br>";
  });
  return result;
}

$('#title_input').bind('blur', function() {
  var input_value = $("#title_input").val();
  input_value = input_value.split(',');
  input_value.push('') //Subtitle was not filled
  $('#title_1').text(function (oldText) {
    return input_value[0];
  });
  $('#title_2').text(function (oldText) {
    return input_value[1];
  });    
});

$('#topics_input').bind('blur', function() {
  var input_value = $("#topics_input").val();
  $('#topics').html(function (oldText) {
    return build_topics(input_value);
  });
});

$('#price_input').bind('blur', function() {
  var input_value = $("#price_input").val();
  input_value = input_value.split(',');
  $('#price_1').text(function (oldText) {
    return input_value[0];
  });
  $('#price_2').text(function (oldText) {
    return input_value[1];
  });
});

$('#highlight_input').bind('blur', function() {
  var input_value = $("#highlight_input").val();
  input_value = input_value.replace(/\n\r?/g, '<br />');
  $('#highlight').html(function (oldText) {
    return input_value;
  });
});

$('#content_input').bind('blur', function() {
  var input_value = $("#content_input").val();
  input_value = input_value.replace(/\n\r?/g, '<br />');
  $('#content').html(function (oldText) {
    return input_value;
  });
});

$('input,textarea').trigger('blur');

