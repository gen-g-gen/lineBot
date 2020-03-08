window.addEventListener('DOMContentLoaded', function() {

  const chat = ["やぁ", "お元気？", "それな〜","言うよね〜", "え？","は？","めんごめんご"];
  
  let chatNum = 0;
  
  function output(val, person) {
  
    if (!val) return false; 
  
    const ul = document.getElementById(`chat-ul`);
    const li = document.createElement(`li`);
    const div = document.createElement(`div`);
    div.textContent = val;
  
    if(person === `me`){
      li.classList.add(`chat-right`)
      ul.appendChild(li);
      li.appendChild(div);
      chatNum++;
  
    } else if(person === `you`){
      
      li.classList.add('chat-left');
      ul.appendChild(li);
      li.appendChild(div);
      chatNum++;
    };
    
    var elementHtml =document.documentElement;
    var bottom = elementHtml.scrollHeight - elementHtml.clientHeight;
    window.scroll(0, 400);
  };
  

  
  // 送信ボタンを押したとき
 
    document.getElementById("new_message").addEventListener("click", function(e){
      e.preventDefault();   
  
      // ajaxの呼び出しを行う
      var req = new XMLHttpRequest();
      var fd  = new FormData(this);

      // リンク表示の仕方デージョーブ？指定方法はある気がする..
      req.open("POST", req.responseURL, true);
      req.send(fd);
      
      
      req.addEventListener("load", (e) => {
      // const message = JSON.parse(req.responseText);
      var json = JSON.stringify(name);
      var data = JSON.parse(json);
      
      var inputText = document.getElementById("chat-input");
      output(inputText.value, `me`);
      inputText.value = "";
  
        if(chatNum % 2 !== 0){
          setTimeout(function(){
          const random = Math.floor(Math.random()*chat.length);
            output(chat[random], `you`)
            // 選んだrandomを消す
            chat.splice(random,1);
          },1000);
        };
      });
    });
  }, false);

  