jQuery(function() {
  return $('#subject_subject_name').autocomplete({
    //source: ['apple', 'apricot', 'avocado','calculo','algo','algoritmos','entonces'],
    source: $('#subject_subject_name').data('autocomplete-source'),
      select: function( event, ui ) {
          window.location.href = '/';
         return false;
      },
  })
});
