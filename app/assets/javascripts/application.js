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
//= require bootstrap
//= require underscore
//= require gmaps/google
//= require_tree .

window.onload = function(){
	$("#allPictures1").hide();
	$("#allPictures2").hide();
	$("#button1").on("click", function() {
		$("#allPictures1").show();
	});
	$("#button2").on("click", function() {
		$("#allPictures2").show();
	});
	$("#timeInOne").on("click", function() {
		var now = new Date();
		var date = now.toString();
		var currentDate = date.slice(0,15);
		var currentTime = date.slice(16,24) 
		$("#currentDate").html(currentDate);
		$("#timeIn").text(currentTime);
	});
	$("#timeOutOne").on("click", function() {
		var now = new Date();
		var date = now.toString();
		var currentTime = date.slice(16,24); 
		$("#timeOut").text(currentTime);	
	});
	$("#hideBtn").on("click", function() {
		console.log("#allPictures1");
		$("#allPictures1").toggle();
	});
	$("#hideBtn2").on("click", function() {
		$("#allPictures2").toggle();
	});	
	$("#jobComp").on("click", function() {
		var job = $("#vegasStrip").html();
		$("#vegasStrip").html("No current job");
		$("#vegasStrip2").html(job);
		$(".clearTime").html("");
	});

};



