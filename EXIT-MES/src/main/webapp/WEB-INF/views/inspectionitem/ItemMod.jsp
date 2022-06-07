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
        <title>검사자재 수정</title>
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    <body style="background-color: gray; font-size: 100%">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>검사항목 수정</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form class="form-submit-switch" action="/inspection/item/mod" method="post" onsubmit="">
                                            <div class="row mb-3">
                                            
	                                            <div class="col-md-6">
	                                                    <div class="form-floating mb-3 mb-md-0" style="float: left; width: 380px">
	                                                    
	                                                    	<%-- 하이든 처리 해서 idx 기준으로 DB내용을 수정처리 하려고 만듬 --%>
	                                                    	<input id="inputidx" name="idx" type="hidden" value="${vo.idx}" disabled>
	                                                    	<%-- 하이든 처리 해서 idx 기준으로 DB내용을 수정처리 하려고 만듬 --%>
	                                                    	
	                                                        <input class="form-control" id="inputinspectionItem" type="text" name="inspectionItem" placeholder="검사항목" value="${vo.inspectionItem}" required/>
	                                                        <label for="inputinspectionItem">검사항목<span class="form-required">*</span></label>
	                                                    </div>
	                                                    <div style="float: right;">
	                                                    	<button class="btn btn-primary" id="itemsearch" type="button" style="height: 58px; width: 80px;"><b>조회</b></button>
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
                                                        <input class="form-control" id="inputsampleWater" type="number" step="0.1" name="sampleWater" placeholder="시료수" value="${vo.sampleWater}" disabled />
                                                        <label for="inputsampleWater">시료수</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputac" type="number" step="0.1" name="ac" placeholder="AC" value="${vo.ac}" disabled />
                                                        <label for="inputac">AC</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputre" type="number" step="0.1" name="re" placeholder="RE" value="${vo.re}" disabled />
                                                        <label for="inputre">RE</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputusl" type="number" step="0.1" name="usl" placeholder="USL" value="${vo.usl}" disabled />
                                                        <label for="inputusl">USL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputsl" type="number" step="0.1" name="sl" placeholder="SL" value="${vo.sl}" disabled />
                                                        <label for="inputsl">SL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlsl" type="number" step="0.1" name="lsl" placeholder="LSL" value="${vo.lsl}" disabled />
                                                        <label for="inputlsl">LSL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputucl" type="number" step="0.1" name="ucl" placeholder="UCL" value="${vo.ucl}" disabled />
                                                        <label for="inputucl">UCL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcl" type="number" step="0.1" name="cl" placeholder="CL" value="${vo.cl}" disabled />
                                                        <label for="inputcl">CL</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputlcl" type="number" step="0.1" name="lcl" placeholder="LCL" value="${vo.lcl}" disabled />
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
                                                <button class="btn btn-primary" id="delete_sbm" type="button">수정</button>
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
	        		alert('수정 되었습니다.');
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
	        $(document).on('click', '#itemsearch', function (e){
				$('form').attr('action', '/inspection/item/itemsearch').submit();
            });
	        $(document).ready(function(){
	        	if(schack == "searchOK") {

	        		$('#inputidx').removeAttr('disabled');
	        		$('#inputidx').attr('readonly', true);
	        		$('#inputinspectionItem').attr('readonly', true);
	        		
	        		$('#inputinspectionItemName').removeAttr('disabled');
	        		$('#inputqua').removeAttr('disabled');
	        		$('#inputsampleWater').removeAttr('disabled');
	        		$('#inputucl').removeAttr('disabled');
	        		$('#inputcl').removeAttr('disabled');
	        		$('#inputlcl').removeAttr('disabled');
	        		$('#inputunit').removeAttr('disabled');
	        		$('#inputdisposal').removeAttr('disabled');
	        		$('#inputnote').removeAttr('disabled');
	        		
	        		let strqua = "";
	        		var quaChack = "${vo.qua}";
	        		if(quaChack == "정량"){
	        			$('#inputusl').removeAttr('disabled');
		        		$('#inputsl').removeAttr('disabled');
		        		$('#inputlsl').removeAttr('disabled');
		        		strqua += '<option value="정성">정성</option>'
		        		strqua += '<option selected value="정량">정량</option>'
	        		}else if(quaChack == "정성"){
	        			$('#inputac').removeAttr('disabled');
		        		$('#inputre').removeAttr('disabled');
		        		strqua += '<option selected value="정성">정성</option>'
			        	strqua += '<option value="정량">정량</option>'
	        		}
	        		$('#inputqua').html(strqua);
	        		
	        		var unitChack = "${vo.unit}";
	        		let strunit = "";
	        		
	        		if (unitChack == "m") {
	        			strunit += '<option selected value="m">m</option>'
		        		strunit += '<option value="cm">cm</option>'
		        		strunit += '<option value="mm">mm</option>'
		        		strunit += '<option value="kg">kg</option>'
		        		strunit += '<option value="ml">ml</option>'
		        		strunit += '<option value="L">L</option>'
		        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "cm"){
	        			strunit += '<option value="m">m</option>'
		        		strunit += '<option selected value="cm">cm</option>'
		        		strunit += '<option value="mm">mm</option>'
		        		strunit += '<option value="kg">kg</option>'
        				strunit += '<option value="ml">ml</option>'
		        		strunit += '<option value="L">L</option>'
		        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "mm"){
	        			strunit += '<option value="m">m</option>'
		        		strunit += '<option value="cm">cm</option>'
		        		strunit += '<option selected value="mm">mm</option>'
		        		strunit += '<option value="kg">kg</option>'
        				strunit += '<option value="ml">ml</option>'
		        		strunit += '<option value="L">L</option>'
		        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "kg"){
	        			strunit += '<option value="m">m</option>'
		        		strunit += '<option value="cm">cm</option>'
		        		strunit += '<option value="mm">mm</option>'
		        		strunit += '<option selected value="kg">kg</option>'
        				strunit += '<option value="ml">ml</option>'
		        		strunit += '<option value="L">L</option>'
		        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "ml"){
	        			strunit += '<option value="m">m</option>'
			        		strunit += '<option value="cm">cm</option>'
			        		strunit += '<option value="mm">mm</option>'
			        		strunit += '<option value="kg">kg</option>'
	        				strunit += '<option selected value="ml">ml</option>'
			        		strunit += '<option value="L">L</option>'
			        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "L"){
	        			strunit += '<option value="m">m</option>'
			        		strunit += '<option value="cm">cm</option>'
			        		strunit += '<option value="mm">mm</option>'
			        		strunit += '<option value="kg">kg</option>'
	        				strunit += '<option value="ml">ml</option>'
			        		strunit += '<option selected value="L">L</option>'
			        		strunit += '<option value="˚C">˚C</option>'
					}else if(unitChack == "˚C"){
	        			strunit += '<option value="m">m</option>'
			        		strunit += '<option value="cm">cm</option>'
			        		strunit += '<option value="mm">mm</option>'
			        		strunit += '<option value="kg">kg</option>'
	        				strunit += '<option value="ml">ml</option>'
			        		strunit += '<option value="L">L</option>'
			        		strunit += '<option selected value="˚C">˚C</option>'
					}
        			$('#inputunit').html(strunit);
        			
        			var dispoChack = '${vo.disposal}';
        			let strdispo = "";
        			
        			if(dispoChack == "Y"){
        				strdispo += '<option selected value="Y">Y</option>'
       					strdispo += '<option value="N">N</option>'
        			}else if(dispoChack == "N"){
        				strdispo += '<option value="Y">Y</option>'
        				strdispo += '<option selected value="N">N</option>'
        			}
        			$('#inputdisposal').html(strdispo);
	        		
        			alert('해당 제품코드의 조회가 완료되었습니다.');
	        	}
			});
	        
	        // 수정 물어보기
	        $(document).on('click', '#delete_sbm', function (e){
                if(confirm('검사항목 : ${vo.inspectionItem} \n현재 내용으로 수정하시겠습니까?')){
                    return $('.form-submit-switch').submit();
                }else{
                    return false;
                }
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

        </script>
    </body>
</html>