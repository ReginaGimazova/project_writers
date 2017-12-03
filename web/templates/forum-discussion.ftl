<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Обсуждение" extra_styles=["forum-discussion.css"] extra_scripts=[]/>
<body>
    <#include "header.ftl">
    <div class="content">
        <div class="title-group">
             <div class="title">Тема</div>
            <div class="theme-name">${discussion.name}</div>
        </div>
        <div class="messages">
            <#list messages as message>
                <div class="message">
                    <div class="user-info">
                        <div class="image"><img src="../static/media/unknown_user.png"/></div>
                        <div class="user-name">${message.author.name}</div>
                    </div>
                    <div class="text-of-message">${message.text}</div>
                </div>
            </#list>
        </div>
    </div>
</body>
</html>