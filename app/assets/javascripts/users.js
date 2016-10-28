$(document).ready(function(){

  $(".profile-modal-link").on('click', function(event){
  
  var profileModalLink = $(this);

  var numberPattern = /\d+/g;

  var userId = profileModalLink.attr('id').match( numberPattern );

  var request = $.ajax({
    method: 'GET',
    url: '/users/' + userId
  });

  request.done(function(response){
    // $('.modal-body').empty;
    console.log(response);
    $('.ajax-response-container').empty();
    $('.ajax-response-container').append(response);
    // and then pop the modal out, target the ID 
    })
  })
})