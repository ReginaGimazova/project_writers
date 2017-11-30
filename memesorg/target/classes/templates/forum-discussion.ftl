<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Обсуждение</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/styles/main.css">
    <link rel="stylesheet" href="../static/styles/advices.css">
    <link rel="stylesheet" href="../static/styles/forum-discussion.css">
</head>
<body>
    <#include "header.ftl">
    <div class="content">
        <div class="title-group">
             <div class="title">Тема</div>
            <div class="theme-name">${discussion.name}</div>
        </div>
        <div class="messages">
            <#list messages as message>
                <div class="message">
                    <div class="user-info">
                        <div class="image"><img src="../static/media/unknown_user.png"/></div>
                        <div class="user-name">${message.author.name}</div>
                    </div>
                    <div class="text-of-message">${message.text}</div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html>