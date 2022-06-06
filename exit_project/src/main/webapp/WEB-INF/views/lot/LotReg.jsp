<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../includes/session.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Lot별 검사결과입력</title>
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
		<!-- Auto complete -->
		<link href="/resources/css/jquery-ui.css" rel="stylesheet" />
		<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    
    <body style="background-color: gray; font-size: 100%">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>Lot별 검사결과입력</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form id="form_sbm" action="/lot/reg" method="post">
                                        	<div class="row mb-3">
                                                <!-- <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlot_no" type="number" name="lot_no" placeholder="자재코드" autocomplete="off" required/>
                                                        <label for="inputlot_no">LOT_NO</label>
                                                    </div>
                                                </div> -->
                                                <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlot_size" type="number" name="lot_size" placeholder="검사항목" autocomplete="off" required/>
                                                        <label for="inputlot_size">LOT_SIZE</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputcode" type="text" name="code" placeholder="검사항목명" />
                                                        <label for="inputcode">자재코드</label>
                                                    </div>
                                                </div>
                                                  <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputcodeName" type="text" name="codeName" placeholder="검사항목명" readonly />
                                                        <label for="inputcodeName">자재명</label>
                                                    </div>
                                                </div>                                       
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputpass_or_fail" name="pass_or_fail" style="width: 100%" onchange="">
                                                        	<option selected value="=선택=">=선택=</option>
                                                        	<option value="합격">합격</option>
                                                        	<option value="불합격">불합격</option>
                                                        </select>
                                                        <label for="inputpass_or_fail">합불여부</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputconstructor" type="text" step="0.1" name="constructor" placeholder="시료수" />
                                                        <label for="inputconstructor">생성자</label>
                                                    </div>
                                                </div>
                                                
                                               	<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <textarea class="form-control" id="inputnote" name="note" placeholder="비고" style="height: 160px;"></textarea>
                                                        <label for="inputnote">비고</label>
                                                    </div>
                                                </div>
                                            
                                            <div class="mt-4 mb-0" style="text-align: right;">
                                                <button class="btn btn-primary" type="submit">등록</button>
                                                <a class="btn btn-danger" onclick="window.close()">취소</a>
                                            </div>
                                            <input class="SCheck" type="hidden" value="${ServiceCheck}">
                                            </div>
										</form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <br>
                <br>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>

        <script>
        
            var schack = "${ServiceCheck}";
            /* console.log(schack); */

	        $(document).ready(function(){
	        	if(schack == "success") {
	        		alert('등록 되었습니다.');
	        		opener.location.href="/lot/main";
                    window.close();
	        	}
			});
	        
	        
	
	        
	        /* document.getElementById('inputcreationDate').value = new Date().toISOString().substring(0, 10); */
        </script>
        

        
        <script>
        	$('#inputcode').on('keyup', function () {
        		/* ui-menu-item-wrapper */
        		var codeval = $('#inputcode').val();
        		
        		
			});
        	
        </script>
        
<!-- 자재코드 자동완성  -->
		<script>
			$("#inputcode").autocomplete({
				source : function(request, response) {
					$.ajax({
						url : "/lot/codesearch",
						type : "GET",
						data : {code : $("#inputcode").val()}, // 검색 키워드
						dataType : "json",
						success : function(data) { // 성공
							if(!data.length){
                                var result = [{label : '검색 결과가 없습니다'}];
                                response(result);
                            }else {
                                response(
                                    $.map(data, function(item) {
                                        return {
                                            label : item.code, //목록에 표시되는 값
                                            value : item.code  //선택 시 input창에 표시되는 값
                                        };
									})
								); //response
                            }
						},
						error : function() { //실패
							alert("통신에 실패했습니다.");
						}
					});
				},
				minLength : 1, //조회를 위한 최소 글자 수
				autoFocus : false,
				select : function(evt, ui) { //검색리스트에서 선택하였을 때, 선택한 데이터에 의한 이벤트발생
					console.log("전체 data: " + JSON.stringify(ui));
					console.log("검색 데이터 : " + ui.item.value);
					
					$.ajax({
						type: 'GET',
						url : "/lot/codenamesearch",
						data : {code : ui.item.value}, // 검색 키워드
						dataType : "json",
						success : function(result){
							if(result.length >= 1){
								result.forEach(function(item){
									$('#inputcodeName').val(item.codeName);
				        		});
							}else{
								$('#inputcodeName').val('-');
							}
						}
					});
					
				},
				focus : function(evt, ui) {
					return false; //한글오류 방지
				},
				close : function(evt) {
				}
			});
			
			
			$('#inputcode').on('keyup', function() {
				$.ajax({
					type: 'GET',
					url : "/lot/codenamesearch",
					data : {code : $("#inputcode").val()}, // 검색 키워드
					dataType : "json",
					success : function(result){
						if(result.length >= 1){
							result.forEach(function(item){
								$('#inputcodeName').val(item.codeName);
			        		});
						}else{
							$('#inputcodeName').val('-');
						}
					}
				});
			});
			
		</script>
        
        
    </body>
</html>