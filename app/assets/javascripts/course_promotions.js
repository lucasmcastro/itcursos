$('#course_promotion_title').bind('blur', function() {
  var title = $(this).val();
  var url = $("#course_promotion_url").val();
  $('#promo-url').html(function (oldText) {
    return "<a id='promo-url' class='tile-link' href='"+url+"'>"+title+"</a>";
  });
});

$('#course_promotion_url').bind('blur', function() {
  var url = $(this).val();
  var title = $("#course_promotion_title").val();
  $('#promo-url').html(function (oldText) {
    return "<a id='promo-url' class='tile-link' href='"+url+"'>"+title+"</a>";
  });
});

$('#course_promotion_content').bind('blur', function() {
  var input_value = $(this).val();
  $('#promo-content').html(function (oldText) {
    return input_value;
  });
});

$('#course_promotion_price').bind('blur', function() {
  var input_value = $(this).val();
  $('#promo-footer').html(function (oldText) {
    return input_value;
  });
});

$("#course_promotion_color").bind('change', function(e) {
  $('.tile').attr('class', 'tile '+$(this).val());
});
