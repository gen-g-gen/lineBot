// window.addEventListener('DOMContentLoaded', function() {

//   const noris = [
//     {
//         "content": "Chuck Norris never gets a syntax error. Instead, the language gets a DoesNotConformToChuck error."
//     },
//     {
//         "content": "Chuck Norris's keyboard doesn't have a Ctrl key because nothing controls Chuck Norris."
//     },
//     {
//         "content": "Chuck Norris doesn't use a computer because a computer does everything slower than Chuck Norris."
//     },
//     {
//         "content": "Chuck Norris doesn't need a debugger, he just stares down the bug until the code confesses."
//     },
//     {
//         "content": "Chuck Norris doesn't bug hunt, as that signifies a probability of failure. He goes bug killing."
//     },
//     {
//         "content": "Chuck Norris can access private methods."
//     },
//     {
//         "content": "When Chuck Norris points to null, null quakes in fear."
//     },
//     {
//         "content": "Chuck Norris' beard is immutable."
//     },
//     {
//         "content": "Chuck Norris's first program was kill -9."
//     },
//     {
//         "content": "When Chuck Norris gives a method an argument, the method loses."
//     }
//   ];
  
//   const chat = [
//     {
//       "content": "やぁ"
//     },
//     {
//       "content": "元気?"
//     },
//     {
//       "content": "玄関に5000円置いといたよ"
//     },
//     {
//       "content": "お腹減ってきた..."
//     },
//     {
//       "content": "www"
//     }
//   ];
  

// let chatNum = 1;

// function output(val, person) {

//   if (!val) return false; 

//   const ul = document.getElementById(`chat-ul`);
//   const li = document.createElement(`li`);
//   const div = document.createElement(`div`);
//   div.textContent = val;

//   if(person === `me`){
//     li.classList.add(`chat-right`)
//     ul.appendChild(li);
//     li.appendChild(div);
//     chatNum++;

//   } else if(person === `you`){
    
//     li.classList.add('chat-left');
//     ul.appendChild(li);
//     li.appendChild(div);
//     chatNum++;
//   };
  
// };

// function bot (name){

//   if(chatNum % 2 !== 0){
//     setTimeout(function(){
//       const random = Math.floor(Math.random()*name.length);
//       var json = JSON.stringify(name);
//       var data = JSON.parse(json);
//       output(data[random].content, `you`)
//       // 選んだrandomを消す
//       name.splice(random,1);
//       console.log("ok")
//     },1000);
//   };
  
// };

// // 最初の挨拶
// // setTimeout(function(){
// //   output("ご機嫌よ〜", `you`);
// // }, 1000);

// // 送信ボタンを押したとき
//   document.getElementById("chat-button").addEventListener("click", function(e){
//     e.preventDefault();   
//     var inputText = document.getElementById("chat-input");
    
    
//   output(inputText.value, `me`);
//   if(inputText.value == "noris"||inputText.value == "chuck"){
//     bot(noris)
//     inputText.value = "";
    
//   } else{
//     bot(chat)
//     inputText.value = "";
//   }

//   });
// });

