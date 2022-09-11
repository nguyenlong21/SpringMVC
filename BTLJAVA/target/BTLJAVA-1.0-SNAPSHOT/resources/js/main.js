/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function addToCart(id, name, price){
    event.preventDefault();
    fetch("/BTLJAVA/api/cart", {
        method:'post',
        body: JSON.stringify({
            "productId": id,
            "productName": name,
            "price": price,
            "quantity":1
        }),
                headers:{
                    "Content-Type": "application/json"
                }
    }).then(function(res){
        return res.json()
    }).then(function(data){
        let counter = document.getElementById("cartCounter");
        counter.innerText = data;
    });
}

function updateCart(obj){
    console.info(obj.value)
}
function deleteCart(productId){
    if(confirm("Bạn có chắc chắn muốn xóa sản phẩm này không?") == true){
        fetch(`/BTLJAVA/api/cart/${productId}`,{
            method:"delete"
        }).then(function(res){
            return res.json()
        }).then(function(data){
            let counter = document.getElementById("cartCounter");
            counter.innerText = data;
            location.reload()
        });
        }

}