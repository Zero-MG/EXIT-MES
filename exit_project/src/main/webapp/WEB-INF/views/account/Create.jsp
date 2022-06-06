<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
body {
   position: relative; /* #wrapper에 투명도를 주면 컨텐츠도 같이 투명해지기 때문에.. */
}
body:after {
    content : "";
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    background-image: url('/resources/assets/img/background.jpg');
    background-size : cover;
    width: 100%;
    height: 100%;
    opacity : 0.5;
    z-index: -1;
}

.imgsize{
	height: 20px;
}

#message{
	vertical-align: text-top;
}

</style>

    <head>
    
 <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
 
    
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Create account</title>
        <link href="/resources/css/styles.css?create1" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-6">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
                                    <div class="card-body">
                                        <form id="form-sbm" action="/account/create" method="post">
                                            <div class="#">
                                                <div class="form-floating mb-3">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputID" name="userId" type="text" placeholder="아이디" minlength="6" maxlength="15" />
                                                        <label for="inputID">아이디</label>
                                                        <span id="IDmessage"></span> 
                                                    </div>
                                                </div>
                                             <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" name="userPass" type="password" placeholder="비밀번호"/>
                                                        <label for="inputPassword">비밀번호</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" name="checkUserPass" type="password" placeholder="비밀번호 재확인" />
                                                        <label for="inputPasswordConfirm">비밀번호 재확인</label> 
                                                        <span id="message"></span>                                             	
                                                    </div>
                                                </div>
                                            </div>     
                                            </div>
                                               	<div class="form-floating mb-3">
                                                	<input class="form-control" id="inputDepartment" name="userDepart" type="text" placeholder="부서" />
                                                	<label for="inputDepartment">부서</label>
                                            	</div>
                                            	<div class="form-floating mb-3">
                                                	<input class="form-control" id="inputName" name="userName" type="text" placeholder="이름" />
                                                	<label for="inputName">이름</label>
                                            	</div>
                                            
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" name="userEmail" type="email" placeholder="name@example.com" />
                                                <label for="inputEmail">Email address</label>
                                            </div>
                                            
                                       
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                	<button type="button" class="btn btn-primary btn-block" id="createjoin">계정생성</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login">계정이 있으신가요?</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; MIT K-Digital Class EXIT Team 2022</div>
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        

	<script>
	
	var aj_result; //ajax결과값 전역변수에 담기
	
	var id_len;
	$('#inputID').on('keyup', function () {
		console.log($('#inputID').val());
		console.log($('#inputID').val().length);
        id_len = $('#inputID').val().length;
	});
	
	$('#createjoin').on('click', function() {
		console.log(id_len);
		var pw1 = $('#inputPassword').val();
		var pw2 = $('#inputPasswordConfirm').val();
		if(pw1 != pw2){
			alert("비밀번호가 일치하지 않습니다.");
		}else if(aj_result != "success"){
			alert("사용하실 수 없는 아이디 입니다.");
		}else if(id_len < 6 || id_len > 15){
            alert("아이디 길이가 맞지 않습니다.");
        }else if(pw1 == pw2 && aj_result == "success" && id_len > 6 && id_len < 16){
			$('#form-sbm').submit();
			alert("회원가입이 완료 되었습니다.");
		}
	});
	
    
    $('#inputPassword, #inputPasswordConfirm').on('keyup', function () {
			if ($('#inputPassword').val() == $('#inputPasswordConfirm').val()) {
				$('#message').html('<img src="/resources/assets/img/check-green.PNG" class="imgsize">');
				$('#message').append(' 비밀번호가 같습니다').css('color', 'green');
			}else if($('#inputPassword').val() != $('#inputPasswordConfirm').val()) {
				$('#message').html('<img src="/resources/assets/img/check-red.PNG" class="imgsize">');
				$('#message').append(' 비밀번호가 다릅니다.').css('color', 'red');
			}else {
				$('#message').html('예기치 못한 오류').css('color', 'red');
			}
    });
    
    $('#inputID').on('keyup', function () {
    	$.ajax({
    		async: false,
			type: 'GET',
			url: "/account/idsearch",
			data: $("#form-sbm").serialize(),
			success : function(result){
				let lenID = $('#inputID').val().length;
				if(result == 0 && lenID > 5){
					$('#IDmessage').html('사용가능한 아이디 입니다.').css('color', 'green');
					aj_result = "success"; //결과값 전역변수에 담기
				}else if(result == 1 || lenID < 6 || lenID > 15){
					$('#IDmessage').html('사용할 수 없는 아이디 입니다.').css('color', 'red');
					aj_result = "fail"; //결과값 전역변수에 담기
				}else if(result > 1){
					$('#IDmessage').html('관리자에게 즉시 알려주세요.').css('color', 'red');
					aj_result = "error"; //결과값 전역변수에 담기
				}else{
					$('#IDmessage').html('예기치 못한 오류').css('color', 'red');
					aj_result = "error"; //결과값 전역변수에 담기
				}
				
			}
    	});
	});
	
	</script>
		

    
    </body>
</html>
