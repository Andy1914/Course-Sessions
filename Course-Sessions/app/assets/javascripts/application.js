
$(function() {
	 $('.rating_star').click(function() {
       var star = $(this);
       var star = $(this).attr('data-stars');
       var question_id = $(this_.attr('data-question-id');

       for(i=1; i<=5; i++){
        if(i <= stars){
         $('#' + question_id + '' +i).addClass('on');
     } else {
     	$('#' + question_id + '_' + i).removeClass('on');
     }

        }

       }
	 });
});