$(document).ready(function(){

  $(".profile-modal-link").on('click', function(event){
  console.log(this);

  var request = $.ajax({
    method: 'GET',
    url: '/show_partial'
  });

  request.done(function(response){
    // $('.modal-body').empty;
    console.log(response);
    $('.modal-body').append(response);
    // and then pop the modal out, target the ID 
    })
  })


})