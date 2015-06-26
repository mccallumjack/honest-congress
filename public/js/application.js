$(document).ready(function() {

  $('#get-started').on('click',function(event){
    event.preventDefault();
    $(this).hide();

    var path = '/locations/new'

    var request = $.ajax({
                          url: path,
                          method: 'GET'
    });
    request.done(function(data){
      $('#intro-info').hide()
      $('#new-data-bucket').append(data)
    });

  });

});


//View

