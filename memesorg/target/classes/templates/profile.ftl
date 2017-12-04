<#ftl encoding='UTF-8'>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/profile.css">
    <link rel="stylesheet" href="/styles/product-block.css">
</head>
<body>
<#include "header.ftl">
<div class="profile-inf">
    <div class="image"><img src="/media/unknown_user.png"></div>
    <div class="inf"><h2>${Request.user.username}</h2></div>
</div>
<div class="products-header">
    <div class="title"><h3>Мои произведения</h3></div>
    <div class="float-right add-new"><a href="/add_product">Добавить новое</a></div>
</div>

<div class="products">
    <!-- TODO ВЫВЕСТИ ВЕСЬ СПИСОК ВСЕХ ПРОИЗВЕДЕНИЙ-->
    <div class="product">
        <div>
            <div class="name"><h5><a href="/product">Название</a></h5></div>
            <div class="description"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec leo justo. Sed ante urna, fermentum a luctus vel, feugiat in neque. Etiam felis sapien, congue a erat non, lobortis dapibus dui.</p></div>
        </div>
        <div>
            <div class="meta-data">
                имя владельца <br>
                дата добавления
            </div>
            <div><span class="glyphicon glyphicon-thumbs-up"></span> 56 <span class="glyphicon glyphicon-thumbs-down"></span> 45</div>
        </div>
    </div>
    <div class="product">
        <div>
            <div class="name"><h5><a href="">Название</a></h5></div>
            <div class="description"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nec leo justo. Sed ante urna, fermentum a luctus vel, feugiat in neque. Etiam felis sapien, congue a erat non, lobortis dapibus dui.</p></div>
        </div>
        <div>
            <div class="meta-data">
                имя владельца <br>
                дата добавления
            </div>
            <div><span class="glyphicon glyphicon-thumbs-up"></span> 56 <span class="glyphicon glyphicon-thumbs-down"></span> 45</div>
        </div>
    </div>
</div>

</body>
</html>