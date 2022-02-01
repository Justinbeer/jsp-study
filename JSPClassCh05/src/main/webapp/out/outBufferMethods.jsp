<%-- out 내장변수를 이용해 현재 버퍼 사이즈와 남아 있는 버퍼 사이즈 출력하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="4kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* JSP 페이지가 자바 소스로 변경된 파일을 열어 _jspService() 메소드를
	 * 살펴보면 JspWriter 타입으로 선언된 out 변수를 볼 수 있을 것이다.
	 * out은 출력 메소드를 사용해 브라우저로 출력을 전담하는 내장 객체인 것이다.
	 *
	 * page 지시자의 autoFlush 속성은 버퍼가 다 찼을 때 데이터를 자동으로 
	 * 웹 브라우저에 전송할지 여부를 지정하는 속성으로 기본 값은 true 이다.
	 * out 내장객체의 isAutoFlush() 메소드로 autoFlush 여부를 확인 할 수 있다. 
	 **/
	out.println("현재 JSP 페이지의 autoFlush 속성 : " + out.isAutoFlush() + "<br/>");

	/*	page 지사자에 buffer 속성을 사용해 JSP 페이지의 버퍼 크기를 지정할 수
	 * 있으며 명시적으로 지정하지 않으면 기본 값은 8KB 이다.
	 * 이 JSP 페이지의 버퍼 사이즈가 4KB로 설정되에 있어 데이터가 4KB가 넘으면
	 * 웹 브라우저로 flush(출력) 되고 버퍼를 비운 후 다시 데이터를 버퍼에 저장한다.
	 **/
	for(int i = 0; i < 100; i++) {
		out.print(i + " : ");
		
		// 현재 JSP에 설정된 버퍼의 크기와 남아 있는 버퍼의 크기를 출력
		out.print(out.getBufferSize() + "-");
		out.print(out.getRemaining() + "<br/> ");		
	}	

	for(int i = 0; i < 100; i++) {
%>
		<%= i + " : " + out.getBufferSize() + "-" 
			+ out.getRemaining() + "<br/>" %>	
<%
	}
%>
</body>
</html>