<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Советы</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/../css/main.css">
    <link rel="stylesheet" href="/../css/advices.css">
    <link rel="stylesheet" href="/../css/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="advices-header">
        <div class="title">Советы</div>
        <!--<div class="float-right">-->
            <!--<a href="">Добавить свой совет</a>-->
        <!--</div>-->
    </div>
    <div class="advices">
        <#list advices as advice>
            <div class="advice">
                <div class="author">${advice.author}</div>
                <div class="text">${advice.text}</div>
                <div class="date">${advice.date}</div>
            </div>
        </#list>

        <div class="new-advice-form">
            <form action="/ajax/add_advice" method="post">
                <label for="text">Введите текст совета: </label>
                <textarea id="text" class="form-control"></textarea>
            </form>
        </div>
    </div>
</body>
</html>