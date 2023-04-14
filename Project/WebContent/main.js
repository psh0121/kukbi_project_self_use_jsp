(() => {
	
	let currentScrollY = 0;		// 현재 scrollY 위치값
	let currentSection = 0;		// 현재 섹션 위치
	let sectionYOffset = 0;		// 현재 섹션에 따른 scrollY 상대값
	
	// sectionSet: n번째 섹션에 대한 정보집합
	const sectionSet = [
		// section0
		{
			height: 0,
			multiplyValue: 0.9,
			elemInfo: {
				section: document.querySelector('.section0'),
				message: [
					document.querySelector('.section0-contents-message0'),
					document.querySelector('.section0-contents-message1')
				],
				img: document.querySelector('.section0-contents-img')
			},
			opacitySettingsValue: [0, 1],
			translateYSettingsValue: [20, 0]
		},
		
		// section1
		{
			height: 0,
			multiplyValue: 5,
			elemInfo: {
				section: document.querySelector('.section1'),
				img: document.querySelector('.section1-contents-img'),
				message: [
                    document.querySelector('.section1-contents-message0'),
                    document.querySelector('.section1-contents-message1'),
                    document.querySelector('.section1-contents-message2'),
                    document.querySelector('.section1-contents-message3')
                ]
			},
			opacitySettingsValues: {
                img: [0, 1, {start: 0.00, end: 0.09}],
                message: [
                    [0, 1, {start: 0.10, end: 0.34}],
                    [0, 1, {start: 0.35, end: 0.59}]
                ],
                fade_out: [1, 0, {start: 0.70, end: 0.84}]
            },
            tanslateYSettingsValues: {
                img: [20, 0, {start: 0.00, end: 0.09}],
                message: [
                    [20, 0, {start: 0.10, end: 0.34}],
                    [20, 0, {start: 0.35, end: 0.59}]
                ],
                fade_out: [0, 20, {start: 0.70, end: 0.84}]
            }
		},
		
		// section2
		{
			height: 0,
			multiplyValue: 1.2,
			elemInfo: {
				section: document.querySelector('.section2'),
				content: [
					document.querySelector('.section2-content0'),
                    document.querySelector('.section2-content1'),
                    document.querySelector('.section2-content2')
				]
			},
			opacitySettingsValues: {
                content: [0, 1, {start: 0, end: 0.19}]
            },
            tanslateYSettingsValues: {
                content: [20, 0, {start: 0, end: 0.19}]
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
	
	// getCurrentSection: scrollY 위치에 따른 현재 섹션위치 구하기
	// - parameter: x
	// - return: 현재 섹션 위치
	const getCurrentSection = function(){
		let currentSection = 0;
		let sum = 0;
		let index = 0;
		
		for(let i = 0; i < sectionSet.length; i++){
			sum += sectionSet[i].height;
			
			if(currentScrollY <= sum) {
				currentSection = index;
				break;
			}
			
			index++;
		}
		
		return currentSection;
	}
	
	// getSectionYOffset: 현재 섹션 위치에 따른 scrollY의 상대값 구하기
	// - parameter: x
	// - return: 현재 섹션 위치에 따른 scrollY 상대값
	const getSectionYOffset = function() {
		let yOffset = currentScrollY;
		
		for(let i = 0; i < currentSection; i++){
			yOffset -= sectionSet[i].height;
		}
		
		return yOffset;
	}
	
	// setBodyID: 현재 섹션에 따라 body에 id설정
	// - parameter: 현재섹션
	// - return: x
	const setBodyID = function(currentSection){
		//console.log(currentSection);
		document.body.setAttribute('id', `current-section${currentSection}`);
		
	}
	
	// calcValue: 애니메이션에 적용하기 위한 값을 css화 한다.
	// - parameter: 각영역의 설정값 ([0, 1, {start: 0.05, end: 0.14}])
	// - return: css화 한 값
	const calcValue = function(value){
		let rate;
		let result;
		let height = sectionSet[currentSection].height;
		
		// 비율에 기반한 css화한 값
		let startValue = height * value[2].start;
		let endValue = height * value[2].end;
		let heightValue = endValue - startValue;
		
		// 설정범위에서 벗어났을 경우 값의 가장 끝 값이 value[0]과 value[1]로
		// 임의로 값을 지정해 준다.
		if(sectionYOffset < startValue){
			result = value[0];
		}
		else if(sectionYOffset > endValue){
			result = value[1];
		}
		else {
			rate = (sectionYOffset - startValue) / heightValue;
			result = (rate * (value[1] - value[0])) + value[0];
		}
		return result;
	}
	
	// section0Animation: section0에서 발생되는 애니메이션
	// - parameter: x
	// - return: x
	const section0Animation = function(){
		let opValue = sectionSet[0].opacitySettingsValue[0];
        let yValue = sectionSet[0].translateYSettingsValue[0];
		let tid;
		
		tid = setInterval(() => {
			sectionSet[0].elemInfo.message[0].style.opacity = opValue;
			sectionSet[0].elemInfo.message[1].style.opacity = opValue;
			sectionSet[0].elemInfo.img.style.opacity = opValue;
			opValue += 0.05;
			
			sectionSet[0].elemInfo.message[0].style.transform = `translateY(${yValue}%)`;
			sectionSet[0].elemInfo.message[1].style.transform = `translateY(${yValue}%)`;
			sectionSet[0].elemInfo.img.style.transform = `translateY(${yValue}%)`;
			yValue --;
			
			if((opValue >= sectionSet[0].opacitySettingsValue[1]) && 
				(yValue <= sectionSet[0].translateYSettingsValue[1])){
				clearInterval(tid);
				opValue = 0;
				yValue = 20;
			}
		}, 40);
	}
	
	// section1ImgSettings: section1 화면에 나타날 이미지 크기 설정
	// - parameter: x
	// - return: x
	const section1ImgSettings = function(){
		const heightSize = window.innerHeight * 0.8;
		sectionSet[1].elemInfo.img.style.height = `${heightSize}px`;
	}
	
	// section1Animation: section1에서 발생되는 애니메이션
	// - parameter: x
	// - return: x
	const section1Animation = function(){
		const scrollRate = sectionYOffset / sectionSet[1].height;
		let opValue;
		let yValue;
		
		const elemInfo = sectionSet[1].elemInfo;
        const opInfo = sectionSet[1].opacitySettingsValues;
        const yInfo = sectionSet[1].tanslateYSettingsValues;
        
        if((scrollRate >= 0) && (scrollRate < 0.10)){
        	opValue = calcValue(opInfo.img);
        	yValue = calcValue(yInfo.img);
        	
        	elemInfo.img.style.opacity = opValue;
            elemInfo.img.style.transform = `translateY(${yValue}%) translateX(-50%)`;
        }
        else if((scrollRate >= 0.10) && (scrollRate < 0.35)){
            opValue = calcValue(opInfo.message[0]);
            yValue = calcValue(yInfo.message[0]);

            elemInfo.message[0].style.opacity = opValue;
            elemInfo.message[0].style.transform = `translateY(${yValue}%)`;

            elemInfo.message[2].style.opacity = opValue;
            elemInfo.message[2].style.transform = `translateY(${yValue}%)`;
        }
        else if((scrollRate >= 0.35) && (scrollRate < 0.60)){
            opValue = calcValue(opInfo.message[1]);
            yValue = calcValue(yInfo.message[1]);

            elemInfo.message[1].style.opacity = opValue;
            elemInfo.message[1].style.transform = `translateY(${yValue}%)`;

            elemInfo.message[3].style.opacity = opValue;
            elemInfo.message[3].style.transform = `translateY(${yValue}%)`;
        }
        else if((scrollRate >= 0.70) && (scrollRate < 0.84)){
            opValue = calcValue(opInfo.fade_out);
            yValue = calcValue(yInfo.fade_out);

            elemInfo.img.style.opacity = opValue;
            elemInfo.img.style.transform = `translateY(${yValue}%) translateX(-50%)`;

            elemInfo.message[0].style.opacity = opValue;
            elemInfo.message[0].style.transform = `translateY(${yValue}%)`;
            
            elemInfo.message[1].style.opacity = opValue;
            elemInfo.message[1].style.transform = `translateY(${yValue}%)`;
            
            elemInfo.message[2].style.opacity = opValue;
            elemInfo.message[2].style.transform = `translateY(${yValue}%)`;
            
            elemInfo.message[3].style.opacity = opValue;
            elemInfo.message[3].style.transform = `translateY(${yValue}%)`;
        }
        else if(scrollRate >= 0.85){
            elemInfo.img.style.opacity = 0;
            elemInfo.img.style.transform = `translateY(0%) translateX(-50%)`;

            elemInfo.message[0].style.opacity = 0;
            elemInfo.message[0].style.transform = `translateY(0%)`;
            
            elemInfo.message[1].style.opacity = 0;
            elemInfo.message[1].style.transform = `translateY(0%)`;
            
            elemInfo.message[2].style.opacity = 0;
            elemInfo.message[2].style.transform = `translateY(0%)`;
            
            elemInfo.message[3].style.opacity = 0;
            elemInfo.message[3].style.transform = `translateY(0%)`;
        }
	}
	
	// section2Animation: section2에서 발생되는 애니메이션
	// - parameter: x
	// - return: x
	const section2Animation = function(){
		const scrollRate = sectionYOffset / sectionSet[2].height;
		let opValue;
		let yValue;
		
		const elemInfo = sectionSet[2].elemInfo;
		const opInfo = sectionSet[2].opacitySettingsValues;
        const yInfo = sectionSet[2].tanslateYSettingsValues;
        
        if((scrollRate >= 0) && (scrollRate < 0.20)){
            opValue = calcValue(opInfo.content);
            yValue = calcValue(yInfo.content);

            elemInfo.content[0].style.opacity = opValue;
            elemInfo.content[0].style.transform = `translateY(${yValue}%)`;
            elemInfo.content[1].style.opacity = opValue;
            elemInfo.content[1].style.transform = `translateY(${yValue}%)`;
            elemInfo.content[2].style.opacity = opValue;
            elemInfo.content[2].style.transform = `translateY(${yValue}%)`;
        }
        else if(scrollRate >= 0.20){
            elemInfo.content[0].style.opacity = 1;
            elemInfo.content[0].style.transform = `translateY(0%)`;
            elemInfo.content[1].style.opacity = 1;
            elemInfo.content[1].style.transform = `translateY(0%)`;
            elemInfo.content[2].style.opacity = 1;
            elemInfo.content[2].style.transform = `translateY(0%)`;
        }
	}
	
	// loadAnimation: load된 이후에 발생될 애니메이션
	// - parameter: x
	// - return: x
	const loadAnimation = function(){
		section0Animation();
		section1ImgSettings();
	}
	
	// playAnimation: section에 맞는 애니메이션 실행
	// - parameter: x
	// - return: x
	const playAnimation = function(){
		
		switch(currentSection){
		case 0:
			break;
		case 1:
			section1Animation();
			break;
		case 2:
			section2Animation();
			break;
		}
	}
	
	/////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
	window.addEventListener("load", () => {
		currentScrollY = window.scrollY;
		currentSection = getCurrentSection();
		sectionYOffset = getSectionYOffset();
		
		setLayout();
		setBodyID(currentSection);
		loadAnimation();
	})
	
	// 스크롤을 진행했을 시에 발생되는 이벤트
	window.addEventListener("scroll", () => {
		currentScrollY = window.scrollY;
		currentSection = getCurrentSection();
		sectionYOffset = getSectionYOffset();
		
		setBodyID(currentSection);
		playAnimation();
	})
	
})();