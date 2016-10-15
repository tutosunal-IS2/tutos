$(function(){
   $('button.botonInfo').click(function () {
     $.ajax({
        url: "/estudiantes/infoTutores",
        type: "GET",
        data: {id: $(this).attr('value')},
        success: function(result){}
      });
   });

 });
