//= require rails-ujs
//= require_tree
//= require jquery
//= require bootstrap-datepicker

 $(document).ready(function(){
    $('.datepicker').datepicker({
      language: 'fr-FR',
      startDate: new Date()
    });
  });
