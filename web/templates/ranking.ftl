<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Рейтинг" extra_styles=["ranking.css", "product-block.css"] extra_scripts=[]/>
<body>
    <#include "header.ftl">
    <div class="common-inf">
        <#include "choose_category.ftl">
    </div>
    <div class="products">
        <#list products as product>
            <#include "product_block.ftl">
        </#list>
    </div>
</body>
</html>