<#ftl encoding='UTF-8'>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Добавить произведение</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/products.css">
    <link rel="stylesheet" href="/styles/add_product.css">
</head>

<body>
    <#include "header.ftl">
    <div class="content">
        <form action="/add_product" method="post">
            <div class="form-group name">
                <label for="name">Название</label>
                <input id="name" name="name" type="text" class="form-control">
            </div>
            <div class="form-group description">
                <label for="description">Краткое описание</label>
                <textarea id="description" name="description" class="form-control"></textarea>
            </div>
            <div class="form-group text">
                <label for="text">Текст</label>
                <textarea id="text" name="text" class="form-control"></textarea>
            </div>

            <select class="form-control" name="genre" style="margin-bottom: 5px; height: 30px">
                <option>Поэзия</option>
                <option>Поэма</option>
            </select>
            <div class="form-group btns">
                <a href="/product"><button class="btn">Отменить</button></a>
                <input type="submit" value="Сохранить" class="btn btn-primary float-right">
            </div>

        </form>
    </div>
</body>

</html>