<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" title="blue"
	href="blue.css">
<link rel="alternate stylesheet" type="text/css" title="pink"
	href="pink.css">
	

<title>Insert title here</title>
<script type="text/javascript">
	// *** TO BE CUSTOMISED ***

	var style_cookie_name = "style";
	var style_cookie_duration = 30;
	var style_domain = "thesitewizard.com";

	// *** END OF CUSTOMISABLE SECTION ***
	// You do not need to customise anything below this line

	function switch_style(css_title) {
		// You may use this script on your site free of charge provided
		// you do not remove this notice or the URL below. Script from
		// http://www.thesitewizard.com/javascripts/change-style-sheets.shtml
		var i, link_tag;
		for (i = 0, link_tag = document.getElementsByTagName("link"); i < link_tag.length; i++) {
			if ((link_tag[i].rel.indexOf("stylesheet") != -1)
					&& link_tag[i].title) {
				link_tag[i].disabled = true;
				if (link_tag[i].title == css_title) {
					link_tag[i].disabled = false;
				}
			}
			set_cookie(style_cookie_name, css_title, style_cookie_duration,
					style_domain);
		}
	}
	function set_style_from_cookie() {
		var css_title = get_cookie(style_cookie_name);
		if (css_title.length) {
			switch_style(css_title);
		}
	}
	function set_cookie(cookie_name, cookie_value, lifespan_in_days,
			valid_domain) {
		// http://www.thesitewizard.com/javascripts/cookies.shtml
		var domain_string = valid_domain ? ("; domain=" + valid_domain) : '';
		document.cookie = cookie_name + "=" + encodeURIComponent(cookie_value)
				+ "; max-age=" + 60 * 60 * 24 * lifespan_in_days + "; path=/"
				+ domain_string;
	}
	function get_cookie(cookie_name) {
		// http://www.thesitewizard.com/javascripts/cookies.shtml
		var cookie_string = document.cookie;
		if (cookie_string.length != 0) {
			var cookie_value = cookie_string.match('(^|;)[\s]*' + cookie_name
					+ '=([^;]*)');
			return decodeURIComponent(cookie_value[2]);
		}
		return '';
	}
</script>
</head>
<body>
	<form>
		<input type="submit" onclick="switch_style('blue');return false;"
			name="theme" value="Blue Theme" id="blue"> <input
			type="submit" onclick="switch_style('pink');return false;"
			name="theme" value="Pink Theme" id="pink">
	</form>
	
</body>
</html>