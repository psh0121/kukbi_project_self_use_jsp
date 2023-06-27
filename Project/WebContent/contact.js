(() => {
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

    // showInfo: 입력받은 분류항목만 화면에 표시될 수 있도록 함
    // - parameter: 분류항목 (공지/문의/신고)
    // - return: x
    const showInfo = function(category) {
        let categoryObj = {
            'notice': document.querySelector('.notice-content'),
            'inquiry': document.querySelector('.inquiry-content'),
            'report': document.querySelector('.report-content')
        };

        for(let [key, doc] of Object.entries(categoryObj)) {
            if(key === category) {
                doc.style.display = '';
            }

            else {
                doc.style.display = 'none';
            }
        }
    }
	
	/////////////////////////////////////////////////////////
	// 이벤트 핸들러
	
	// 로딩된 후에 발생되는 이벤트
    window.addEventListener("load", () => {
        document.querySelector('.global-nav').id = 'contact-nav';
    })
	
	// 스크롤을 진행했을시에 발생되는 이벤트
	window.addEventListener("scroll", () => {
        appearNavLine();
    })

    // 공지, 문의, 신고버튼 이벤트
    document.querySelector(".notice-btn").addEventListener("click", () => {
        console.log('공지');
        showInfo('notice');
    })

    document.querySelector(".inquiry-btn").addEventListener("click", () => {
        console.log('문의');
        showInfo('inquiry');
    })

    document.querySelector(".report-btn").addEventListener("click", () => {
        console.log('신고');
        showInfo('report');
    })

    // 글쓰기 버튼 이벤트
    document.querySelector('#btn-write').addEventListener("click", () => {
        window.location.href = './contact_text.jsp';
    })
})();