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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>검사항목 등록</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form id="form-reg" action="/inspection/item/reg" method="post">
                                        	<div class="row mb-3">
                                                <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputinspectionItem" type="text" name="inspectionItem" placeholder="검사항목" required/>
                                                        <label for="inputinspectionItem">검사항목<span class="form-required">*</span></label>
                                                        <span id="message" style="vertical-align: middle;"></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control required" id="inputinspectionItemName" type="text" name="inspectionItemName" placeholder="검사항목명" />
                                                        <label for="inputinspectionItemName">검사항목명</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputqua" name="qua" style="width: 100%" onchange="">
                                                        	<option selected value="정성">정성</option>
                                                        	<option value="정량">정량</option>
                                                        </select>
                                                        <label for="inputqua">정성정량</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputsampleWater" type="number" step="0.1" name="sampleWater" placeholder="시료수" />
                                                        <label for="inputsampleWater">시료수</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputac" type="number" step="0.1" type="text" name="ac" placeholder="AC" />
                                                        <label for="inputac">AC</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputre" type="number" step="0.1" name="re" placeholder="RE" />
                                                        <label for="inputre">RE</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputusl" type="number" step="0.1" name="usl" placeholder="USL" disabled />
                                                        <label for="inputusl">USL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputsl" type="number" step="0.1" name="sl" placeholder="SL" disabled />
                                                        <label for="inputsl">SL</label>
                                                    </div>
                                                    </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlsl" type="number" step="0.1" name="lsl" placeholder="LSL" disabled />
                                                        <label for="inputlsl">LSL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputucl" type="number" step="0.1" name="ucl" placeholder="UCL" />
                                                        <label for="inputucl">UCL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcl" type="number" step="0.1" name="cl" placeholder="CL" />
                                                        <label for="inputcl">CL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlcl" type="number" step="0.1" name="lcl" placeholder="LCL" />
                                                        <label for="inputlcl">LCL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputunit" name="unit" style="width: 100%">
                                                        	<option selected value="m">m</option>
                                                        	<option value="cm">cm</option>
                                                        	<option value="mm">mm</option>
                                                        	<option value="kg">kg</option>
                                                        	<option value="ml">ml</option>
                                                        	<option value="L">L</option>
                                                        	<option value="˚C">˚C</option>
                                                        </select>
                                                        <label for="inputunit">단위</label>
                                                    </div>
                                                </div>
												<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <select class="dataTable-selector" id="inputdisposal" name="disposal" style="width: 100%">
	                                                       	<option selected value="N">N</option>
	                                                       	<option value="Y">Y</option>
                                                       	</select>
                                                       	<label for="inputdisposal">폐기여부</label>
                                                   	</div>
                                               	</div>
                                               	
                                               	<div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <textarea class="form-control" id="inputnote" name="note" placeholder="비고" style="height: 160px;"></textarea>
                                                        <label for="inputnote">비고</label>
                                                    </div>
                                                </div>
                                            
                                            <div class="mt-4 mb-0" style="text-align: right;">
                                                <button class="btn btn-primary" id="regbtn-sbm" type="button">등록</button>
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
                    </div>
                </main>
                <br>
                <br>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        
        <script>
        
            var schack = "${ServiceCheck}";
            /* console.log(schack); */

	        $(document).ready(function(){
	        	if(schack == "success") {
	        		alert('등록 되었습니다.');
	        		opener.location.href="/inspection/main";
                    window.close();
	        	};
			});
	        
	        
	        $(document).ready(function(){
	        	$('#inputqua').change(function(e) {
		        	let optval = $('#inputqua option:selected').val();
		        	/* console.log(optval); */
		        	
		        	if(optval == "정량") {
	                    $('#inputac').attr('disabled', 'true');
	                    $('#inputre').attr('disabled', 'true');
	                    $('#inputac').val('');
	                    $('#inputre').val('');
	                    
	                    $('#inputusl').removeAttr('disabled');
	                    $('#inputsl').removeAttr('disabled');
	                    $('#inputlsl').removeAttr('disabled');
		        	}else if(optval == "정성"){
	                    $('#inputusl').attr('disabled', 'true');
	                    $('#inputsl').attr('disabled', 'true');
	                    $('#inputlsl').attr('disabled', 'true');
	                    $('#inputusl').val('');
	                    $('#inputsl').val('');
	                    $('#inputlsl').val('');
	                    
	                    $('#inputac').removeAttr('disabled');
	                    $('#inputre').removeAttr('disabled');
	                }
	        	});
	        });
	        
	        /* 중복 ajax 처리 */
	        var aj_result;
	        
	        $('#regbtn-sbm').on('click', function() {
				if(aj_result == 0){
					$('#form-reg').submit();
				}else if(aj_result == 1){
					alert('검사항목을 다시 확인해주세요.');
				}else{
					alert('관리자에게 문의 부탁드립니다.');
				}
			});
	        
	        $('#inputinspectionItem').on('keyup', function() {
	    		$.ajax({
	    			async: false,
					type: 'GET',
					url: "/inspection/item/regcheck",
					data: $("#inputinspectionItem").serialize(),
					success : function(result){
						aj_result = result;
						if(result == 1){
							$('#message').html(' 이미 등록된 검사항목이 있습니다.').css('color', 'red');
						}else if(result == 0){
							$('#message').html(' 등록 가능한 검사항목 입니다.').css('color', 'green');
						}else{
							$('#message').html(' 예기치못한 오류: 관리자에게 문의하세요').css('color', 'blue');
						}
					}
	    		});
			});
	        
	        
	        /* document.getElementById('inputcreationDate').value = new Date().toISOString().substring(0, 10); */
        </script>
    </body>
</html>