<#ftl encoding='UTF-8'>
<div class="product" id="${product.id}">
    <div>
        <div class="name"><h5><a href="/product?id=${product.id}">${product.name}</a></h5></div>
        <div class="description"><p>${product.description}</p></div>
    </div>
    <div>
        <div class="meta-data">
        ${product.author.name} <br>
        ${product.date}
        </div>
        <div><span onclick="do_like(product_id=${product.id})" class="glyphicon glyphicon-thumbs-up"></span> ${product.likesNumber} <span onclick="do_dislike(product_id=${product.id})" class="glyphicon glyphicon-thumbs-down"></span> ${product.dislikesNumber}</div>
    </div>
</div>