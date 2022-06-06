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
        <title>검사자재 삭제</title>
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    <body style="background-color: gray; font-size: 100%">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>검사자재 삭제</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form class="form-submit-switch" action="/information/product/del" method="post" onsubmit="">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0" style="float: left; width: 380px">
                                                        <input class="form-control" id="inputcode" type="text" name="code" placeholder="자재코드" value="${vo.code}" required/>
                                                        <label for="inputcode">자재코드<span class="form-required">*</span></label>
                                                    </div>
                                                    <div style="float: right;">
                                                    	<button class="btn btn-primary" id="searchcode" type="button" style="height: 58px; width: 80px;"><b>조회</b></button>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputcodeName" type="text" name="codeName" placeholder="자재명" value="${vo.codeName}" disabled/>
                                                        <label for="inputcodeName">자재명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyer" type="text" name="buyer" placeholder="구매자" value="${vo.buyer}" disabled/>
                                                        <label for="inputbuyer">구매자</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyerName" type="text" name="buyerName" placeholder="구매자명" value="${vo.buyerName}" disabled/>
                                                        <label for="inputbuyerName">구매자명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputpurchasing" type="text" name="purchasing" placeholder="구매부서" value="${vo.purchasing}" disabled/>
                                                        <label for="inputpurchasing">구매부서</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputpurchasingName" type="text" name="purchasingName" placeholder="구매부서명" value="${vo.purchasingName}" disabled/>
                                                        <label for="inputpurchasingName">구매부서명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyCompany" type="text" name="buyCompany" placeholder="구매업체" value="${vo.buyCompany}" disabled />
                                                        <label for="inputbuyCompany">구매업체</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputbuyCompanyName" type="text" name="buyCompanyName" placeholder="구매업체명" value="${vo.buyCompanyName}" disabled />
                                                        <label for="inputbuyCompanyName">구매업체명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputinspectperson" type="text" name="inspectperson" placeholder="수입검사자" value="${vo.inspectperson}" disabled />
                                                        <label for="inputinspectperson">수입검사자</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcurrentInventory" type="text" name="currentInventory" placeholder="현재고" value="${vo.currentInventory}" disabled />
                                                        <label for="inputcurrentInventory">현재고</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputprice" type="text" name="price" placeholder="구매단가" value="${vo.price}" disabled />
                                                        <label for="inputprice">구매단가</label>
                                                    </div>
                                                </div>
                                                
                                                <div style="text-align:center;">
	                                                <div class="col-md-1-left">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: left; width: 48%;">
	                                                        <select class="dataTable-selector" name="inspect" style="width: 100%;" disabled>
	                                                        	<option value="${vo.inspect}">${vo.inspect}</option>
	                                                        </select>
	                                                        <label for="inputinspect">검사여부</label>
	                                                    </div>
	                                                </div>
	                                                
	                                                <div class="col-md-1-right">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: right; width: 48%;">
	                                                        <select class="dataTable-selector" name="disuse" style="width: 100%;" disabled>
	                                                        	<option value="${vo.disuse}">${vo.disuse}</option>
	                                                        </select>
	                                                        <label for="inputdisuse">폐기여부</label>
	                                                    </div>
	                                                </div>
                                                </div>
                                                
                                            </div>
                                            
                                            <div class="mt-4 mb-0" style="text-align: right;">
                                                <button class="btn btn-primary" id="delete_sbm" type="button">삭제</button>
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
            console.log(schack);

	        $(document).ready(function(){
	        	if(schack == "success") {
	        		alert('삭제 되었습니다.');
	        		opener.location.href="/information/main";
                    window.close();
	        	}
			});
	        
	        $(document).ready(function(){
	        	if("${test}" == "test") {
	        		alert('창이 이미 띄워져 있습니다.');
	        	}
			});
	        
	        $(document).ready(function(){
	        	if(schack == "none") {
	        		alert('조회된 제품코드가 없습니다.');
	        	}
			});
	        
	        // searchcode .form-submit-switch
	        $(document).on('click', '#searchcode', function (e){
				$('form').attr('action', '/information/product/searchcode').submit();
            });
	        
	        // return confirm(\'제품코드 : ${vo.code} \n정말로 삭제하시겠습니까?\')
	        $(document).on('click', '#delete_sbm', function (e){
                if(confirm('제품코드 : ${vo.code} \n정말로 삭제하시겠습니까?')){
                    return $('.form-submit-switch').submit();
                }else{
                    return false;
                }
            });

        </script>
    </body>
</html>