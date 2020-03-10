window.addEventListener('DOMContentLoaded', function() {

  
  let chatNum = 0;
  
  // コメントが、相手か、自分のかを判断する
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
  };

  //自動返信機能
  function bot (name){

    if(chatNum % 2 !== 0){
      setTimeout(function(){
        const random = Math.floor(Math.random()*name.length);
        var json = JSON.stringify(name);
        var data = JSON.parse(json);
        output(data[random].content, `you`)
        // 選んだrandomを消す
        name.splice(random,1);
      },1000);
    };
  };

  // 送信ボタンを押したとき
  if (document.location.href.match(/\/groups\/\d+\/messages/)) {
    document.getElementById("new_message").addEventListener("change", function(e){
      e.preventDefault();

      // ajaxの呼び出しを行う
      var req = new XMLHttpRequest();
      var fd  = new FormData(this);

      req.open("POST", req.responseURL, true);
      req.send(fd);

      req.addEventListener("load", function(e){
      var inputText = document.getElementById("chat-input");
      output(inputText.value, `me`);
      
        if(inputText.value == "noris"||inputText.value == "chuck"){
          bot(noris)
          inputText.value = "";
        } else {
          bot(chat)
          inputText.value = "";
          
        };
      inputText.value = "";
      });
    });
  }

    const chat = [
      {
          "content": "おはよう！"
      },
      {
          "content": "元気？"
      },
      {
          "content": "なんかお腹減ってきたね！"
      },
      {
          "content": "え、ふりがなふってくれないと読めない..."
      }
];

      const noris = [
      {
          "content": "Chuck Norris never gets a syntax error. Instead, the language gets a DoesNotConformToChuck error."
      },
      {
          "content": "Chuck Norris's keyboard doesn't have a Ctrl key because nothing controls Chuck Norris."
      },
      {
          "content": "Chuck Norris doesn't use a computer because a computer does everything slower than Chuck Norris."
      },
      {
          "content": "Chuck Norris doesn't need a debugger, he just stares down the bug until the code confesses."
      },
      {
          "content": "Chuck Norris doesn't bug hunt, as that signifies a probability of failure. He goes bug killing."
      },
      {
          "content": "Chuck Norris can access private methods."
      },
      {
          "content": "When Chuck Norris points to null, null quakes in fear."
      },
      {
          "content": "Chuck Norris' beard is immutable."
      },
      {
          "content": "Chuck Norris's first program was kill -9."
      },
      {
          "content": "When Chuck Norris gives a method an argument, the method loses."
      }
];

}, false);


  