<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .chatbox {
 |
        }

        .messages {
            background-color: #a2e5f6;
            width: 500px;
            padding: 20px;
        }

        .messages .msg {
            background-color: #c0f3ef;
            border-right: 10px;
            margin-bottom: 10px;
            overflow: hidden;
        }

        .messages .msg .from {
            background-color: #f8ddfa;
            line-height: 30px;
        }

        .messages .msg .text {
            background-color: #e6cae8;
            padding: 10px;
            text-align: center;
            color: whitesmoke;
        }

        textarea.msg {
            width: 540px;
            padding: 10px;
            resize: none;
            border: none;
            box-shadow: 2px 2px 2px 2px  inset ;
         }
    </style>
    <script>
        let chatUnit = {
            init(){
                this.startbox = document.querySelector(".start");
                this.chatbox = document.querySelector(".chatbox");
                this.startBtn = this.startbox.querySelector("button");
                this.bindEvents();
            },
            bindEvents(){
                this.startBtn.addEventListener("click", e => this.openSocket)
            }

        }
    </script>
</head>
<body>
<h1>ChatBox</h1>
<div class="start">
    <input type="text" class="username" placeholder=" enter name ">
    <button id="start"> start</button>
</div>
<div class="chatbox">
    <div class="messages">
        <div class="msg">
            <div class="from"> name </div>
            <div class="text"> Hello  </div>
        </div>
    </div>

    <textarea class="msg"></textarea>
</div>
</body>
</html>
