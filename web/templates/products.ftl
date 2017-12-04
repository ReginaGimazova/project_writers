<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Произведения" extra_styles=["products.css", "product-block.css"] extra_scripts=[]/>
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