(() => {

    // sectionSet: n번째 섹션에 대한 정보집합
    const sectionSet = [
        // section0
        {
            height: 0,
            multiplayValue: 1,
            elemInfo: {
                section: document.querySelector('.section0')
            }
        },

        // section1
        {
            height: 0,
            multiplayValue: 1,
            elemInfo: {
                section: document.querySelector('.section1')
            }
        },

        // section2
        {
            height: 0,
            multiplayValue: 1,
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

    /////////////////////////////////////////////////////////
    // 이벤트 핸들러

    // 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
    	document.querySelector('.global-nav').id = 'about-nav';
        setTimeout(function(){
            window.scrollTo(0, 0);
        }, 100);

        setLayout();
    })

    // 스크롤을 진행했을시에 발생되는 이벤트
    window.addEventListener("scroll", () => {
        setBlur();
    })

    // resize시 발생되는 이벤트
    window.addEventListener("resize", () => {
        setLayout();
    })
})();