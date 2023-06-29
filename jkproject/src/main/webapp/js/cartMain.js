/**
 * 
 */

const showId ={
    prCartId : "prCartId"	
}


//tbody만들기 1
function makeTbd(dataList) {
	for (const data of dataList) {
		makeTr(data);
	}
}

const addColumn = {
	col1: ['button', 'Delete'],
}

//tbody에 tr만들기 
function makeTr(data) {

	let tbd = document.getElementById('tbl').children[1]

	let th = document.getElementById('thd')
	th.setAttribute('style', 'text-align:center;');

	let td1 = document.createElement('td');
	let td2 = document.createElement('td');
	let td3 = document.createElement('td');
	let td4 = document.createElement('td');
	let td5 = document.createElement('td');

	var cnt = document.createElement('input');
	cnt.setAttribute('type', 'number');
	cnt.setAttribute('style', 'width:90px; text-align:center;');
	cnt.setAttribute('min', 1);
	cnt.setAttribute('class', `updown${data.prCartId}`);
	cnt.setAttribute('onclick', `prSum(${data.prCartId})`);
	cnt.value = data.prAmount;

	var total = document.createElement('input');
	total.setAttribute('readonly', 'ture');
	total.setAttribute('class', `inputValue${data.prCartId}`);
	total.setAttribute('style', 'width:150px; text-align:center;');
	total.value = data.total;

	var delBtn = document.createElement('button');
	delBtn.setAttribute('type','button');
	delBtn.innerText = 'Delete';
	delBtn.setAttribute('onclick',`delAjaxFetch(${data.prCartId})`);


	let tr = document.createElement('tr');
	tr.setAttribute('class', `prCartId${data.prCartId}`);
	tr.setAttribute('style', 'text-align:center;')


	td1.innerHTML = '<img src="' + data.prImgName + '" alt="" style=" width: 100px;" >'
	td2.innerHTML = data.prName;
	td3.innerHTML = data.prPrice;
	td4.append(cnt);
	td5.append(total);

	tr.append(td1);
	tr.append(td2);
	tr.append(td3);
	tr.append(td4);
	tr.append(td5);
	// tr.append(delBtn);

	let td = document.createElement('td');

	td.append(delBtn);
	tr.append(td);
	/*
	for (const col in addColumn) {
		
		let elem = document.createElement(addColumn[col][0])
		elem.setAttribute('class', 'canscelbtn')
		elem.innerText = addColumn[col][1];
		if (addColumn[col][0] == 'input') {
			elem.setAttribute('type', addColumn[col][1])
		}
		
		
	}
	*/
	tbd.append(tr);

}

window.onload = function() {
	fetch('AjaxCartList.do')
		.then((result) => result.json())
		.then((data) => {
			if(data==null) return;
			makeTbd(data)
/*			let trs = document.querySelectorAll('#tbl tbody tr');
			
			for(const trElem of trs){
				let i=0;
				trElem.setAttribute('id', data[i].prCartId)
				i++;
				//삭제버튼
				trElem.querySelector('td:nth-child(6)>button').addEventListener('click', delAjaxFetch)
			}*/

		})

}
			
			
			
		

function prSum(prCartId) {

	let price = document.getElementsByClassName(`updown${prCartId}`)[0].parentNode.parentNode.children[2].textContent;
	let amount = document.getElementsByClassName(`updown${prCartId}`)[0].parentNode.parentNode.children[3].children[0].value;

	let pSum = amount * Number(price)

	document.getElementsByClassName(`inputValue${prCartId}`)[0].value = pSum;

	fetch('cartUpdate.do', {
		method: 'post', //페이지 요청 방식 지정. get, post요청(추가,수정,삭제)
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
			//application/json, multipary/form-data
		},
		body: `prCartId=${prCartId}&amount=${amount}`
	})
		
		.then((data) => {
			console.log("@@@@@@@@@@@@@@@@@");
			console.log(data);
			if(data.status == 200){
				null;
			}else{
				alert("NONONOONONONO!")
			}
			

		})

	/*
	fetch("https://jsonplaceholder.typicode.com/posts", {
			 method: "POST",
			headers: {
		"Content-Type": "application/json",
			},
			body: JSON.stringify({
		title: "Test",
				body: "I am testing!",
		userId: 1,
			}),
		}).then((response) => console.log(response));
	*/

}


//function inputValueChange(){
//	var inputValue =document.getElementById('inputValue').value;
//	console.log(inputValue)
//}



//장바구니 삭제 
function delAjaxFetch(prCartId) {

	// return alert(prCartId);
	
	fetch('AjaxCartDel.do', {
		method: 'post', //페이지 요청 방식 지정. get, post요청(추가,수정,삭제)
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
			//application/json, multipary/form-data
		},
		body: 'prCartId=' + prCartId
	})
		.then(result => result.json())
		.then(result => {
			if (result.retCode == 'Success') {  //새로고침안하고 바로 지우기 기능 
				console.log(result)
				document.getElementsByClassName(`prCartId${result.prCartId}`)[0].remove();
			} else if (result.retCode == 'Fail') {
				alert('삭제 처리중 오류가 발생하였습니다.')
			}
		})
		.catch(err => console.log(err))

}


//목록 가져오기 


