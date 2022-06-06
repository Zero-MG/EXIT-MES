<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>

	<%@ include file="../includes/header.jsp" %>
	
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">검사 항목 등록</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">품질관리</li>
                            <li class="breadcrumb-item active">검사항목등록</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
								검사가 필요한 항목을 등록 하거나, 검사 항목 조회가 가능합니다.
                                <br>
                            </div>
                        </div>
                        
                        <div>
                        	<a class="btn btn-primary" href="/inspection/item/reg" target="_blank" onClick="window.open(this.href, '_blank', 'width=600, height=800'); return false;">
                        	항목등록</a>
                        	<a class="btn btn-primary" href="/inspection/item/del" target="_blank" onClick="window.open(this.href, '_blank', 'width=600, height=800'); return false;">
                        	삭제</a>
                        	<a class="btn btn-primary" href="/inspection/item/mod" target="_blank" onClick="window.open(this.href, '_blank', 'width=600, height=800'); return false;">
                        	수정</a>
                        	
                        	<form name="search-form" autocomplete="off" style="float: right;" onsubmit="return false">
		                       	<div class="input-group" style="float: right; width: 260px">
				                    <input class="form-control" type="text" placeholder="검색어 입력" aria-label="검색어 입력" aria-describedby="btnNavbarSearch" name="keyword" onkeypress="if( event.keyCode == 13 ){getSearchList();}" />
				                    <button class="btn btn-primary" id="btnNavbarSearch" type="button" onclick="getSearchList();"><i class="fas fa-search"></i></button>
				                </div>
				                
	                        	<div style="float: right;">
	                        		<!-- 옵션  selected="" -->
		                        	<select class="dataTable-selector" name="type">
			                        	<option selected value="inspectionitem">검사항목</option>
			                        	<option value="inspectionitemname">검사항목명</option>
			                        	<option value="qua">정성정량</option>
			                        	<option value="samplewater">시료수</option>
		                        	</select>
	                        	</div>
                        	</form>
                        </div>
                        
                        <br>

                        <%--테이블폼 상단 옵션--%>
                        <div class="card mb-4">
                            <div class="card-header">
								<div style="float: left; padding: 0.375rem 0.5rem;">
									<i class="fas fa-table me-1"></i>
									<b>항목 검색내역</b>
								</div>

								<div class="btn btn-success" onclick="fnExcelReport('resultTable','item_List');" style="float: right;">
									<i class="fas fa-table me-1"></i>
									<a>Excel 다운로드</a>
								</div>
                            </div>

                            <div class="card-body-table">
								<table id="resultTable" class="dataTable-table">
									<thead>
                                        <tr>
                                        	<th>No</th>
											<th>검사항목<span class="form-required">*</span></th>
								            <th>검사항목명</th>
								            <th>정성정량</th>
								            <th>시료수</th>
								            <th>AC값</th>
								            <th>RE값</th>
								            <th>USL</th>
								            <th>SL</th>
								            <th>LSL</th>	
								            <th>UCL</th>
								            <th>CL</th>
								            <th>LCL</th>
								            <th>단위</th>
								            <th>생성일자</th>
								            <th>수정일자</th>
								            <th>폐기여부</th>
								            <th>비고</th>
										</tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="vo" items="${list}">
											<tr>
												<td style="text-align: center; font-weight: bold; font-size: 10pt;">${vo.rn}</td>
												<td>${vo.inspectionItem}</td>
												<td>${vo.inspectionItemName}</td>
												<td>${vo.qua}</td>
												<td>${vo.sampleWater}</td>
												<td>${vo.ac}</td>
												<td>${vo.re}</td>
												<td>${vo.usl}</td>
												<td>${vo.sl}</td>
												<td>${vo.lsl}</td>
												<td>${vo.ucl}</td>
												<td>${vo.cl}</td>
												<td>${vo.lcl}</td>
												<td>${vo.unit}</td>
												<td>${vo.df_creationDate}</td>
												<td>${vo.df_modifiedDate}</td>
												<td>${vo.disposal}</td>
												<td>${vo.note}</td>
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>

	<%@ include file="../includes/footer.jsp" %>
	
	<script>
		// getSearchList
		function getSearchList(){
			$.ajax({
				type: 'GET',
				url : "/inspection/item/getSearchList",
				data : $("form[name=search-form]").serialize(),
				success : function(result){
					//테이블 초기화
					$('#resultTable > tbody').empty();
					if(result.length >= 1){
						let str = "";
						result.forEach(function(item){
							str+='<tr>'
								str+='<td style="text-align: center; font-weight: bold; font-size: 10pt;">'+item.rn+'</td>'
								str+="<td>"+item.inspectionItem+"</td>"
								str+="<td>"+item.inspectionItemName+"</td>"
								str+="<td>"+item.qua+"</td>"
								str+="<td>"+item.sampleWater+"</td>"
								str+="<td>"+item.ac+"</td>"
								str+="<td>"+item.re+"</td>"
								str+="<td>"+item.usl+"</td>"
								str+="<td>"+item.sl+"</td>"
								str+="<td>"+item.lsl+"</td>"
								str+="<td>"+item.ucl+"</td>"
								str+="<td>"+item.cl+"</td>"
								str+="<td>"+item.lcl+"</td>"
								str+="<td>"+item.unit+"</td>"
								str+="<td>"+item.df_creationDate+"</td>"
								str+="<td>"+item.df_modifiedDate+"</td>"
								str+="<td>"+item.disposal+"</td>"
								str+="<td>"+item.note+"</td>"
							str+="</tr>"
		        		});
						$('#resultTable > tbody').html(str);
					}
				}
			});
		}
	</script>
	
	<script>
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
		
</html>

