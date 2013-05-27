<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Expires" CONTENT="-1">
<script>
<% get_changed_status(); %>
<% wanlink(); %>

var flag = '<% get_parameter("flag"); %>';

var ifWANConnect = "<% detect_if_wan(); %>";
var wan_status_log = "<% get_wan_status_log(); %>";
var detect_wan_conn = "<% nvram_get_x("", "link_internet"); %>";
var wan_ipaddr_t = '<% nvram_get_x("", "wan_ipaddr_t"); %>';

function initial(){
	if(flag == "initial")
		parent.initial_change_status(
				 ifWANConnect,
				 wanlink_statusstr(),
				 wan_status_log,
				 detect_wan_conn,
				 wan_ipaddr_t
				 );
	else
		parent.set_changed_status(
				 ifWANConnect,
				 wanlink_statusstr(),
				 wan_status_log,
				 detect_wan_conn,
				 wan_ipaddr_t
				);
	
	parent.check_changed_status(flag);
}
</script>
</head>

<body onload="initial();">
</body>
</html>
