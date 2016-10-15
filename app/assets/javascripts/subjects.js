$(document).ready(function(){
  $("#buscador").keyup(function(){
    if ( $(this).val().trim() == "" ) {

    }else{
      $.ajax({
        url:  "/subjects/solve",
        type: "GET",
        data: { buscar: $(this).val().trim() },
        success: function(res){}
      });
    }

  });

});
