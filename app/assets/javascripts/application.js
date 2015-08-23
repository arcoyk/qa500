// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){  
     $(".question-block").click(function(){  
         window.location=$(this).find('.question_show').attr("href");  
         return false;
    });  
});

$(function(){
	$(".text-area").keyup(function(e){
		limit = $("#letter-left").attr('limit');
		$("#letter-left").text(limit - this.value.length);
	});
});

$(function(){
	$(".toggle-switch").click(function() {
		var anstype = $("#answer-input-anstype");
		if (anstype.val() == 'no') {
			$(".toggle-in").css("float", "left");
			$("#why-yes-or-no").removeClass("no-text");
			$("#why-yes-or-no").addClass("yes-text");
			$("#why-yes-or-no").text("YES?");
			anstype.val('yes');
		}else {
			$(".toggle-in").css("float", "right");
			$("#why-yes-or-no").removeClass("yes-text");
			$("#why-yes-or-no").addClass("no-text");
			$("#why-yes-or-no").text("NO?");
			anstype.val('no');
		}
	});
});

function toggle_switch(yesno) {
	var anstype = $("#answer-input-anstype");
	if (yesno == 'yes') {
		$(".toggle-in").css("float", "left");
		$("#why-yes-or-no").removeClass("no-text");
		$("#why-yes-or-no").addClass("yes-text");
		$("#why-yes-or-no").text("YES?");
		anstype.val('yes');
	} else {
		$(".toggle-in").css("float", "right");
		$("#why-yes-or-no").removeClass("yes-text");
		$("#why-yes-or-no").addClass("no-text");
		$("#why-yes-or-no").text("NO?");
		anstype.val('no');
	}
}

