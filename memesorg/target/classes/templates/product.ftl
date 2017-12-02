<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Произведение</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/../css/main.css">
    <link rel="stylesheet" href="/../css/product.css">
    <link rel="stylesheet" href="/../css/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="main_inf">
        <h3>${product.name}</h3>
        <p>
            ${product.text}
        </p>
    </div>
    <div class="meta-inf">
        <div>${product.author.name}</div>
        <div>${product.date}</div>
        <div class="float-right like-dislike-buttons">
            <span onclick="do_like(product_id=${product.id})" class="glyphicon glyphicon-thumbs-up"></span> ${product.likesNumber}
            <span onclick="do_dislike(product_id=${product.id})" class="glyphicon glyphicon-thumbs-down"></span> ${product.dislikesNumber}
        </div>
    </div>
    <div class="comments-header">
        <div><h4>Комментарии</h4></div>
        <div class="float-right"></div>
    </div>
    <div class="comments">
        <#list comments as comment>
            <div class="comment">
                <div>
                    <div class="author">${comment.author.name}</div>
                    <div class="date">${comment.date}</div>
                </div>
                <div class="text">
                    ${comment.text}
                </div>
            </div>
        </#list>
        <div class="new-comment-form">
            <form method="post" action="/ajax/add_comment">
                <label for="comment-text">
                    Текст нового комментария:
                </label>
                <textarea id="comment-text" name="comment_text" class="form-control"></textarea>
                <input type="submit" value="Комментировать" class="btn float-right">
            </form>
        </div>
    </div>
</body>
</html>