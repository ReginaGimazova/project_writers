<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Добавить произведение" extra_styles=["add_product.css"] extra_scripts=[]/>
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
            <div class="form-group">
                <input type="checkbox" name="isCommentingAllowed" id="isCommentingAllowed">
                <label for="isCommentingAllowed">Разрешить комментирование работы</label>
            </div>
            <div class="form-group btns">
                <a href="/products"><button class="btn">Отменить</button></a>
                <input type="submit" value="Сохранить" class="btn btn-primary float-right">
            </div>

        </form>
    </div>
</body>
</html>