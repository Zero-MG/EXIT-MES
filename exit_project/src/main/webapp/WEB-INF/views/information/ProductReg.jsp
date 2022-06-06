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
        <title>검사자재 등록</title>
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    <body style="background-color: gray; font-size: 100%">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>검사자재 등록</b></h3></div>
                                    <div class="card-body">
                                        <form id="form-reg" action="/information/product/reg" method="post">
                                                <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcode" type="text" name="code" placeholder="자재코드" required/>
                                                        <label for="inputcode">자재코드<span class="form-required">*</span></label>
                                                        <span id="message" style="vertical-align: middle;"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputcodeName" type="text" name="codeName" placeholder="자재명" required/>
                                                        <label for="inputcodeName">자재명<span class="form-required">*</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyer" type="text" name="buyer" placeholder="구매자" required/>
                                                        <label for="inputbuyer">구매자<span class="form-required">*</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyerName" type="text" name="buyerName" placeholder="구매자명" />
                                                        <label for="inputbuyerName">구매자명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputpurchasing" type="text" name="purchasing" placeholder="구매부서" />
                                                        <label for="inputpurchasing">구매부서</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputpurchasingName" type="text" name="purchasingName" placeholder="구매부서명" />
                                                        <label for="inputpurchasingName">구매부서명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyCompany" type="text" name="buyCompany" placeholder="구매업체" />
                                                        <label for="inputbuyCompany">구매업체</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyCompanyName" type="text" name="buyCompanyName" placeholder="구매업체명" />
                                                        <label for="inputbuyCompanyName">구매업체명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputinspectperson" type="text" name="inspectperson" placeholder="수입검사자" />
                                                        <label for="inputinspectperson">수입검사자</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcurrentInventory" type="number" name="currentInventory" placeholder="현재고" maxlength="9" pattern="[0-9]+" />
                                                        <label for="inputcurrentInventory">현재고</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputprice" type="number" name="price" placeholder="구매단가" maxlength="9" pattern="[0-9]+" />
                                                        <label for="inputprice">구매단가</label>
                                                    </div>
                                                </div>
                                                <div style="text-align:center;">
	                                                <div class="col-md-1-left">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: left; width: 48%;">
	                                                        <select class="dataTable-selector" name="inspect" style="width: 100%;">
                                                        	<option value="N">N</option>
                                                        	<option value="Y">Y</option>
	                                                        </select>
	                                                        <label for="inputinspect">검사여부</label>
                                                    	</div>
                                                	</div>
                                                
                                                <div class="col-md-1-right">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: right; width: 48%;">
	                                                        <select class="dataTable-selector" name="disuse" style="width: 100%;">
                                                        	<option value="N">N</option>
                                                        	<option value="Y">Y</option>
                                                        	</select>
                                                        	<label for="inputdisuse">폐기여부</label>
                                                    	</div>
                                                	</div>
                                            	</div>
                                            
                                            <div class="mt-4 mb-0" style="text-align: right;">
                                                <button class="btn btn-primary" id="regbtn-sbm" type="button">등록</button>
                                                <a class="btn btn-danger" onclick="window.close()">취소</a>
                                            </div>
                                            <input class="SCheck" type="hidden" value="${ServiceCheck}">
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
	<script>
		var schack = "${ServiceCheck}";
		var aj_result;
		
        $(document).ready(function(){
        	if(schack == "success") {
        		alert('등록 되었습니다.');
        		opener.location.href="/information/main";
                   window.close();
        	};
		});
        
        $('#regbtn-sbm').on('click', function() {
			if(aj_result == 0){
				$('#form-reg').submit();
			}else if(aj_result == 1){
				alert('자재코드를 다시 확인해주세요.');
			}else{
				alert('관리자에게 문의 부탁드립니다.');
			}
		});
        
        $('#inputcode').on('keyup', function() {
    		$.ajax({
    			async: false,
				type: 'GET',
				url: "/information/product/regcheck",
				data: $("#inputcode").serialize(),
				success : function(result){
					aj_result = result;
					if(result == 1){
						$('#message').html(' 이미 등록된 코드가 있습니다.').css('color', 'red');
					}else if(result == 0){
						$('#message').html(' 등록 가능한 코드 입니다.').css('color', 'green');
					}else{
						$('#message').html(' 예기치못한 오류: 관리자에게 문의하세요').css('color', 'blue');
					}
				}
    		});
		});
	</script>
	
    </body>
</html>