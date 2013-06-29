$(document).ready(function() {

  // $('#create_event').on('click',function(e){
  // 	  e.preventDefault();
  //    $('form.event_form').slideDown();
  //  });

  $('#logout').on('click', function(e) {
    e.preventDefault();
    $.ajax({
      url: '/sessions',
      type: $(this).data("method")
    }).done(function(response) {
      // whatever after logout
      window.location = '/';
    });
  });

  // $('div.login').on('submit',function(e){
  //   e.preventDefault();
  //   $form = $(this)
  
  //   $.ajax({
  //     url: $form.attr('action'),
  //     type: "POST",
  //     data: $form.serialize()
  //   }).done(function(response){
  //     $('input[type=text]').val("");
  //   });
  // });

});
