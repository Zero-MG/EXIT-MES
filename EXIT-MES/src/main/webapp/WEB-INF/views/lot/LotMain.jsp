<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

	<%@ include file="../includes/header.jsp" %>
	
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">lot별 검사결과 등록</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">품질관리</li>
                            <li class="breadcrumb-item active">lot별 검사결과 등록 및 검사실적</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
								 lot별 검사결과를 등록하거나, 검사항목 및 검사실적 조회가 가능합니다.
                                <br>
                            </div>
                        </div>
                        
                        <div>
                        	<a class="btn btn-primary" href="/lot/reg" target="_blank" onClick="window.open(this.href, '_blank', 'width=600, height=850'); return false;">
                        	lot별검사결과입력</a>
                        	<a class="btn btn-primary" href="/infoinspectitem/del" target="_blank" onClick="window.open(this.href, '_blank', 'width=600, height=800'); return false;">
                        	삭제</a>
                        	<form name="search-form" autocomplete="off" style="float: right;" onsubmit="return false">
		             
				                
	                   
                        	</form>
                        </div>
                        
                        <br>

                        <%--테이블폼 상단 옵션--%>
                        <div class="card mb-4">
                            <div class="card-header">
								<div style="float: left; padding: 0.375rem 0.5rem;">
									<i class="fas fa-table me-1"></i>
									<b>lot별 검색내역</b>
								</div>

								<div class="btn btn-success" onclick="fnExcelReport('resultTable','item_List');" style="float: right;">
									<i class="fas fa-table me-1"></i>
									<a>Excel 다운로드</a>
								</div>
                            </div>

                            <div class="card-body-table-two">
								<table id="resultTable" class="dataTable-table">
									<thead>
                                        <tr>
                                        	<th>No</th>
                                        	<th>LOT_NO<span class="form-required">*</span></th>
											<th>LOT_SIZE<span class="form-required">*</span></th>
								            <th>자재코드</th>
								            <th>자재명</th>
								            <th>합불여부</th>
								            <th>생성자</th>
								            <th>생성일자</th>
								            <th>비고</th>
										</tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="vo" items="${searchList}">
											<tr>
												<td style="text-align: center; font-weight: bold; font-size: 10pt;">${vo.rn}</td>
												<td>${vo.lot_no}</td>
												<td>${vo.lot_size}</td>
												<td>${vo.code}</td>
												<td>${vo.codeName}</td>
												<td>${vo.pass_or_fail}</td>
												<td>${vo.constructor}</td>
												<td><fmt:formatDate value="${vo.creationDate}" pattern="yyyy-MM-dd" /></td>
												<td>${vo.note}</td>					
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--검사항목 테이블  -->
                        <div class="card mb-4">
                            <div class="card-header">
								<div style="float: left; padding: 0.375rem 0.5rem;">
									<i class="fas fa-table me-1"></i>
									<b>item별 검사항목</b>
								</div>

								<div class="btn btn-success" onclick="fnExcelReport('resultTable','item_List');" style="float: right;">
									<i class="fas fa-table me-1"></i>
									<a>Excel 다운로드</a>
								</div>
                            </div>

                            <div class="card-body-table-two">
								<table id="resultTable_2" class="dataTable-table">
									<thead>
                                        <tr>
                                        	<th>No</th>
                                        	<th>자재코드<span class="form-required">*</span></th>
											<th>검사항목<span class="form-required">*</span></th>
								            <th>검사항목명</th>
								            <th>정성정량</th>
								            <th>시료수</th>
								            <th>AC</th>
								            <th>RE</th>
								            <th>USL</th>
								            <th>SL</th>
								            <th>LSL</th>
								            <th>UCL</th>
								            <th>CL</th>
								            <th>LCL</th>
								            <th>단위</th>
								            <th>비고</th>
										</tr>
                                    </thead>
                                    <tbody>
                                    <%-- item별 검사항목 출력부분 --%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
						<!--검사실적테이블  -->
                        <div class="card mb-4">
                            <div class="card-header">
								<div style="float: left; padding: 0.375rem 0.5rem;">
									<i class="fas fa-table me-1"></i>
									<b>검사실적</b>
								</div>

								<div class="btn btn-success" onclick="fnExcelReport('resultTable','item_List');" style="float: right;">
									<i class="fas fa-table me-1"></i>
									<a>Excel 다운로드</a>
								</div>
                            </div>

                            <div class="card-body-table-two">
								<table id="resultTable_3" class="dataTable-table">
									<thead>
                                        <tr>
                                        	<th>No</th>
                                        	<th>시료번호<span class="form-required">*</span></th>
											<th>LOT_NO<span class="form-required">*</span></th>
								            <th>자재코드</th>
								            <th>검사항목</th>
								            <th>검사 결과값 (AC)</th>
								            <th>합불여부</th>
										</tr>
                                    </thead>
                                    <tbody>
                     				<%--  검사실적 출력부분 --%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>

	<%@ include file="../includes/footer.jsp" %>
	

	
	<script> /* 엑셀 다운로드 기능 */
	function fnExcelReport(id, title) {
	    var tab_text = '<html xmlns:x="urn:schemas-microsoft-com:office:excel">';
	    tab_text = tab_text + '<head><meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
	    tab_text = tab_text + '<xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>'
	    tab_text = tab_text + '<x:Name>Test Sheet</x:Name>';
	    tab_text = tab_text + '<x:WorksheetOptions><x:Panes></x:Panes></x:WorksheetOptions></x:ExcelWorksheet>';
	    tab_text = tab_text + '</x:ExcelWorksheets></x:ExcelWorkbook></xml></head><body>';
	    tab_text = tab_text + "<table border='1px'>";
	    var exportTable = $('#' + id).clone();
	    exportTable.find('input').each(function (index, elem) { $(elem).remove(); });
	    tab_text = tab_text + exportTable.html();
	    tab_text = tab_text + '</table></body></html>';
	    var data_type = 'data:application/vnd.ms-excel';
	    var ua = window.navigator.userAgent;
	    var msie = ua.indexOf("MSIE ");
	 
	    var fileName = title + '.xls';
	    //Explorer 환경에서 다운로드
	    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
	        if (window.navigator.msSaveBlob) {
	            var blob = new Blob([tab_text], {
	                type: "application/csv;charset=utf-8;"
	            });
	            navigator.msSaveBlob(blob, fileName);
	        }
	    } else {
	        var blob2 = new Blob([tab_text], {
	            type: "application/csv;charset=utf-8;"
	        });
	        var filename = fileName;
	        var elem = window.document.createElement('a');
	        elem.href = window.URL.createObjectURL(blob2);
	        elem.download = filename;
	        document.body.appendChild(elem);
	        elem.click();
	        document.body.removeChild(elem);
	    }
	}
	</script>
	
	
	<script>
	
	let lot_no_t1 = "";
	
	/* 1테이블 td 클릭시 2테이블 데이터 Ajax 출력 */
	$(document).ready(function () {
		$(document).on('click', '#resultTable tr', function(){
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var code = 'code='+td.eq(3).text();
			lot_no_t1 = td.eq(1).text();
			// {code=TEST01}
			// /lot/itemlist?codd=TEST01
			console.log("code 값 : "+code);
				$.ajax({
					type: 'GET', //method = "get"
					url : "/lot/itemlist", //action="/lot/itemlist"
					// <form action="/lot/itemlist" method = "get">
					data : code,
					success : function(result){
						console.log(result);
						$('#resultTable_2 > tbody').empty();
						$('#resultTable_3 > tbody').empty();
						if(result.length >= 1){
							let str = "";
							result.forEach(function(item){
								str+="<tr>"
									str+='<td style="text-align: center; font-weight: bold; font-size: 10pt;">'+item.rn+'</td>'
									str+='<td>'+item.code+'</td>'
									str+='<td>'+item.inspectionItem+'</td>'
									str+='<td>'+item.inspectionItemName+'</td>'
									str+='<td>'+item.qua+'</td>'
									str+='<td>'+item.sampleWater+'</td>'
									str+='<td>'+item.ac+'</td>'
									str+='<td>'+item.re+'</td>'
									str+='<td>'+item.usl+'</td>'
									str+='<td>'+item.sl+'</td>'
									str+='<td>'+item.lsl+'</td>'
									str+='<td>'+item.ucl+'</td>'
									str+='<td>'+item.cl+'</td>'
									str+='<td>'+item.lcl+'</td>'
									str+='<td>'+item.unit+'</td>'
									str+='<td>'+item.note+'</td>'
								str+="</tr>"
			        		});
						$('#resultTable_2 > tbody').html(str);
					}
				}
			});
		});
	});
	
	
