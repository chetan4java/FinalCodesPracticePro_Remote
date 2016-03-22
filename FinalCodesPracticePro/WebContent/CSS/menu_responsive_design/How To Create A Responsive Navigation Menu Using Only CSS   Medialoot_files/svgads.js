//Load GSAP Animation Plugin
document.write('<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>');

/*
* BEGIN ADVERT CONTENT
*/

var robotCSS = [
'#robot-ad{',
'	position: fixed;',
'	opacity: 0;',
'	height:80px;',
'	top:350px;',
'	left:-10px;',
'	display:block;',
'	z-index:1000;',
'	width: 220px;',
'}',
'#robot-arm{',
'	position:absolute;',
'	width:100%;',
'	height:100%;',
'	z-index:1001;',
'	display:block;',
'}',
'.open #ad-close{opacity:.3;transition: opacity .5s ease; transition-delay:.5s;}',
'#ad-close{',
'	position:absolute;',
'	width:14px;',
'	height:14px;',
'	top:-100px;',
'	right:80px;',
'	cursor:pointer;',
'	opacity:0;',
'}',
'#envelope{',
'	cursor:pointer;',
'}',
'#robot-ad.close{left:-230px; transition:all 1s ease;}',
'#robot-ad a{width:50px;height:45px;top:20px;transition:all .3s linear;transform-origin:left center;}',
'#robot-ad.open a{transform-origin:left center;',
'	position:absolute;',
'	width:156px;',
'	height:272px;',
'	background-color:black;',
'	background: url("//medialoot.com/images/side-ad.png") center center;',
'	background-size:cover;',
'	top:-85px;',
'	left:145px;',
'	border-radius:15px;',
'}',
'.close #timer{display:none;}',
'.open #timer{opacity:1; transition: opacity .5s linear; transition-delay:.4s;}',
'#timer{z-index:1020;opacity:0;',
'	position:absolute;',
'	color:white;',
'	font-size:20px;',
'	bottom:-60px;',
'	left:146px;',
'	width:150px;',
'	text-align:center;',
'}',
'#timer span{',
'	display:inline-block;',
'	width:40px;',
'	text-align:center;',
'}',
].join('');

