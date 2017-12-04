<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Форум" extra_styles=["forum.css"] extra_scripts=[]/>
<body>
    <#include "header.ftl">
    <div class="content">
        <div class="title">
            Форум
        </div>
        <div class="discussions">
            <#list discussions as discussion>
                <div class="discussion">
                    <div>
                        <div class="name"><a href="/">${discussion.name}</a></div>
                        <div class="date">${discussion.date}</div>
                    </div>
                    <div class="float-right author">${discussion.author}</div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html>