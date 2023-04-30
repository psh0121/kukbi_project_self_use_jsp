(() => {

    let currentScrollY = 0;     // 현재 scrollY 위치값
    let currentSection = 0;     // 현재 섹션 위치
    let sectionYOffset = 0;     // 현재 섹션에 따른 scrollY 상대값

    // sectionSet: n번째 섹션에 대한 정보집합
    const sectionSet = [
        // section0
        {
            height: 0,
            multiplayValue: 1.1,
            elemInfo: {
                section: document.querySelector('.section0'),
                message: document.querySelector('.section0-contents-message'),
                arrow: document.querySelector('.section0-arrow')
            },
            opacitySettingsValue: [0, 1],
            translateYSettingsValue: [3, 0]
        },

        // section1
        {
            height: 0,
            multiplayValue: 1.3,
            elemInfo: {
                section: document.querySelector('.section1'),
                message: document.querySelector('.section1-contents')
            },
            opacitySettingsValue: [0, 1],
            translateYSettingsValue: [3, 0]
        },

        // section2
        {
            height: 0,
            multiplayValue: 2.5,
            elemInfo: {
                section: document.querySelector('.section2')
            }
        },

        // section3
        {
            height: 0,
            multiplayValue: 1,
            elemInfo: {
                section: document.querySelector('.section3')
            }
        }
    ];

    /////////////////////////////////////////////////////////
    // 일반함수

    // setBlur: scrollY의 값의 위치에 따라 상단바 블러처리
    // - parameter: x
    // - return: x
    const setBlur = function() {
        if(window.scrollY === 0){
            document.querySelector('#about-nav').style.backdropFilter = 'blur(0px)';
        }
        else {
            document.querySelector('#about-nav').style.backdropFilter = 'blur(5px)';
        }
    }

    // setLayout: window창 크기에 대한 section 사이즈 영역 설정
    // - parameter: x
    // - return: x
    const setLayout = function() {
        for(let i = 0; i < sectionSet.length; i++){
            sectionSet[i].height = window.innerHeight * sectionSet[i].multiplayValue;
            sectionSet[i].elemInfo.section.style.height = `${sectionSet[i].height}px`;
        }
    }

    // getCurrentSection: scrollY 위치에 따른 현재 섹션위치 구하기
    // - parameter: x
    // - return: 현재 섹션 값
    const getCurrentSection = function() {
        let currentSection = 0;
        let sum = 0;
        let temp = 0;

        for(let i = 0; i < sectionSet.length; i++){
            sum += sectionSet[i].height;

            if(currentScrollY <= sum){
                currentSection = temp;
                break;
            }
            temp++;
        }
        return currentSection;
    }

    // getSectionYOffset: 현재 섹션 위치에 따른 scrollY의 상대값 구하기
    // - parameter: x
    // - return: 현재섹션 위치에 따른 scrollY 상대값
    const getSectionYOffset = function() {
        let yOffset = currentScrollY;

        for(let i = 0; i < currentSection; i++){
            yOffset -= sectionSet[i].height;
        }
        return yOffset;
    }

    // section0Animation: section0에서 발생되는 애니메이션
    // - parameter: x
    // - return: x
    const section0Animation = function() {
        const msg = sectionSet[0].elemInfo.message;
        const arrow = sectionSet[0].elemInfo.arrow;

        let opValue = sectionSet[0].opacitySettingsValue[0];
        let yValue = sectionSet[0].translateYSettingsValue[0];
        let tid1;
        let tid2;
        let appearFlag = true;

        tid1 = setInterval(() => {
            msg.style.opacity = opValue;
            arrow.style.opacity = opValue;
            opValue += 0.05;

            msg.style.transform = `translateY(${yValue}%)`;
            arrow.style.transform = `translateY(${yValue}%)`;
            yValue -= 0.05;

            if(
                (opValue >= sectionSet[0].opacitySettingsValue[1]) &&
                (yValue <= sectionSet[0].translateYSettingsValue[1])
            ){
                clearInterval(tid1);
                opValue = 0;
                yValue = 3;
                appearFlag = false;

                tid2 = setInterval(() => {
                    if(appearFlag){
                        arrow.style.opacity = opValue;
                        opValue += 0.05;

                        if(opValue >= sectionSet[0].opacitySettingsValue[1]){
                            appearFlag = false;
                        }
                    }
                    else{
                        arrow.style.opacity = opValue;
                        opValue -= 0.05;

                        if(opValue <= sectionSet[0].opacitySettingsValue[0]){
                            appearFlag = true;
                        }
                    }
                }, 40);
            }
        }, 10);
    }
    
    // section1Animation: section1에서 발생되는 애니메이션
    // - parameter: x
    // - return: x
    let firstTime = true;

    const section1Animation = function() {
        if(!firstTime) return;

        const msg = sectionSet[1].elemInfo.message;

        let opValue = sectionSet[1].opacitySettingsValue[0];
        let yValue = sectionSet[1].translateYSettingsValue[0];
        let tid;

        tid = setInterval(() => {
            msg.style.opacity = opValue;
            opValue += 0.05;

            msg.style.transform = `translateY(${yValue}%)`;
            yValue -= 0.05;

            if(
                (opValue >= sectionSet[1].opacitySettingsValue[1]) &&
                (yValue <= sectionSet[1].translateYSettingsValue[1])
            ){
                clearInterval(tid);
            }
        }, 10);

        firstTime = false;
    }

    // loadAnimation: 화면이 로드될 때에 한번만 발생되는 애니메이션
    // - parameter: x
    // - return: x
    const loadAnimation = function() {
        section0Animation();
    }
    
    // playAnimation: section에 맞는 애니메이션 실행
    // - parameter: x
    // - return: x
    let firstVisit = true;
    const playAnimation = function() {
        switch(currentSection) {
            case 1:
                section1Animation();
                break;
        }
    }

    /////////////////////////////////////////////////////////
    // 이벤트 핸들러

    // 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
    	document.querySelector('.global-nav').id = 'about-nav';
        setTimeout(function(){
            window.scrollTo(0, 0);
        }, 100);

        currentScrollY = window.scrollY;
        currentSection = getCurrentSection();
        sectionYOffset = getSectionYOffset();

        setLayout();
        loadAnimation();
    })

    // 스크롤을 진행했을시에 발생되는 이벤트
    window.addEventListener("scroll", () => {
        currentScrollY = window.scrollY;
        currentSection = getCurrentSection();
        sectionYOffset = getSectionYOffset();
        
        setBlur();
        playAnimation();
    })

    // resize시 발생되는 이벤트
    window.addEventListener("resize", () => {
        currentScrollY = window.scrollY;
        currentSection = getCurrentSection();
        sectionYOffset = getSectionYOffset();

        setLayout();
    })

    // section0 이벤트
    document.querySelector('.section0-arrow').addEventListener("click", () => {
        window.scrollTo({left: 0, top: sectionSet[0].height+1, behavior: "smooth"});
    })

})();