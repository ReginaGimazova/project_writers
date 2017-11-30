<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Форум</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/styles/main.css">
    <link rel="stylesheet" href="../static/styles/forum.css">
</head>
<body>
    <#include "header.ftl">
    <div class="content">
        <div class="title">
            Форум
        </div>
        <div class="discussions">
            <#list discussions as discussion>
                <div class="discussion">
                    <div>
                        <div class="name"><a href="/">${discussion.name}</a></div>
                        <div class="date">${discussion.date}</div>
                    </div>
                    <div class="float-right author">${discussion.author}</div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html>