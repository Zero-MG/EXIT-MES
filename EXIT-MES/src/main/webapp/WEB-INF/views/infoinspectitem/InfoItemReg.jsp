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
        <title>자재별 검사항목 등록</title>
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-2"><b>자재별 검사항목 등록</b></h3></div>
                                    <div class="card-body">
                                    
                                        <form id="form_sbm" action="/infoinspectitem/reg" method="post">
                                        	<div class="row mb-3">
                                                <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputcode" type="text" name="code" placeholder="자재코드" autocomplete="off" required/>
                                                        <label for="inputcode">자재코드<span class="form-required">*</span></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                	<div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputinspectionItem" type="text" name="inspectionItem" placeholder="검사항목" autocomplete="off" required/>
                                                        <label for="inputinspectionItem">검사항목<span class="form-required">*</span></label>
                                                    </div>
                                                </div>
                                                
                                                <div style="width: 100%">
													<button class="btn btn-primary" id="reg-search" type="button" style="width: 100%"><b>조회</b></button>
												</div>
                                                
                                                <div class="col-md-6"><br>
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
	        		opener.location.href="/infoinspectitem/main";
                    window.close();
	        	}else if(schack == "overlap"){
	        		alert('이미 등록되어있는 자재별검사항목 입니다.');
	        	}else if(schack == "false"){
	        		alert('자재코드와 검사항목을 다시 확인 후 재시도 해주세요.');
	        	}else if(schack == "error"){
	        		alert('<b>등록오류</b>\n지속될경우 관리자에게 문의하세요.');
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
	        
	        /* document.getElementById('inputcreationDate').value = new Date().toISOString().substring(0, 10); */
        </script>
        
<!-- 항목데이터 가져오기 -->
        <script>
        $('#reg-search').on('click', function() {
			$.ajax({
				type : 'GET',
				url : "/infoinspectitem/regsearchcodeitem",
				data : $('#form_sbm').serialize(),
				dataType: "json",
				success : function(result) {
					
					console.log(result);
					
					if(result == "false"){
						alert("자재코드나 검사항목이 유효하지 않습니다.\n다시 확인 후 입력해주세요.");
					}else if(result == "error"){
						alert("예기치못한 오류\n관리자에게 문의해주세요.");
					}else{
						/* DB에서 데이터 가져와서 클라이언트에 입력해주기 */
						$('#inputinspectionItemName').val(result.inspectionItemName);
						$('#inputqua').val(result.qua).prop("selected", true);
						$('#inputsampleWater').val(result.sampleWater);
						$('#inputac').val(result.ac);
						$('#inputre').val(result.re);
						$('#inputusl').val(result.usl);
						$('#inputsl').val(result.sl);
						$('#inputlsl').val(result.lsl);
						$('#inputucl').val(result.ucl);
						$('#inputcl').val(result.cl);
						$('#inputlcl').val(result.lcl);
						$('#inputunit').val(result.unit).prop("selected", true);
						$('#inputnote').val(result.note);
						
						/* 정성, 정량 가져온 값에 따라 입력폼 disabled을 재정의함. */
						let optval = $('#inputqua option:selected').val();
			        	
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
					}//if문 마지막
					
				}
			});
		});
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
						url : "/infoinspectitem/infosearch",
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
				},
				focus : function(evt, ui) {
					return false; //한글오류 방지
				},
				close : function(evt) {
				}
			});
		</script>

<!-- 자재항목 자동완성  -->
		<script>
			$("#inputinspectionItem").autocomplete({
				source : function(request, response) {
					$.ajax({
						url : "/infoinspectitem/itemsearch",
						type : "GET",
						data : {code : $("#inputcode").val(), inspectionItem : $("#inputinspectionItem").val()}, // 검색 키워드
						dataType : "json",
						success : function(data) { // 성공
							if(!data.length){
                                var result = [{label : '검색 결과가 없습니다'}];
                                response(result);
                            }else {
								response(
									$.map(data, function(item) {
										return {
											label : item.inspectionItem,
											value : item.inspectionItem
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
				minLength : 1,
				autoFocus : false,
				select : function(evt, ui) {
					console.log("전체 data: " + JSON.stringify(ui));
					console.log("검색 데이터 : " + ui.item.value);
				},
				focus : function(evt, ui) {
					return false;
				},
				close : function(evt) {
				}
			});
		</script>
        
        
    </body>
</html>