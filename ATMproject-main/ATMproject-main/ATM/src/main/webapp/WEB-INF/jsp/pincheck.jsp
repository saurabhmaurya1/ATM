<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>PIN CHECK</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto+Mono:300,400,600&amp;display=swap'>
  <style type="text/css">
  		html,
	body {
	  width: 100%;
	  min-height: 100vh;
	  margin: 0;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  font-family: "Roboto Mono";
	}
	body {
	  background: linear-gradient(to bottom, #0099ff 0%, #fff 100%);
	}
	@-webkit-keyframes blink {
	  from {
	    opacity: 1;
	  }
	  to {
	    opacity: 0;
	  }
	}
	@keyframes blink {
	  from {
	    opacity: 1;
	  }
	  to {
	    opacity: 0;
	  }
	}
	* {
	  -webkit-tap-highlight-color: transparent;
	  outline: none;
	}
	main {
	  transition-duration: 0.6s;
	}
	main .pin-wrapper {
	  font-weight: 600;
	  color: black;
	  align-items: center;
	  background: #FFFEFE;
	  font-size: 1.7em;
	  line-height: 1;
	  position: relative;
	}
	main .pin-wrapper .digits {
	  overflow: hidden;
	  display: flex;
	  justify-content: space-between;
	  position: relative;
	  height: 1em;
	  padding: 50px 55px;
	  width: 380px;
	}
	main .pin-wrapper .digits .digit {
	  position: relative;
	  display: block;
	  min-height: 1rem;
	  min-width: 1rem;
	}
	main .pin-wrapper .digits .digit::before {
	  content: attr(data-digit);
	  display: block;
	  opacity: 0;
	  transform: scale(0.6);
	  transition-duration: 0.2s;
	  transition-delay: 0.15s;
	  margin-top: -1px;
	}
	main .pin-wrapper .digits .digit[data-digit=""]::after {
	  content: '';
	  position: absolute;
	  width: 4px;
	  height: 28px;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  background: #0099ff;
	}
	main .pin-wrapper .digits .digit.shown::before {
	  opacity: 1;
	  transform: scale(1);
	  transition-duration: 0.45s;
	}
	main .pin-wrapper .digits .caret {
	  position: absolute;
	  width: 0;
	  height: 28px;
	  background: #0099ff;
	  left: 0;
	}
	main .pin-wrapper .submit {
	  position: absolute;
	  background: #0099ff;
	  top: 0;
	  left: 100%;
	  height: 100%;
	  width: calc(1rem + 90px);
	  border: none;
	  z-index: -1;
	  transform: translateX(-100%);
	  transition-duration: 0.6s;
	}
	main .pin-wrapper .submit svg {
	  width: 40px;
	  position: absolute;
	  top: 50%;
	  transform: translate(-25%, -50%);
	  opacity: 0;
	  left: 0;
	  right: 0;
	  margin: auto;
	  fill: white;
	  transition-duration: 0.6s;
	  transition-delay: 0.25s;
	}
	main .pin-wrapper .result {
	  position: absolute;
	  width: 100%;
	  height: 100%;
	  top: 0;
	  left: 0;
	  color: white;
	  background: #0099ff;
	  font-weight: 300;
	  font-size: 1.1rem;
	  display: flex;
	  justify-content: space-between;
	  align-items: start;
	  padding: 25px 30px;
	  box-sizing: border-box;
	  opacity: 0;
	  pointer-events: none;
	  transform: translateY(10px);
	  transition-duration: 0.4s;
	  transition-delay: 0.2s;
	  z-index: 99;
	  flex-direction: column;
	}
	main .pin-wrapper .result .result-pin {
	  font-weight: 600;
	}
	main .pin-wrapper .result.shown {
	  opacity: 1;
	  transform: none;
	  pointer-events: all;
	  transition-delay: 0.85s;
	}
	main .pin-wrapper .result button.reset {
	  background: none;
	  border: none;
	  border-bottom: 2px solid white;
	  padding: 0 0 2px;
	  font-weight: 600;
	  font-size: 0.8em;
	  font-family: 'Roboto Mono';
	  color: white;
	  cursor: pointer;
	}
	main .focus {
	  opacity: 0;
	  width: 100%;
	  height: 100%;
	  position: absolute;
	  top: 0;
	  left: 0;
	  z-index: 99;
	}
	main .focus:focus ~ .caret.blink {
	  -webkit-animation: blink 0.5s infinite alternate;
	          animation: blink 0.5s infinite alternate;
	}
	main.show-button {
	  transform: translateX(calc(-0.5rem - 45px));
	}
	main.show-button .pin-wrapper .submit {
	  transform: none;
	}
	main.show-button .pin-wrapper .submit svg {
	  transform: translateY(-50%);
	  opacity: 1;
	}
	footer {
	  position: absolute;
	  bottom: 20px;
	  right: 30px;
	}
	footer a {
	  color: #F05A5D;
	  text-decoration: none;
	  font-weight: 600;
	}
  </style>
</head>
<body>
<!-- partial:index.partial.html -->
<main>
    <div class="pin-wrapper">
        <div class="digits">
        	Enter PIN-
            <input type="text" class="focus">
            <span class="digit" data-digit=""></span>
            <span class="digit" data-digit=""></span>
            <span class="digit" data-digit=""></span>
            <span class="digit" data-digit=""></span>
            <div class="caret"></div>
        </div>

        <button class="submit">
            <svg width="113" height="96" viewBox="0 0 113 96" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M113 48L65.4099 0L55.852 9.55112L87.568 41.2462H0V54.7538H87.568L55.8531 86.4485L65.411 96L113 48Z" />
            </svg>
        </button>

        <div class="result">
            <span>You entered PIN: <span class="result-pin" id="result-pin-id"></span></span>
            <input style="width: 30%;font-size: 20px;padding: 3px;border: 2px black;margin: 10px 0px 20px; float: right;"; type="button" name="loginbtn" value="LOGIN" onclick="checkpass();"><br>
        </div>
    </div>
    <div class="row justify-content-center" style="padding-top:10px;">
    	<a href="/pin">GO BACK
        <a href="/forgetpin" style="float: right;">FORGET PIN
    </div>
    <!--<div><p><a style="float: right;" href="./forgetpin.jsp">Forget Pin</a></p></div>-->
</main>

<footer>
  <a href="https://dribbble.com/shots/5005121" target="_blank">Concept</a>
</footer>
<!-- partial -->
  <script src='https://cdn.jsdelivr.net/npm/animejs@3.1.0/lib/anime.min.js'></script>
  <script type="text/javascript">
  	const pinWrapper = document.querySelector('.pin-wrapper'),
      input = pinWrapper.querySelector('.focus'),
      digits = Array.from(pinWrapper.querySelectorAll('.digit')),
      caret = pinWrapper.querySelector('.caret'),
      button = pinWrapper.querySelector('.submit'),
      mainEl = document.querySelector('main'),
      resultEl = pinWrapper.querySelector('.result'),
      reset = resultEl.querySelector('.reset');
	let currentIndex = 0;
	let prevLeft = 0;
	let prevX = 0;
	let inputLock = false;

	function moveCaret(newWidth, newLeft) {
	  anime({
	    targets: caret,
	    width: newWidth,
	    left: newLeft,
	    easing: 'easeInOutQuad',
	    duration: 450,
	    begin: () => {
	      caret.classList.remove('blink')
	    },
	    complete: () => {
	      caret.classList.add('blink')
	    }
	  });
	}

	input.oninput = e => {
	  this.value = "";
	  let digit = parseInt(e.data);

	  if (!isNaN(digit) && !inputLock && currentIndex <= digits.length-1) {
	    inputLock = true;
	    let left, x, newWidth, newLeft;

	    if (currentIndex < digits.length-1) {
	      x = digits[currentIndex + 1].offsetLeft;
	      left = x + (digits[currentIndex + 1].offsetWidth - 4) / 2;

	      newWidth = [
	        {value: x-prevX+5},
	        {value: 4}
	      ];
	      newLeft = [
	        {value: prevLeft},
	        {value: left}
	      ];
	    }

	    else if (currentIndex === digits.length-1) {
	      x = 100;
	      left = pinWrapper.offsetWidth;
	      newWidth = [
	        {value: x},
	        {value: 70}
	      ];
	      newLeft = [
	        {value: prevLeft},
	        {value: left}
	      ];
	      x = pinWrapper.offsetWidth;
	    }

	    moveCaret(newWidth, newLeft);

	    prevLeft = left;
	    prevX = x;

	    digits[currentIndex].dataset.digit = digit;
	    digits[currentIndex].classList.add('shown');
	    currentIndex++;
	    setTimeout(() => {
	      inputLock = false;

	      if (currentIndex === digits.length) {
	        mainEl.classList.add('show-button');
	      }
	    }, 450);

	  }
	};
	input.onkeydown = e => {
	  if (e.key === "Backspace" && !inputLock && currentIndex !== 0) {
	    inputLock = true;
	    currentIndex--;

	    let x = digits[currentIndex].offsetLeft;
	    let left = x+(digits[currentIndex].offsetWidth-4)/2;

	    let newWidth = [
	      {value: prevX-x+5},
	      {value: 4}
	    ],
	        newLeft = [
	          {value: left},
	          {value: left}
	        ];
	    moveCaret(newWidth, newLeft);

	    prevLeft = left;
	    prevX = x;

	    digits[currentIndex].classList.remove('shown');
	    setTimeout(() => {
	      digits[currentIndex].dataset.digit = "";
	      inputLock = false;
	      mainEl.classList.remove('show-button');
	    }, 450);
	  }

	  if (e.key === "Enter" && !inputLock && currentIndex === 4) {
	    submit();
	  }
	};
	input.onfocus = e => {
	  if (!currentIndex) {
	    inputLock = true;
	    let x = digits[0].offsetLeft;
	    let left = x+(digits[currentIndex].offsetWidth-4)/2;

	    let newWidth = [
	      {value: left+5},
	      {value: 4}
	    ],
	        newLeft = [
	          {value: 0},
	          {value: left}
	        ];
	    moveCaret(newWidth, newLeft);

	    prevLeft = left;
	    prevX = x;
	    setTimeout(() => {inputLock = false;}, 450)
	  }
	};
	input.onblur = e => {
	  if (!currentIndex) {
	    let q = digits[0].offsetLeft;
	    let left = q+(digits[currentIndex].offsetWidth-4)/2;

	    let newWidth = [
	      {value: left+5},
	      {value: 0}
	    ],
	        newLeft = [
	          {value: 0},
	          {value: 0}
	        ];
	    moveCaret(newWidth, newLeft);
	  }
	};

	function submit() {
	  inputLock = true;
	  mainEl.classList.remove('show-button');
	  resultEl.querySelector('.result-pin').innerText = digits.map(el => {
	    return el.dataset.digit
	  }).join('');
	  resultEl.classList.add('shown');
	}

	button.onclick = submit;

	reset.onclick = () => {
	  caret.style.width = '0px';
	  caret.style.left = '0px';
	  digits.forEach(el => {
	    el.dataset.digit = "";
	    el.classList.remove('shown');
	  });
	  resultEl.classList.remove('shown');
	  inputLock = false;
	  currentIndex = 0;
	  prevLeft = 0;
	  prevX = 0;
	}
  </script>
   <script>
      function checkpass(){
      	document.getElementById('result-pin-id').value=resultEl.querySelector('.result-pin').innerText = digits.map(el => {
	    return el.dataset.digit
	  }).join('');
        if(<%=session.getAttribute("pin")%>==document.getElementById('result-pin-id').value){
        	window.location.href="/CustomerHomePage";
        }
        else{
         alert('Sorry you entered Wrong PIN');
         window.location = '/';
          return false;
        }
       }
     </script>
</body>
</html>
