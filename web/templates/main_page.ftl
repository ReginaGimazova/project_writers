<!DOCTYPE html>
<html lang="en">
<#import "head.ftl" as head>
<@head.head title="Just write!" extra_styles="main-page.css" extra_scripts=[]/>
<body>
    <div class="header">
        <a class="brand" href="/">Just Write!</a>
        <ul class="nav float-right nav-pills">
            <li class="nav-item">
                <a class="nav-link" href="/auth">Вход</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/signup">Регистрация</a>
            </li>
        </ul>
    </div>
    <div class="content jumbotron">
        <h1 class="title">Just Write!</h1>
        <div class="description">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec leo justo. Sed ante urna, fermentum a luctus vel, feugiat in neque. Etiam felis sapien, congue a erat non, lobortis dapibus dui. Praesent libero urna, dapibus vita</p>
        </div>
        <div class="join-btn">
            <a href="/signup" class=""><button class="btn">Присоединиться</button></a>
        </div>
    </div>
    <!--<footer>-->
        <!--(c) lorem ipsum dolor set amet-->
    <!--</footer>-->
</body>
</html>