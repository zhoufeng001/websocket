<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Chat</title>
</head>
<body>

AAAAAAA

</body>

<script type="text/javascript">

var websocket = new WebSocket("ws://localhost:8080/websocket/ws/helloworld") ;

websocket.onopen = function(evt) { 
	alert("Connection open ..."); 
}; 

websocket.onmessage = function(evt) { 
	alert( "Received Message: " + evt.data); 
}; 

websocket.onclose = function(evt) { 
	alert("Connection closed."); 
};

websocket.send("Hello WebSockets!");

websocket.close();

</script>

</html>