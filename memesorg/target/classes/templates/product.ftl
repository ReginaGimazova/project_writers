<#ftl encoding='UTF-8'>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Произведение</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/product.css">
    <link rel="stylesheet" href="/styles/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="main_inf">
        <h3>${Request.product.name_work}</h3>
        <p>
            ${Request.product.text}
        </p>
    </div>

    <div class="meta-inf">
        <div>${Request.product.user.username}</div>

        <div class="float-right like-dislike-buttons">
            <span class="glyphicon glyphicon-thumbs-up"></span> 20
            <span class="glyphicon glyphicon-thumbs-down"></span> 6
        </div>
    </div>

</body>
</html>