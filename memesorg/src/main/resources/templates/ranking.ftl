<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Рейтинг</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../../webapp/static/styles/main.css">
    <link rel="stylesheet" href="../../webapp/static/styles/ranking.css">
    <link rel="stylesheet" href="../../webapp/static/styles/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="common-inf">
        <div>Выберите категорию:
            <select id="category" name="category">
                <option value="prose">Проза</option>
                <option value="poetry">Поэзия</option>
            </select>
        </div>
    </div>
    <div class="products">
        <#list products as product>
            <#include "product_block.ftl">
        </#list>
    </div>
</body>
</html>