/* 	$('textarea').on('keyup', function(){
		  // 남은 글자 수를 구한다.
		  var letterLength = $(this).val().length;
		  var remain = 200 - letterLength;
		  
		  // 문서 객체에 입력한다.
		  $('h1').html(remain);
		}); */
	
		let acData = 0;
		   /* 2테이블 td 클릭시 3테이블 데이터 출력 */
	    $(document).ready(function () {
	      $(document).on('click', '#resultTable_2 tr', function(){
	                           
	         var tr = $(this);
	         var td = tr.children();
	         
	         var code = td.eq(1).text();
	          console.log("자재코드 값 : "+code);

	          var inspectionItem = td.eq(2).text();
	          console.log("검사항목 값 : "+inspectionItem);
	         
	          let sampleWater = Number(td.eq(5).text());
	         console.log("시료수 : "+sampleWater);
	         
	         acData = Number(td.eq(6).text());
	         
	         sw_no = Number(td.eq(5).text());
	         
	         $('#resultTable_3 > tbody').empty();
	         var str = "";
	         
	         for (var i = 1; i <= sampleWater; i++) {
	            str+='<tr>'
	               str+="<td id='t_no" + i + "' style='text-align: center; font-weight: bold; font-size: 10pt;'>"+i+"</td>"
	               str+="<td>"+ i +"</td>"
	               str+="<td>"+lot_no_t1+"</td>"
	               str+="<td>"+code+"</td>"
	               str+="<td>"+inspectionItem+"</td>"
	               str+="<td style='text-align: center;'><input type='number' onkeyup='testing()' placeholder='결과값을 입력 해주세요.' style='text-align: center; width: 80%; border: 1px solid rgba(0, 0, 0, 0.125);'></td>"
	               str+="<td style='text-align: center;'><input type='text' id='pass' style='text-align: center; width: 80%; border: 1px solid rgba(0, 0, 0, 0.125);' disabled/</td>"
	            str+="</tr>"
	            }
	         $('#resultTable_3 > tbody').html(str);
	         
	      });
	   });
		
		
		function testing() { 
			var a=$(":focus").val();
			console.log(a);
			console.log("AC 값: "+acData);
			
			
			if(a <= acData){
		    	$(":focus").parent().parent().find("#pass").val("합격").css("color","green");
		    }else if(a > acData){
				$(":focus").parent().parent().find("#pass").val("불합격").css("color","red");
		    }else{
		    	$(":focus").parent().parent().find("#pass").val("-").css("color","black");
		    }
			
		};		
		

	</script>


		
</html>