var robotHTML = [
'<svg id="robot-arm" xmlns="http://www.w3.org/2000/svg" viewBox="0 52.7 216 79.3"><g id="hand"><path fill="#171819" d="M168.8 111.8c-11.6-1.7-23.4-1.6-35 .1-.7.1-1.1-.4-1.1-1v-7.8c0-.7.5-1.2 1.1-1.3 11.6-1.7 23.4-1.8 35-.1.7.1 1.1.7 1.1 1.3v7.8c0 .6-.5 1-1.1 1z"/><path fill="#4D4D4D" d="M115.9 114.6c-3 0-5.3-2.4-5.3-5.3 0-3 2.4-5.3 5.3-5.3h9.1v-.5c0-1.7-1.4-3.1-3.1-3.1h-19c-1.7 0-3.1 1.4-3.1 3.1v12.1c0 1.7 1.4 3.1 3.1 3.1h19c1.7 0 3.1-1.4 3.1-3.1v-.9h-9.1z"/><path fill="#202224" d="M124.2 114.7h-6.6c-.7 0-1.2-.5-1.2-1.2v-8.7c0-.7.5-1.2 1.2-1.2h6.6c1.3 0 2.4 1.1 2.4 2.4v6.4c0 1.3-1.1 2.3-2.4 2.3z"/><circle fill="#4D4D4D" cx="121.5" cy="109.2" r="3.3"/><path fill="#4D4D4D" d="M121.3 107.3h6.8v4h-6.8v-4z"/><path fill="#333" d="M127.4 105.2h1v8h-1v-8z"/><circle fill="#D3D3D3" cx="121.5" cy="109.2" r="2.6"/><path fill="#4D4D4D" d="M133.8 119.8h-4.5c-.7 0-1.2-.5-1.2-1.2v-18.4c0-.7.5-1.2 1.2-1.2h4.5c.7 0 1.2.5 1.2 1.2v18.4c0 .6-.5 1.2-1.2 1.2z"/><path fill="#333" d="M131.6 116.3c-1.1 0-1.8-.8-1.8-1.8v-10.3c0-1 .8-1.8 1.8-1.8h.1c1 0 1.8.8 1.8 1.8v10.3c-.1 1.1-.9 1.8-1.9 1.8z"/><g id="envelope"><path fill="#D3CCBA" d="M212.4 130.7H145c-1.3 0-2.4-1.1-2.4-2.4V82c0-1.3 1.1-2.4 2.4-2.4h67.3c1.3 0 2.4 1.1 2.4 2.4v46.3c.1 1.3-1 2.4-2.3 2.4z"/><path fill="#C6BFAB" d="M178.7 100.7L143.4 130c.4.4 1 .7 1.7.7h67.3c.7 0 1.2-.3 1.7-.7-.1 0-35.4-29.3-35.4-29.3z"/><g id="envelope-flap"><path opacity=".1" d="M179.3 113.5l34.4-32.7c-.8-.8-1.8-1.2-2.9-1.2h-63.1c-1.1 0-2.1.5-2.9 1.2l34.5 32.7z"/><path fill="#CCC7B2" d="M145.6 79.6c-.7 0-1.2.2-1.6.7l35.3 29.4 35.3-29.4c-.4-.4-1-.7-1.6-.7h-67.4z"/></g></g><g id="pincer"><path opacity=".1" d="M166.9 107.8c-.1-.7-.7-1-1.2-.8-7.5 1.9-15.3 3.1-23 3.6v10.1c8.1-.4 16.3-1.6 24.2-3.6.6-.2 1.1-.8 1-1.4-.4-3.3-.6-4.8-1-7.9z"/><path fill="#303233" d="M167 114.1c-11.6 1.7-23.4 1.6-35-.1-.7-.1-1.1-.7-1.1-1.3v-7.8c0-.7.5-1.1 1.1-1 11.6 1.7 23.4 1.8 35 .1.7-.1 1.1.4 1.1 1v7.8c0 .7-.4 1.3-1.1 1.3z"/><path fill="#202224" d="M167 115.3c-11.6 1.7-23.4 1.6-35-.1-.7-.1-1.1-.7-1.1-1.3V105c12.3 2 24.9 2 37.2.1v8.9c0 .7-.4 1.3-1.1 1.3z"/></g></g><g id="link-5"><path fill="#777" d="M112.5 126.1H75.7c3.4-11.3 3.4-21.6 0-32.9h36.8c3.4 11.3 3.4 21.7 0 32.9z"/><path opacity=".05" d="M77.3 119.5c-.4 2.2-1 4.3-1.7 6.6h36.8c.7-2.2 1.2-4.4 1.7-6.6H77.3z"/></g><g id="link-4"><path fill="#939393" d="M76.3 130.1c-8.5-.8-17-1.7-25.5-2.6 6.4-14.3 8-27.8 5.3-43 8.5.8 17 1.7 25.5 2.6 2.7 15.2 1 28.7-5.3 43z"/><path opacity=".05" d="M53.9 119.5c-.9 2.7-1.9 5.3-3.1 8 8.5.8 17 1.7 25.5 2.6 1.2-2.7 2.2-5.3 3.1-8 0-.1-25.5-2.6-25.5-2.6z"/></g><g id="link-3"><path fill="#9E9E9E" d="M52.6 129.8l-27.4-6.9c10.4-14.4 15.4-28.9 16-45.8L68.7 84c-.6 16.9-5.7 31.4-16.1 45.8z"/><path opacity=".05" d="M30.1 115.4c-1.5 2.5-3.1 5-4.9 7.5l27.4 6.9c1.8-2.5 3.4-5 4.9-7.5l-27.4-6.9z"/></g><g id="link-2"><path fill="#B2B2B2" d="M27 125.5c-9.7-4.2-19.5-8.4-29.3-12.7 13.8-14.3 21.7-29.6 25.1-48.3 9.7 4.2 19.5 8.4 29.3 12.7-3.4 18.8-11.3 34-25.1 48.3z"/><path opacity=".05" d="M4 105.8c-2 2.4-4 4.8-6.3 7.1 9.7 4.2 19.5 8.4 29.3 12.7 2.3-2.3 4.3-4.7 6.3-7.1L4 105.8z"/></g><g id="link-1"><path fill="#C6C6C6" d="M14.8 123.9c-13.2-.7-26.4-1.2-39.7-1.9 9.7-22.7 12.2-43.9 7.9-67.3 13.2.7 26.4 1.2 39.7 1.9 4.4 23.5 1.9 44.7-7.9 67.3z"/><path opacity=".05" d="M-20.6 109.3c-1.2 3.6-2.6 7.3-4.2 11 13.2.7 26.4 1.2 39.7 1.9 1.6-3.7 3-7.4 4.2-11l-39.7-1.9z"/></g></svg>',
'<svg viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg" id="ad-close"><path fill="#4E4E50" d="M28 22.398L19.594 14 28 5.602 22.398 0 14 8.402 5.598 0 0 5.602 8.398 14 0 22.398 5.598 28 14 19.598 22.398 28"/></svg>',
'<div id="timer"></div>',
'<a href="http://medialoot.com/join/" ></a>',
].join('');


