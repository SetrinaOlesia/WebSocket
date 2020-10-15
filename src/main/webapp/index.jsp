<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .chatbox {
            display: none;
        }

        .messages {
            background-color: #b1e6f5;
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
            background-color: #e9d9ea;
            line-height: 30px;
        }

        .messages .msg .text {
            background-color: #e9d9ea;
            padding: 10px;
            text-align: center;
            color: #f5f5f5;
        }

        textarea.msg {
            background-color: #e9d9ea;
            width: 540px;
            padding: 10px;
            resize: none;
            border: none;
            box-shadow: 0.3px 0.3px 5px 0.5px inset;
        }
    </style>
    <script>
        let chatUnit = {
            init() {
                this.startbox = document.querySelector(".start");
                this.chatbox = document.querySelector(".chatbox");
                this.startBtn = this.startbox.querySelector("button");
                this.nameInput = this.startbox.querySelector("input");
                this.bindEvents();
            },

            bindEvents() {
                this.startBtn.addEventListener("click", e => this.openSocket())
            },
            onOpenSock() {

            },
            openSocket() {

                this.ws = new WebSocket("ws://localhost:8080/chat")
                this.ws.onopen = () => this.onOpenSock();
                this.ws.onMessage = (e) => this.onMessage(JSON.parse(e.data))
                this.name = this.nameInput.value;
                this.startbox.style.display = "none";
                this.chatbox.style.display = "block";

            }

        };

        window.addEventListener("load", e => chatUnit.init());

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
            <div class="from"> name</div>
            <div class="text"> Hello</div>
        </div>
    </div>

    <textarea class="msg"></textarea>
</div>
</body>
</html>
