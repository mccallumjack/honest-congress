$(document).ready(function() {

  $('#get-started').on('click',function(event){
    event.preventDefault();

    var path = '/locations/new'

    var request = $.ajax({
                          url: path,
                          method: 'GET'
    });
    request.done(function(data){
      $(this).hide();
      $('#intro-info').hide();
      $('#new-data-bucket').append(data);
      $('select').material_select();
    });

  });

  $('#new-data-bucket').on('click','#show-politicians',function(event){
    event.preventDefault();
    var state = $('#state-select').val()
    var data = {state: state};

    var request = $.ajax({
                          url: '/politicians',
                          method: 'POST',
                          data: data
    })
    var response = request.done(function(data){
      console.log(data);
    })
  })

});


//View

