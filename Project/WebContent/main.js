(() => {
	
	// sectionSet: n번째 섹션에 대한 정보집합
	const sectionSet = [
		// section0
		{
			height: 0,
			multiplyValue: 0.9,
			elemInfo: {
				section: document.querySelector('.section0')
			}
		},
		
		// section1
		{
			height: 0,
			multiplyValue: 3,
			elemInfo: {
				section: document.querySelector('.section1')
			}
		},
		
		// section2
		{
			height: 0,
			multiplyValue: 4,
			elemInfo: {
				section: document.querySelector('.section2')
			}
		},
	];
	
	/////////////////////////////////////////////
	// 일반함수
	
	// setLayout: window창 크기에 대한 section 사이즈 영역 설정
	// - parameter: x
	// - return: x
	const setLayout = function(){
		for(let i = 0; i < sectionSet.length; i++){
			
			// 설정한 배율에 따라 화면크기를 설정하고 각 section에 크기를 적용한다.
			sectionSet[i].height = window.innerHeight * sectionSet[i].multiplyValue;
			sectionSet[i].elemInfo.section.style.height = `${sectionSet[i].height}px`;
		}
	}
	
	/////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
	window.addEventListener("load", () => {
		setLayout();
	})
})();