$(document).ready(function() {


  $('#guess').on('submit',function(e){
    e.preventDefault();
      $.ajax({
        url: $(this).attr('action'),
        type: $(this).attr('method'),
        data: $(this).serialize()
      }).done(function(response){
        $('#card').replaceWith(response);
      });
  });




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


});
