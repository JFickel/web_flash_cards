$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

// User login
$(document).ready(function () {

	// $('#create_event').on('click',function(e){
 // 	  e.preventDefault();
 //    $('form.event_form').slideDown();
 //  });

  $('div.login').on('submit',function(e){
    e.preventDefault();
    $form = $(this)
  
    $.ajax({
      url: $form.attr('action'),
      type: "POST",
      data: $form.serialize()
    }).done(function(response){
      $('input[type=text]').val("");
    });

});
});
