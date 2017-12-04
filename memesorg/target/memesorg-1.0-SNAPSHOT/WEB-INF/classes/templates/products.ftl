<#ftl encoding='UTF-8'>.
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Произведенения</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="/styles/main.css">
    <link rel="stylesheet" href="/styles/products.css">
    <link rel="stylesheet" href="/styles/product-block.css">
</head>
<body>
    <#include "header.ftl">
    <div class="common-inf">
        <div>
            <div>Выберите категорию:
                <select id="category" name="category">
                    <option value="prose">Проза</option>
                    <option value="poetry">Поэзия</option>
                </select>
            </div>
            <div><a href="/add_product">Добавить свое произведение</a></div>
        </div>
        <div>
            <div class="ranking-href"><a href="/ranking">Рейтинг</a> </div>
        </div>
    </div>

    <div class="products">
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
    </div>
</body>
</html>