var sideCSS = [
'#side-ad{',
'position:fixed;',
'top:30%;',
'right:-200px;',
'width:195px;',
'height:340px;',
'background: url("//medialoot.com/images/side-ad.png") center center;',
'background-color:#000;',
'border-radius:0px;',
'cursor: pointer;',
'border-radius:13px;',
'transition:border-radius .5s ease;',
'	z-index:1000  ;',
'}',
'#side-ad:hover{',
'	border-radius:30px;',
'}',
'#side-ad #ad-close{',
'	top:-13px;',
'	right:-16px;',
'	width:14px;',
'	height:14px;',
'	opacity:.7;',
'	position:absolute;',
'	cursor:pointer;',
'}',
'#side-ad.close{',
'	right: -200px !important;',
'	transition: right ease .5s;',
'}',
'#timer{',
'	position:absolute;',
'	color:white;',
'	font-size:22px;',
'	bottom:60px;', 
'	left:22px;',
'	text-align:center;',
'}',
'#timer span{',
'	display:inline-block;',
'	width:49px;',
'	text-align:center;',
'}',
'#side-ad a{',
'	width:100%;',
'	height:100%;',
'	display:block;',
'	border-radius:15px;',
'	position:absolute;',
'	z-index:1500;',
'}',
].join('');

var sideHTML = [
'<svg viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg" id="ad-close"><path fill="#4E4E50" d="M28 22.398L19.594 14 28 5.602 22.398 0 14 8.402 5.598 0 0 5.602 8.398 14 0 22.398 5.598 28 14 19.598 22.398 28"/></svg>',
'<a href="http://medialoot.com/join/" ></a>',
'<div id="timer"></div>',
].join('');

var topCSS = [
'#top-ad{',
'	width:100%;',
'	height:60px;',
'	background-color:black;',
'	background: url("//medialoot.com/images/top-ad.png") center center;',
'	position:fixed;',
'	top:-60px;',
'	left:0px;',
'	z-index:1020;',
'}',
'#top-ad #ad-close{',
'	top:22px;',
'	right:20px;',
'	color:white;',
'	opacity:.6;',
'	width:18px;',
'	height:18px;',
'	position:absolute;',
'	cursor:pointer;',
'	z-index:2000;',
'}',
'#timer{',
'	position:absolute;',
'	color:white;',
'	font-size:22px;',
'	top:16px;',
'	height:22px;',
'	left:0;',
'	right:0;',
'	margin-right:auto;',
'	margin-left:auto;',
'	width:1140px;',
'	text-align:right;',
'}',
'#timer span{',
'	display:inline-block;',
'	width:48.5px;',
'	text-align:center;',
'}',
'#timer span:last-of-type{',
'	margin-right:193px;',
'}',
'#top-ad a{',
'	width:100%; height:100%; position:absolute;z-index:1500;',
'}',
].join('');

var topHTML = [
'<a href="http://medialoot.com/join/" ></a>',
'<svg viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg" id="ad-close"><path fill="currentColor" d="M28 22.398L19.594 14 28 5.602 22.398 0 14 8.402 5.598 0 0 5.602 8.398 14 0 22.398 5.598 28 14 19.598 22.398 28"/></svg>',
'<div id="timer"></div>',

].join('');

