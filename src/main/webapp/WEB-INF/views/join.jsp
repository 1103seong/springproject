<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instagram</title>
    <link rel="stylesheet" href="/css/join.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>

<body>
    <div class="container">
        <main class="loginMain">
           <!--회원가입섹션-->
            <section class="login">
                <article class="login__form__container">
                  
                   <!--회원가입 폼-->
                    <div class="login__form">
                        <!--로고-->
                        <h1><img src="/images/logo.png" alt=""></h1>
                         <!--로고end-->
                         
                         <!--회원가입 인풋-->
                        <form class="login__input"  action="/login" method="post">
                            <input type="text" name="email" id= "email" placeholder="아이디" maxlength="30"/>
                            <label id="idOk"></label><br>
                            
                            <input type="text" name="name" placeholder="이름" required="required" />				
                            <input type="email" name="email" placeholder="이메일" required="required" />
                            <input type="password" name="password" placeholder="패스워드" required="required" />
							    
                            <input type="tel" name="phone" placeholder="전화번호" required="required" />
                            <button id="btn_save" class="btn btn-primary" onclick="func_join()">가입하기</button>
                        </form>
                        <!--회원가입 인풋end-->
                    </div>
                    <!--회원가입 폼end-->
                    
                    <!--계정이 있으신가요?-->
                    <div class="login__register">
                        <span>계정이 있으신가요?</span>
                        <a href="/login">로그인</a>
                    </div>
                    <!--계정이 있으신가요?end-->
                    
                </article>
            </section>
        </main>
    </div>
    <script type="text/javascript" src="js/join.js"></script>
  <script>
	
	
	document.querySelector("#email").addEventListener('keyup',function(){
	const email = document.querySelector('#email').value
	const xhr = new XMLHttpRequest()		//비동기 통신 객체 생성
	xhr.open('GET','/api/idCheck/'+email)			//전송 보낼 준비 (url과 method)
	xhr.send()								//요청 전송. body와 함께 보낼 때가 있습니다.
	xhr.onload=function(){					//요청에 대한 응답받았을 때 이벤트 onload 핸들러 함수
		if(xhr.status === 200 || xhr.status ===201){
			//json문자열 -> 자바스크립트 객체
			const jsobj =  JSON.parse(xhr.response);
			console.log(jsobj)
			console.log(jsobj.count)
			
			isValidOk = jsobj.count			//서버에 전달한 count값으로 isValidOk 저장
			 if(isValidOk==0) {
                    	 document.querySelector('#idOk').innerHTML='사용 가능한 아이디 입니다.'
                    	 document.querySelector('#idOk').style.color='green'
                    	
                     } else {
                    	 document.querySelector('#idOk').innerHTML='사용 중인 아이디 입니다.'
                    	 document.querySelector('#idOk').style.color='red'
						 
                     }	 
		}else {  			console.error('오류',xhr.status) 		}
	}
})
</script>
  
</body>

</html>