
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
   
<!DOCTYPE html>
<html lang="en">
<style>

.container img {
  max-width: 100%;
  height: auto;
  display: block;
}



/* background-image opacity */
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


</style>



    <head>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Enter account</title>
 		<link href="/resources/css/styles.css?login1" rel="stylesheet" />
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                   <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-6">
                                    <div class="card-header">
       										<h3 class="text-center font-weight-light my-4">
                                       <a href="/" >
       										<img src="/resources/assets/img/logo.png" class="container"/>
      								   </a>
       										</h3>
                                    
                                        
                                    <div class="card-body">
                                            <form action="/account/login"  method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputID" name="userId" type="text" placeholder="아이디" />
                                                <label for="inputID">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" name="userPass" placeholder="비밀번호" />
                                                <label for="inputPassword">비밀번호</label>
                                            </div>
                                           
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">비밀번호 기억하기</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="#">비밀번호를 잊어버리셨나요?</a>
                                                <button class="btn btn-primary" type="submit">로그인</button>
                                            </div>
                                         </form>
                                     
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="/account/create">계정이 없으신가요?</a></div>
                                    </div>
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
        
        var check = "${check}";
        $(document).ready(function(){
        	if(check =="fail"){
        		alert('아이디, 비밀번호를 확인해주세요');
        	}
        });
        
        </script>
        
    </body>
</html>
