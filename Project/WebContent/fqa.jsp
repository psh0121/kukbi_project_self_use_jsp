<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's travel : 자주하는질문</title>

<!-- 스타일 -->
<link rel="stylesheet" href="./stylecss/reset.css">
<link rel="stylesheet" href="./stylecss/fqa.css">
</head>
<body>
	<!-- header -->
	<%@ include file="./fixJSP/header.jsp" %>
	
	<!-- section -->
    <section>
        <p class="section-title">자주 묻는 질문</p>

        <!-- contents -->
        <div class="section-contents">
            <div class="qa">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>

            <div class="qa">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>

            <div class="qa">
                <div class="question">
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. </p>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. 
                        Tempora ipsum repudiandae tempore ut nulla nostrum et id quae nihil ullam? Saepe, aspernatur fugit! 
                        Voluptatem repellendus repellat deserunt officiis dolore fugiat?
                    </p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- article -->
    <article>
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae, impedit officia nesciunt beatae voluptatum ullam consequuntur neque labore, fugiat illum at cupiditate aut deserunt totam, sequi expedita accusamus accusantium eos.
    </article>
	
	<!-- footer -->
	<%@ include file="./fixJSP/footer.jsp" %>
	
	<!-- 외부파일 JS -->
	<script src="./fqa.js"></script>
</body>
</html>