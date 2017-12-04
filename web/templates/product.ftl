<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Произведение" extra_styles=["product.css"] extra_scripts=[]/>
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