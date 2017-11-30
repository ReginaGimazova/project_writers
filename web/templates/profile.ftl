<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/styles/main.css">
    <link rel="stylesheet" href="../static/styles/profile.css">
    <link rel="stylesheet" href="../static/styles/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="profile-inf">
        <div class="image"><img src="../static/media/unknown_user.png"></div>
        <div class="inf"><h2>${user.name}</h2></div>
    </div>
    <div class="products-header">
        <div class="title"><h3>Мои произведения</h3></div>
        <div class="float-right add-new"><a href="/product/add">Добавить новое</a></div>
    </div>
    <div class="products">
        <#list products as product>
            <#include "product_block.ftl">
        </#list>
    </div>
</body>
</html>