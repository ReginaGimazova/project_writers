<#ftl encoding='UTF-8'>
<div class="product" id="${Request.product.id_work}">
    <div>
        <div class="name"><h5><a href="/product?id=${Request.product.id_work}">${Request.product.name_work}</a></h5></div>
        <div class="description"><p>${Request.product.short_description}</p></div>
    </div>

    <div>
        <div class="meta-data">
        ${Request.product.user.username} <br>
        ${Request.product.date}
        </div>
    </div>

</div>