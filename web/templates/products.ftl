<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Произведенения</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../static/styles/main.css">
    <link rel="stylesheet" href="../static/styles/products.css">
    <link rel="stylesheet" href="../static/styles/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="common-inf">
        <div>
            <#include "choose_category.ftl">
            <div><a href="/product/add">Добавить свое произведение</a></div>
        </div>
        <div>
            <div class="ranking-href"><a href="/ranking">Рейтинг</a> </div>
            <div>За все время выложено ${products?size} произведений</div>
        </div>
    </div>
    <div class="products">
        <#list products as product>
            <#include "product_block.ftl">
        </#list>
    </div>
</body>
</html>