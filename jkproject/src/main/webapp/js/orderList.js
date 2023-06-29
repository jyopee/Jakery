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


function makeTr(data) { // 리스트 출력

	const parent = document.querySelector('#order table tbody');

	for (const el of data) {

		let tr = document.createElement('tr')


		for (const field in showFields) {
			let td = document.createElement('td')
			td.setAttribute('id', field)
			td.innerText = el[field]
			tr.append(td);


		}
		parent.append(tr);

	}
}

fetch('orderListAjax.do')
	.then((result) => result.json()) // stream -> object.
	.then((data) => {
		console.log(data);
		//table형식.
		makeTr(data)

		let trs = document.querySelectorAll('#order table tbody tr');
		for (const trElem of trs) {
			console.log(trElem)
			trElem.setAttribute('id', trElem.children[0].textContent)


		}
	})
	.catch(function(err) {
		console.log(err);
	})

