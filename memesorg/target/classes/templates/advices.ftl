<#ftl encoding='UTF-8'>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Советы</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/advices.css">
    <link rel="stylesheet" href="/styles/product-block.css">
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
        <div class="advice">
            <div class="author">Автор совета</div>
            <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pellentesque arcu purus, eu dignissim dolor aliquet vitae. Nunc viverra sapien ut velit cursus vehicula. In vestibulum, risus nec cursus dictum, sapien nisl venenatis mi, mattis finibus velit sapien eget justo.</div>
            <div class="date">Дата</div>
        </div>
        <div class="advice">
            <div class="author">Автор совета</div>
            <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pellentesque arcu purus, eu dignissim dolor aliquet vitae. Nunc viverra sapien ut velit cursus vehicula. In vestibulum, risus nec cursus dictum, sapien nisl venenatis mi, mattis finibus velit sapien eget justo.</div>
            <div class="date">Дата</div>
        </div>
        <div class="new-advice-form">
            <form action="/add_advice" method="post">
                <label for="text">Введите текст совета: </label>
                <textarea id="text" name="advice" class="form-control"></textarea>

                <div><input type="submit" value="Отправить" class="btn btn-primary save-btn"></div>
            </form>
        </div>
    </div>
    </div>
</body>
</html>