var circleCSS = [
'#circle-ad{',
'	position:fixed;',
'	bottom:30%;',
'	right:-5%;',
'	width:35px;',
'	height:35px;',
'	background-color:rgba(0,0,0,.8);',
'	overflow:hidden;',
'	border-radius:50%;',
'	 -webkit-transform-origin: 50% 50%;',
'	 transform-origin: 50% 50%;',
'}',
'#circle-ad.open{',
'	width:275px;',
'	height:275px;',
'	transition:all .5s ease;',
'	background: url("//medialoot.com/images/square-ad.png") center center;',
'	box-shadow: 1px 2px 10px 2px rgba(0,0,0,.3);',
'	-webkit-transform-origin: 50% 50%;',
'	transform-origin: 50% 50%;',
'	right:1% !important;',
'	overflow:visible;',
'	z-index:1000  ;',
'}',
'#circle-ad.close{',
'	transition:all .5s ease;',
'}',
'#circle-ad a{',
'    width: 100%;', 
'    height: 100%;',
'    display: block;',
'    border-radius: 50%;',
'}',
'#ad-close{',
'opacity:0;',
'width:18px;',
'height:18px;',
'position:absolute;',
'top:10px;',
'right:10px;',
'cursor:pointer;',
'}',
'.close #timer{display:none; opacity 0;}',
'.open #timer{opacity:1; transition:opacity .5s linear; transition-delay:.4s;}',
'#timer{opacity:0;',
'	position:absolute;',
'	color:white;',
'	font-size:22px;',
'	bottom:46px;',
'	left:64px;',
'	text-align:center;',
'}',
'#timer span{',
'	display:inline-block;',
'	width:48px;',
'	text-align:center;',
'}',
'.open #ad-close{display:block;opacity:.7; transition:opacity 1s ease; transition-delay:.7s;}',
].join('');

var circleHTML = [
'<svg viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg" id="ad-close"><path fill="#4E4E50" d="M28 22.398L19.594 14 28 5.602 22.398 0 14 8.402 5.598 0 0 5.602 8.398 14 0 22.398 5.598 28 14 19.598 22.398 28"/></svg>',
'<div id="timer"></div>',
'<a href="http://medialoot.com/join/" id="circle-link" ></a>'
].join('');

/*
* END ADVERT CONTENT
*/


// Advert Animations //
function circleAd(){
	document.getElementById("circle-ad").onmouseover = function () {
		this.className = "open";
	 }
	
	TweenLite.to("#circle-ad", 1.3, {ease: Bounce.easeOut, bottom:"1%" });
	TweenLite.to("#circle-ad", 1.5, {right:"7%" });
}

function sideAd(){
	TweenLite.to("#side-ad", 1.5, {ease: Elastic.easeOut, right:"25px",});
}

function topAd(){
	TweenLite.to("#top-ad", .3, {ease: Linear.easeOut, top:"0px",});
	TweenLite.to("body", .3, {ease: Linear.easeOut, 'padding-top':"60px",});
	TweenLite.to("#header", .3, {ease: Linear.easeOut, 'top':"60px",});
	
	document.getElementById("ad-close").onclick = function () {
		TweenLite.to("#top-ad", .5, {ease: Power2.easeOut, top:"-60px",});
		TweenLite.to("body", .5, {ease: Power2.easeOut, 'padding-top':"0px",});
		TweenLite.to("#header", .3, {ease: Linear.easeOut, 'top':"0px",});
		setSvgCookie("svgad", "closed", 30);
	}
}

