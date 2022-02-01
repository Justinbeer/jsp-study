<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jquerystudy.ajax.*, java.sql.*, java.util.*" %>
<%@ page import="com.google.gson.*" %>    
<%	
		// 요청 데이터 reqData는 board, book, lotto 3가지 중 하나 임
		String reqData = request.getParameter("reqParam");

		// 클라이언트에 응답할 JSON 문자열 데이터를 저장하는 변수
		String resData = null;

		/* 현재 페이지로 들어오는 요청에서 "reqParam"이라는 요청 파라미터가
		 * 존재하지 않으면 아래에서 NullPointerException이 발생하게 되므로
		 * "reqParam"이라는 요청 파라미터가 없을 때 기본으로 "board" 값을 갖게 설정
		 **/		
		if(reqData == null) {
			reqData = "board";
		}			
				
		if(reqData.equals("board")) { // 게시 글 리스트 요청이라면
			
			ArrayList<Board> boardList = new ArrayList<Board>();
			
			// 년도 입력시 현재 년도에서 -1900 
			Board board = new Board(1, "공지 사항 입니다.", "관리자", "게시 글 1의 내용", 
					new Timestamp(2020 - 1900, 1, 23, 15, 16, 30, 0),  30, "1234");
			boardList.add(board);
			
			board = new Board(2, "공지 사항 잘 읽었습니다.", "회원1", "게시 글 2의 내용", 
					new Timestamp(2020 - 1900, 1, 25, 13, 20, 19, 0),  9, "3421");
			boardList.add(board);
			
			board = new Board(3, "관심을 가져 주셔서 감사합니다.", "관리자", "게시 글 3의 내용", 
					new Timestamp(2020 - 1900, 1, 25, 18, 30, 36, 0),  11, "2365");
			boardList.add(board);
			
			board = new Board(4, "저두 궁금했었는데", "회원2", "게시 글 4의 내용", 
					new Timestamp(2020 - 1900, 2, 1, 23, 25, 18, 0),  13, "5213");
			boardList.add(board);
			
			board = new Board(5, "정말 정말 감사합니다.", "회원3", "게시 글 5의 내용", 
					new Timestamp(2020 - 1900, 2, 1, 23, 55, 11, 0),  12, "5231");
			boardList.add(board);
			
			board = new Board(6, "네 잘 알겠습니다.", "회원4", "게시 글 6의 내용", 
					new Timestamp(2020 - 1900, 2, 2, 15, 43, 9, 0),  21, "1234");
			boardList.add(board);
			
			board = new Board(7, "'내용을 줄 바꿈하지 않아서...", "회원6", "게시 글 7의 내용", 
					new Timestamp(2020 - 1900, 2, 2, 19, 11, 23, 0),  10, "3421");
			boardList.add(board);
			
			board = new Board(8, "당연하죠~", "회원7", "게시 글 8의 내용", 
					new Timestamp(2020 - 1900, 2, 2, 21, 19, 56, 0),  7, "2365");
			boardList.add(board);
			
			board = new Board(9, "저두 궁금했었는데", "회원8", "게시 글 9의 내용", 
					new Timestamp(2020 - 1900, 2, 2, 23, 39, 55, 0),  20, "5213");
			boardList.add(board);
			
			board = new Board(10, "궁금한게 해결 되었네요", "회원9", "게시 글 10의 내용", 
					new Timestamp(2020 - 1900, 2, 3, 9, 31, 49, 0),  35, "5231");
			boardList.add(board);
						
			// gson 라이브러리를 이용해 ArrayList를 JSON 형식으로 직렬화 한다.
			resData = new Gson().toJson(boardList);
			
			
		} else if(reqData.equals("book")) { // 도서 리스트 요청이라면
			
			ArrayList<Book> bookList = new ArrayList<Book>();
			
			// 년도 입력시 현재 년도에서 -1900
			Book book = new Book("9791163031291", "Do it! HTML5+CSS3 웹 표준의 정석", 
					25000, "고경희", new Timestamp(2019 - 1900, 11, 01, 0, 0, 0, 0),
					"이지스퍼블리싱", "최신 HTML5, CSS3 표준안 반영은 물론...");
			bookList.add(book);
			
			book = new Book("9788968481611", "모던 웹 디자인을 위한 HTML5+CSS3 입문", 
					27000, "윤인성", new Timestamp(2015 - 1900, 0, 21, 0, 0, 0, 0),
					" 한빛미디어", "HTML5 표준안과 최신 웹 브라우저 환경에 맞춘...");
			bookList.add(book);
			
			book = new Book("9791158390129", "자바스크립트+jQuery 완전정복 스터디 1 기초편", 
					27000, "김춘경", new Timestamp(2015 - 1900,9, 16, 0, 0, 0, 0),
					"위키북스", " 처음 웹프로그래밍 입문자라면 반드시 알아야 할...");
			bookList.add(book);
			
			book = new Book("9788968483554", "모던웹을위한 JavaScript + jQuery입문", 
					32000, "윤인성", new Timestamp(2017 - 1900, 4, 1, 0, 0, 0, 0),
					"한빛미디어", "클라이언트 자바스크립트와 관련된 거의 모든 내용을...");
			bookList.add(book);
			
			book = new Book("9791163030034", "Do it! 자바스크립트 + 제이쿼리 입문", 
					20000, "정인용", new Timestamp(2018 - 1900, 3, 6, 0, 0, 0, 0),
					"이지스퍼블리싱", "이제는 웹 개발자뿐만 아니라 웹 퍼블리셔와 디자이너에게도...");
			bookList.add(book);
			
			book = new Book("9791189184018", "코드로 배우는 스프링 웹 프로젝트", 
					38000, "구멍가게 코딩단", new Timestamp(2018 - 1900, 8, 13, 0, 0, 0, 0),
					"남가람북스", "스프링으로 웹 프로젝트에서 사용되는 게시물 관리를 만들어...");
			bookList.add(book);
			
			book = new Book("9788980782710", "웹 개발자를 위한 Spring 4.0 프로그래밍", 
					32000, "최범균", new Timestamp(2014 - 1900, 6, 30, 0, 0, 0, 0),
					"가메출판사", "스프링 DI, AOP, 스프링 MVC, 스프링 웹소켓...");
			bookList.add(book);
			
			book = new Book("9788997924103", "백견불여일타 JSP&Servlet", 
					27000, "성윤정", new Timestamp(2014 - 1900, 6, 28, 0, 0, 0, 0),
					"로드북", "개발 방식은 모델과 뷰를 분리해서 개발하는...");
			bookList.add(book);
			
			book = new Book("9788968480317", "모던 웹을 위한 HTML5 웹소켓 프로그래밍", 
					20000, "피터 모스코비츠", new Timestamp(2013 - 1900, 6, 1, 0, 0, 0, 0),
					"한빛미디어", "프로토콜 통신과 웹소켓을 연결하는 실무 코드를...");
			bookList.add(book);
			
			book = new Book("9788998139643", "시작하세요! 스프링 4 프로그래밍", 
					30000, "애쉬쉬 사린", new Timestamp(2014 - 1900, 7, 20, 0, 0, 0, 0),
					"이지스퍼블리싱", "이제 자바 엔터프라이즈 개발의 핵심 프레임워크로...");
			bookList.add(book);
			
			// gson 라이브러리를 이용해 ArrayList를 JSON 형식으로 직렬화 한다.
			resData = new Gson().toJson(bookList);
			
			
		} else if(reqData.equals("lotto")) { // 로또 당첨번호 리스트 요청이라면
						
			ArrayList<LottoNum> lottoList = new ArrayList<LottoNum>();
						
			LottoNum lotto = new LottoNum("961회", 11, 20, 29, 31, 33, 42, 43);
			lottoList.add(lotto);
			
			lotto = new LottoNum("962회", 1, 18, 28, 31, 34, 43, 40);
			lottoList.add(lotto);
			
			lotto = new LottoNum("963회", 6, 12, 19, 23, 34, 42, 35);
			lottoList.add(lotto);
			
			lotto = new LottoNum("964회", 6, 21, 36, 38, 39, 43, 30);
			lottoList.add(lotto);
			
			lotto = new LottoNum("965회", 2, 13, 25, 28, 29, 36, 34);
			lottoList.add(lotto);
		
			lotto = new LottoNum("966회", 1, 21, 25, 29, 34, 37, 36);
			lottoList.add(lotto);
			
			lotto = new LottoNum("967회", 1, 6, 13, 37, 38, 40, 9);
			lottoList.add(lotto);
			
			lotto = new LottoNum("968회", 2, 5, 12, 14, 24, 39, 33);
			lottoList.add(lotto);
			
			lotto = new LottoNum("969회", 3, 9, 10, 29, 40, 45, 7);
			lottoList.add(lotto);
			
			lotto = new LottoNum("970회", 9, 11, 16, 21, 28, 36, 5);
			lottoList.add(lotto);
			
			// gson 라이브러리를 이용해 ArrayList를 JSON 형식으로 직렬화 한다.
			resData = new Gson().toJson(lottoList);
		}  
		
		// 서버의 콘솔로 직렬화된 데이터 출력 - 이클립스 Console 창에 출력 된다.
		System.out.println(resData);
		
		/* JSP 페이지에서 사용하는 out 객체는 응답 객체에 연결된 출력 스트림으로
		 * 현재 페이지로 요청을 보낸 클라이언트에게 응답 데이터를 보내기 위한 출력
		 * 스트림 이다. 이 출력 스트림을 이용해 위에서 JSON 형식의 문자열로 직렬화한
		 * 데이터를 아래와 같이 출력하면 현재 페이지로 요청을 보낸 클라이언트에게
		 * JSON 데이터가 응답으로 전달된다.
		 **/
		out.println(resData);
%>    
