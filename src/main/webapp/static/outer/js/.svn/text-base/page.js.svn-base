/**分页js start*/
/**
* 1,2分别表示，上一页，下一页
*/
function jumpToPage(toWhere,pageSize,curPageNum){
	if(toWhere==1){
		curPageNum = curPageNum - 1;
	}else if(toWhere==2){
		curPageNum = curPageNum + 1;   
	}
	var url = document.getElementById("pageUrl").value;
	if(document.getElementById("queryStr") != null){
		var queryStr = document.getElementById("queryStr").value;
		location.href = url + "?pageNo="+curPageNum+"&pageSize="+pageSize+"&queryStr=" + encodeURI(encodeURI(queryStr));
	}else{
		location.href = url + "?pageNo="+curPageNum+"&pageSize="+pageSize;
	}
}
//跳转指定页数
function jumpTo(pageSize,selectPage){
	//start = (selectPage-1)*pageSize+1;
	var url = document.getElementById("pageUrl").value;
	//var queryStr = document.getElementById("queryStr").value;
	location.href = url + "?pageNo="+selectPage+"&pageSize="+pageSize;
}

function writePagenumButton(pageSize,totalPageCount,curPageNum,total){
	//totalPageCount = Number(totalPageCount.replace(",",""));
	//curPageNum = Number(curPageNum.replace(",",""));
 	var startPage = 1;
	var content="";
	if(curPageNum==1){
		content += '<span class="prev">上一页</span>';
	}else{
		content += '<a href="javascript:jumpToPage(1,'+pageSize+','+curPageNum+')" id="prePage">上一页</a>';
	}
	if(totalPageCount>5){
		if(curPageNum==startPage){
			content += '<span class="current">1</span>';
		}else{
			content += '<a href="javascript:jumpTo('+pageSize+','+startPage+')" id="page-'+startPage+'">'+startPage+'</a>';
		}
		if((curPageNum-1>2)&&(totalPageCount-curPageNum>2)){
			content += '<span>...</span>';
			content += '<a href="javascript:jumpTo('+pageSize+','+(curPageNum-1)+')" id="page-'+(curPageNum-1)+'">'+(curPageNum-1)+'</a>';
			content += '<span class="current">' + curPageNum + '</span>';
			//content += '<a href="javascript:jumpTo('+pageSize+','+curPageNum+')" id="page-'+curPageNum+'">'+curPageNum+'</a>';
			content += '<a href="javascript:jumpTo('+pageSize+','+(curPageNum+1)+')" id="page-'+(curPageNum+1)+'">'+(curPageNum+1)+'</a>';
			content += '<span>...</span>';
		}else if(curPageNum-1<=2){
			for(i=2;i<5;i++){
				if(curPageNum==i){
					content += '<span class="current">' + curPageNum + '</span>';
				}else{
					content += '<a href="javascript:jumpTo('+pageSize+','+i+')" id="page-'+i+'">'+i+'</a>';
				}
			}
			content += '...';
		}else if(totalPageCount-curPageNum<=2){
			content += '...';
			for(i=totalPageCount-3;i<totalPageCount;i++){
				if(curPageNum==i){
					content += '<span class="current">' + curPageNum + '</span>';
				}else{
					content += '<a href="javascript:jumpTo('+pageSize+','+i+')" id="page-'+i+'">'+i+'</a>';
				}
			}
		}
		if(curPageNum == totalPageCount){
			content += '<span class="current">' + curPageNum + '</span>';
		}else{
			content += '<a href="javascript:jumpTo('+pageSize+','+totalPageCount+')" id="page-'+totalPageCount+'">'+totalPageCount+'</a>';
		}
	}else{
		for(i=1;i<totalPageCount+1;i++){
			if(curPageNum==i){
				content += '<span class="current">' + curPageNum + '</span>';
			}else{
				content += '<a href="javascript:jumpTo('+pageSize+','+i+')" id="page-'+i+'">'+i+'</a>';
			}
		}
	}
	if(totalPageCount==curPageNum){
		content += ' <span class="next" href="#">下一页</span>';
	}else{
		content += '<a href="javascript:jumpToPage(2,'+pageSize+','+curPageNum+')" id="nextPage">下一页</a>';
	}
	content += '<span>共'+total+'条';
	document.write(content);
	/**if(curPageNum==1){
		$("#prePage").attr("disabled",true);
	}
	if(totalPageCount==curPageNum){
		$("#nextPage").attr("disabled",true);
	}
	$("#page-"+curPageNum).addClass("page-selcet");**/
}
/**分页js end*/