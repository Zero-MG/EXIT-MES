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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>검사항목 삭제</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form class="form-submit-switch" action="/inspection/item/del" method="post" onsubmit="">
                                            <div class="row mb-3">
                                            
	                                            <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: left; width: 380px">
	                                                        <input class="form-control" id="inputinspectionItem" type="text" name="inspectionItem" placeholder="검사항목" value="${vo.inspectionItem}" required/>
	                                                        <label for="inputinspectionItem">검사항목<span class="form-required">*</span></label>
	                                                    </div>
	                                                    <div style="float: right;">
	                                                    	<button class="btn btn-primary" id="delsearch" type="button" style="height: 58px; width: 80px;"><b>조회</b></button>
	                                                    </div>
	                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputinspectionItemName" type="text" name="inspectionItemName" placeholder="검사항목명" value="${vo.inspectionItemName}" disabled />
                                                        <label for="inputinspectionItemName">검사항목명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputqua" name="qua" style="width: 100%" disabled>
                                                        	<option selected value="${vo.qua}">${vo.qua}</option>
                                                        </select>
                                                        <label for="inputqua">정성정량</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputsampleWater" type="number" step="0.1" name="sampleWater" placeholder="시료수" maxlength="9" pattern="[0-9]+" value="${vo.sampleWater}" disabled />
                                                        <label for="inputsampleWater">시료수<span style="color: red; font-size: 9pt;"> (숫자)</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputac" type="text" name="ac" placeholder="AC" maxlength="9" pattern="[0-9]+" value="${vo.ac}" disabled />
                                                        <label for="inputac">AC<span style="color: red; font-size: 9pt;"> (숫자)</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputre" type="text" name="re" placeholder="RE" maxlength="9" pattern="[0-9]+" value="${vo.re}" disabled />
                                                        <label for="inputre">RE<span style="color: red; font-size: 9pt;"> (숫자)</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputusl" type="text" name="usl" placeholder="USL" value="${vo.usl}" disabled />
                                                        <label for="inputusl">USL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputsl" type="text" name="sl" placeholder="SL" value="${vo.sl}" disabled />
                                                        <label for="inputsl">SL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlsl" type="text" name="lsl" placeholder="LSL" value="${vo.lsl}" disabled />
                                                        <label for="inputlsl">LSL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputucl" type="text" name="ucl" placeholder="UCL" value="${vo.ucl}" disabled />
                                                        <label for="inputucl">UCL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcl" type="text" name="cl" placeholder="CL" value="${vo.cl}" disabled />
                                                        <label for="inputcl">CL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlcl" type="text" name="lcl" placeholder="LCL" value="${vo.lcl}" disabled />
                                                        <label for="inputlcl">LCL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputunit" name="unit" style="width: 100%" disabled>
                                                        	<option selected value="${vo.unit}">${vo.unit}</option>
                                                        </select>
                                                        <label for="inputunit">단위</label>
                                                    </div>
                                                </div>
												<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputdisposal" name="disposal" style="width: 100%" disabled>
	                                                       	<option selected value="${vo.disposal}">${vo.disposal}</option>
                                                       	</select>
                                                       	<label for="inputdisposal">폐기여부</label>
                                                   	</div>
                                               	</div>
                                               	
                                               	<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <textarea class="form-control" id="inputnote" name="note" placeholder="비고" style="height: 160px;" disabled>${vo.note}</textarea>
                                                        <label for="inputnote">비고</label>
                                                    </div>
                                                </div>
                                            
                                            <div class="mt-4 mb-0" style="text-align: right;">
                                                <button class="btn btn-primary" id="delete_sbm" type="button">삭제</button>
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
        <script>
            var schack = "${ServiceCheck}";
            console.log(schack);

	        $(document).ready(function(){
	        	if(schack == "success") {
	        		alert('삭제 되었습니다.');
	        		opener.location.href="/inspection/main";
                    window.close();
	        	}
			});
	        
	        $(document).ready(function(){
	        	if(schack == "none") {
	        		alert('조회된 제품코드가 없습니다.');
	        	}
			});
	        
	        // searchcode .form-submit-switch
	        $(document).on('click', '#delsearch', function (e){
				$('form').attr('action', '/inspection/item/delsearch').submit();
            });
	        
	        // return confirm(\'제품코드 : '' \n정말로 삭제하시겠습니까?\')
	        $(document).on('click', '#delete_sbm', function (e){
                if(confirm('검사항목 : ${vo.inspectionItem} \n정말로 삭제하시겠습니까?')){
                    return $('.form-submit-switch').submit();
                }else{
                    return false;
                }
            });

        </script>
    </body>
</html>