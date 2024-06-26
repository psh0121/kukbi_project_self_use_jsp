(() => {
	// sectionObj : section과 관련된 document 정보모음
    const sectionObj = {
        qa: document.querySelectorAll('.qa'),
        question: document.querySelectorAll('.question'),
        answer: document.querySelectorAll('.answer')
    }
	
	/////////////////////////////////////////////////////////
	// 일반함수
    
    // setLayout: window창 크기에 대한 section 사이즈 영역 설정
    // - parameter: x
    // - return: x
    const setLayout = function() {
        // section 사이즈조정
        const sectionHeight = window.innerHeight * 0.9;
        document.querySelector('section').style.height = `${sectionHeight}px`;

        // article 사이즈조정
        const articleHeight = window.innerHeight * 0.3;
        document.querySelector('article').style.height = `${articleHeight}px`;

        // article내 img 사이즈 조정
        const imgHeight = articleHeight * 0.5;
        document.querySelector('.article-contents img').style.height = `${imgHeight}px`;
    }
    
    // setBodyHight: 무한으로 내려가는 스크롤을 막기 위해 내용의 길이만큼 body의 높이를 설정
    // - parameter: x
    // - return: x
    const setBodyHight = function() {
    	const sectionH = Number(document.querySelector('section').style.height.replace('px', ''));
    	const articleH = Number(document.querySelector('article').style.height.replace('px', ''));
    	const footerH = Number(document.querySelector('footer').style.height.replace('px', ''));
    	
    	document.querySelector('body').style.height = `${sectionH + articleH + footerH}px`;
    }
	
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
        document.querySelectorAll('.qa')[0].classList.add('active');
        setLayout();
        setBodyHight();
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
    
    // article영역 이벤트
    document.querySelector('article').addEventListener("click", () => {
        location.href = './contact.jsp';
    })
})();