function robotAd(){
	
	document.getElementById("envelope").onmouseover = function () {
		document.getElementById("robot-ad").className = "open";
		TweenLite.to("#envelope", .8, {autoAlpha:"0"});
		TweenLite.to("#envelope", .8, {autoAlpha:"0"});
	 }
	
	TweenLite.to("#robot-ad", .1, {ease: Linear.easeOut, opacity:1,});
	
	TweenLite.from("#envelope", .8, {opacity:"0", delay:.25});
	TweenLite.from("#hand", 1.3, {transform:"translate(-60px,-10px)",});
	TweenLite.from("#link-5", 1.2, {transform:"translate(-35px,-10px)", delay:.1});
	TweenLite.from("#link-4", 1.1, {transform:"translate(-25px,-10px)", delay:.2});
	TweenLite.from("#link-3", .9, {transform:"translate(-20px, -10px)", delay:.3});
	TweenLite.from("#link-2", .8, {transform:"translate(-5px, -5px)", delay:.4});
}

/*
* BEGIN GENERIC CONTROL FUNCTIONS
*/

// HTML and CSS Control
function addCSS(css){
    var head = document.getElementsByTagName('head')[0];
    var s = document.createElement('style');
    s.setAttribute('type', 'text/css');
    if (s.styleSheet) {   // IE
        s.styleSheet.cssText = css;
    } else {                // the world
        s.appendChild(document.createTextNode(css));
    }
    head.appendChild(s);
 }
 
function addHTML(html,id){
    var body = document.getElementsByTagName('body')[0];
    var s = document.createElement('div');
    s.setAttribute('id', id);
    s.innerHTML = html;
    body.appendChild(s);
 }
 
 // Countdown Timer //
 function CountDownTimer(dt, id){
	var end = new Date(dt);

	var _second = 1000;
	var _minute = _second * 60;
	var _hour = _minute * 60;
	var _day = _hour * 24;
	var timer;

	function showRemaining() {
		var now = new Date();
		var distance = end - now;
		if (distance < 0) {

			clearInterval(timer);
			document.getElementById(id).innerHTML = 'EXPIRED!';

			return;
		}
		var days = Math.floor(distance / _day);
		var hours = Math.floor((distance % _day) / _hour);
		var minutes = Math.floor((distance % _hour) / _minute);
		var seconds = Math.floor((distance % _minute) / _second);

		document.getElementById(id).innerHTML = '<span>' + days + '</span>';
		document.getElementById(id).innerHTML += '<span>' + hours + '</span>';
		//document.getElementById(id).innerHTML += '<span>' + minutes + '</span>';
		document.getElementById(id).innerHTML += '<span>' + seconds + '</span>';
	}

	timer = setInterval(showRemaining, 1000);
}

// Cookie Control and Ad Display // 
function setSvgCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires + ";domain=.medialoot.com;path=/";
	console.log("cookie set");
}

function getSvgCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}

var adClosed = function(){
	var closed = getSvgCookie("svgad");
	if (closed == "closed"){
		return true;
	} else {
		return false;
	}	
}

var smallScreen = function() {
	var screenWidth = window.innerWidth;
	if (screenWidth < 1400){
		return true;
	} else {
		return false;
	}
}

/*
* END GENERIC CONTROL FUNCTIONS
*/

// Master Ad Function //
function svgad(func,html,css,id){
	addHTML(html, id);
	addCSS(css);
	setTimeout(func, 1000);
	setTimeout(CountDownTimer("9/23/2015 11:59 PM", "timer"), 3000);
	
	document.getElementById("ad-close").onclick = function () {
		setSvgCookie("svgad", "closed", 30);
		document.getElementById(id).className = "close";
		
	}
}

// Execute Ads //
	console.log("adClosed: " + adClosed());
	console.log("smallScreen: " + smallScreen());
	
	if (!adClosed()) {
		if (!smallScreen()) {
			var chosenVariation = cxApi.chooseVariation();
			
			pageVariations = [
			function (){},
			function (){svgad(circleAd, circleHTML, circleCSS, "circle-ad")},
			function (){svgad(sideAd, sideHTML, sideCSS, "side-ad")},
			function (){svgad(topAd, topHTML, topCSS, "top-ad")},
			function (){svgad(robotAd, robotHTML, robotCSS, "robot-ad")}
			];
			
			document.addEventListener("DOMContentLoaded", function(event) {
				pageVariations[chosenVariation]();
				console.log("variation: " + chosenVariation);
			});
			
		} else {
			document.addEventListener("DOMContentLoaded", function(event) {
				svgad(topAd, topHTML, topCSS, "top-ad")
			});
		}
	}
