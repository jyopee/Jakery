Date.prototype.yyyymmdd = function() { //객체의 모든 타입은 prototype사용해 메소드 만들수 있따.
	let y = this.getFullYear();
	let m = this.getMonth() + 1; //월은 0부터 시작
	let d = this.getDate();
	let ymd = y + '-' + ('0' + m).slice(-2) + '-' + ('0' + d).slice(-2);
	return ymd;
}
let today = new Date();

const showFields = {
	prOrderId: "주문번호",
	prName: "상품명",
	prPrice: "주문 금액",
	prOrderDate: "주문날짜",
	prOrderState: "주문상태"
}
const addColumn = {
	col: ['select']
}
const addColumn2 ={
	opt1: ['option','------'],
	opt2: ['option','배송준비'],
	opt3: ['option','배송중'],
	opt4: ['option','배송완료']	
}
function makeTr(data) { // 리스트 출력
	console.log(data);
	const parent = document.querySelector('#order table tbody');
	
	for (const el of data) {
		let tr = document.createElement('tr')
		
		console.log(el)
		for (const field in showFields) {
			console.log(field)
			let td = document.createElement('td')
			td.innerText = el[field]
			tr.append(td);
			

		}
		for (const col in addColumn) {
		let td = document.createElement('td')
		let elem = document.createElement(addColumn[col][0])
		elem.setAttribute('name','prOrderState')
		td.append(elem);
		tr.append(td);
		
		for(const opt in addColumn2){
			
			let option = document.createElement(addColumn2[opt][0])
			option.innerText = addColumn2[opt][1]
			option.value = addColumn2[opt][1]
			elem.append(option);
			
		}
	}
		parent.append(tr);
	}
}

fetch('adminOrderListAjax.do')
	.then((result) => result.json()) // stream -> object.
	.then((data) => {
		console.log(data);
		//table형식.
		makeTr(data)

		let trs = document.querySelectorAll('#order tbody tr');
		for (const trElem of trs) {
			console.log()
			trElem.setAttribute('id', trElem.children[0].textContent)
			trElem.querySelector('td:nth-child(6)>select').setAttribute('onchange','prOrderUpdateFnc('+trElem.children[0].textContent+')')


		}
	})
	.catch(function(err) {
		console.log(err);
	})
	
function prOrderUpdateFnc(i){
	
	let prOrderId = document.getElementById(i).children[0].innerText; 
	console.log(prOrderId)
	let prOrderState =  document.getElementById(i).children[5].firstChild.value;
	fetch('adminOrderUpdate.do',{
		method: 'post',
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		body: 'prOrderId=' +prOrderId + '&prOrderState=' + prOrderState
	})
	.then(result => result.json())
	.then(result => {
		console.log(result)
		
		//화면닫고 서버에서 가져온 json데이터를 활용해서 목록에서 값을 변경

		document.getElementById('frm').submit();
		
	})
	.catch(err => console.log(err))
}
