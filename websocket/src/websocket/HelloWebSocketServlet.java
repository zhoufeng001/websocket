package websocket;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/ws/helloworld")
public class HelloWebSocketServlet {

	@OnOpen
	public void star(Session session){
		System.out.println("open...");
	}
	
	@OnClose
	public void close()	{
		System.out.println("close...");
	}
	
	@OnMessage
	public void incoming(String message){
		System.out.println("onmessage...");
	}
	
	@OnError
	public void onerror(Throwable t)throws Throwable {
		System.out.println("error...");
	}
	
	
}
