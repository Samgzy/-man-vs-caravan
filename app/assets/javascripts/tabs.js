$(function(){
  $(".tab").on("click", function(e){
    $('.active').toggleClass('active');
    $(this).toggleClass('active');
    $('.tab-content').addClass('hidden');
    $($(this).data("target")).removeClass('hidden');
  });

  var hash = window.location.hash;
  $('.tabs a[data-target="'+hash+'"]').click()
});
