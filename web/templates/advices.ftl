<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Советы" extra_styles=["advices.css"] extra_scripts=[]/>
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