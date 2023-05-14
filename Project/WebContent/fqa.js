(() => {
	// sectionObj : section과 관련된 document 정보모음
    const sectionObj = {
        qa: document.querySelectorAll('.qa'),
        question: document.querySelectorAll('.question'),
        answer: document.querySelectorAll('.answer')
    }
	
	/////////////////////////////////////////////////////////
	// 일반함수
	
	// appearNavLine: 스크롤 발생시 nav 하단에 회색줄이 보이도록 설정
    // - parameter: x
    // - return: x
    const appearNavLine = function() {
        if(window.scrollY === 0) {
            document.querySelector('nav').style.borderBottom = null;
        }
        else {
            document.querySelector('nav').style.borderBottom = '1px solid lightgray';
        }
    }

    // activeAnswer: active클래스를 부여받은 엘리먼트에게 display:block을 적용
    // - parameter: active부여받은 qa의 번호
    // - return: x
    const activeAnswer = function(activeNum) {
        for(let i = 0; i < sectionObj.answer.length; i++){
            sectionObj.answer[i].style.display = 'none';
        }

        sectionObj.answer[activeNum].style.display = 'block';
    }
	
	/////////////////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        document.querySelector('.global-nav').id = 'fqa-nav';
        
        activeAnswer(0);
    })

    // 스크롤을 진행했을시에 발생되는 이벤트
    window.addEventListener("scroll", () => {
        appearNavLine();
    })
    
    // section영역 아코디언메뉴 이벤트
    for(let i = 0; i < sectionObj.question.length; i++){

        sectionObj.question[i].addEventListener("click", () => {
            for(let j = 0; j < sectionObj.qa.length; j++){
                sectionObj.qa[j].classList.remove('active');
            }

            sectionObj.qa[i].classList.add('active');
            activeAnswer(i);
        })
    }
})();