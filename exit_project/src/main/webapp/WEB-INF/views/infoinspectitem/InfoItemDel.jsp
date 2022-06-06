<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../includes/session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>자재별 검사항목 삭제</title>
<link href="/resources/css/styles.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Auto complete -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>

</head>

<body style="background-color: gray; font-size: 100%">
	<main>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-2">
								<b>자재별 검사항목 삭제</b>
							</h3>
						</div>
						<div class="card-body">

							<form class="form-submit-switch" id="form_sbm"
								action="/infoinspectitem/del" method="post">
								<div class="row mb-3">


									<div class="col-md-6">
										<div class="form-floating mb-3 mb-md-0">
											<input class="form-control" id="inputcode" type="text"
												name="code" placeholder="자재코드" value="${vo.code}" required />
											<label for="inputcode">자재코드<span
												class="form-required">*</span></label>
										</div>

										<div class="col-md-6">
											<div class="form-floating mb-3 mb-md-0">
												<input class="form-control" id="inputinspectionItem"
													type="text" name="inspectionItem" placeholder="검사항목"
													value="${vo.inspectionItem}" required /> <label
													for="inputinspectionItem">검사항목<span
													class="form-required">*</span></label>
											</div>
										</div>

										<div style="width: 100%"disabled">
											<button class="btn btn-primary" id="delsearch" type="button"
												style="width: 100%"disabled">
												<b>조회</b>
											</button>
										</div>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control required"
											id="inputinspectionItemName" type="text"
											name="inspectionItemName" placeholder="검사항목명"
											value="${vo.inspectionItemName}" disabled /> <label
											for="inputinspectionItemName">검사항목명</label>
									</div>

								</div>

								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<select class="dataTable-selector" id="inputqua" name="qua"
											style="width: 100%" disabled>
											<option id="quaopt" selected value="${vo.qua}">${vo.qua}</option>
										</select> <label for="inputqua">정성정량</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputsampleWater"
											type="number" step="0.1" name="sampleWater" placeholder="시료수"
											maxlength="9" pattern="[0-9]+" value="${vo.sampleWater}"
											disabled /> <label for="inputsampleWater">시료수 </label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputac" type="text" name="ac"
											placeholder="AC" maxlength="9" pattern="[0-9]+"
											value="${vo.ac}" disabled /> <label for="inputac">AC</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputre" type="text" name="re"
											placeholder="RE" maxlength="9" pattern="[0-9]+"
											value="${vo.re}" disabled /> <label for="inputre">RE</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputusl" type="text"
											name="usl" placeholder="USL" value="${vo.usl}" disabled /> <label
											for="inputusl">USL</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputsl" type="text" name="sl"
											placeholder="SL" value="${vo.sl}" disabled /> <label
											for="inputsl">SL</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputlsl" type="text"
											name="lsl" placeholder="LSL" value="${vo.lsl}" disabled /> <label
											for="inputlsl">LSL</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputucl" type="text"
											name="ucl" placeholder="UCL" value="${vo.ucl}" disabled /> <label
											for="inputucl">UCL</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputcl" type="text" name="cl"
											placeholder="CL" value="${vo.cl}" disabled /> <label
											for="inputcl">CL</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<input class="form-control" id="inputlcl" type="text"
											name="lcl" placeholder="LCL" value="${vo.lcl}" disabled /> <label
											for="inputlcl">LCL</label>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<select class="dataTable-selector" id="inputunit" name="unit"
											style="width: 100%" disabled>
											<option id="unitopt" selected value="${vo.unit}">${vo.unit}</option>
										</select>
										<label for="inputqua">단위</label>
									</div>
								</div>

								<div class="col-md-6">
									<div class="form-floating mb-3 mb-md-0">
										<textarea class="form-control" id="inputnote" name="note"
											placeholder="비고" style="height: 160px;" disabled>${vo.note}</textarea>
										<label for="inputnote">비고</label>
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
		</div>
	</main>
	<br>
	<br>

	<script>
		var schack = "${ServiceCheck}";
		console.log(schack);

		$(document).ready(function() {
			if (schack == "success") {
				alert('삭제 되었습니다.');
				opener.location.href = "/infoinspectitem/main";
				window.close();
			}
		});
		
		
		

		/*삭제 조회 누르면 아래항목들 나오게  */
		// searchcode .form-submit-switch/////////////////////////////////////////
		$('#delsearch').on(
				'click',
				function() {
					$.ajax({
						type : 'POST',
						url : "/infoinspectitem/searchcode",
						data : $('#form_sbm').serialize(),
						success : function(result) {
							$('#inputinspectionItemName').val(result.inspectionItemName);
							$('#quaopt').val(result.qua).html(result.qua);
							$('#inputsampleWater').val(result.sampleWater);
							$('#inputac').val(result.ac);
							$('#inputre').val(result.re);
							$('#inputusl').val(result.usl);
							$('#inputsl').val(result.sl);
							$('#inputlsl').val(result.lsl);
							$('#inputucl').val(result.ucl);
							$('#inputcl').val(result.cl);
							$('#inputlcl').val(result.lcl);
							$('#unitopt').val(result.unit).html(result.unit);
							$('#inputnote').val(result.note);
						}
					});
				});
		

		// return confirm(\'제품코드 : '' \n정말로 삭제하시겠습니까?\')
		$(document).on('click','#delete_sbm',
						function(e) {
							if (confirm("제품코드 : "+$('#inputcode').val()+"\n검사항목 : "+$('#inputinspectionItem').val()+"\n정말로 삭제하시겠습니까?")) {
								return $('#form_sbm').submit();
							} else {
								return false;
							}
						});
	</script>


	<!--자재코드 자동완성  -->
	<script>
		$("#inputcode").autocomplete({
			source : function(request, response) {
				$.ajax({
					url : "/infoinspectitem/search",
					type : "GET",
					data : {code : $("#inputcode").val()}, // 검색 키워드
					dataType : "json",
					success : function(data) { // 성공
						if(!data.length){
							var result = [{label : '자재코드없음'}];
							response(result);
						}else{
							response(
									$.map(data, function(item) {
										return {
											label : item.code, //목록에 표시되는 값
											value : item.code	//선택 시 input창에 표시되는 값
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
						
			minLength: 1,
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
		
/* 		$("#inputcode").autocomplete.setOptions({ 
		    paramName: selectedOption, 
		    params: {} 
		});
		 */
	</script>

	<!--자재항목 자동완성  -->
	<script>
		$("#inputinspectionItem").autocomplete({
			source : function(request, response) {
				$.ajax({
					url : "/infoinspectitem/search2",
					type : "GET",
					data : {
						code : $("#inputcode").val(),
						inspectionItem : $("#inputinspectionItem").val()
					}, // 검색 키워드
					dataType : "json",
					success : function(data) { // 성공
						if(!data.length){
							var result = [{label : '검사항목없음'}];							
							response(result);
							
						}else{
							response(
									$.map(data, function(item) {
										return {
											label : item.inspectionItem, //목록에 표시되는 값
											value : item.inspectionItem	//선택 시 input창에 표시되는 값
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