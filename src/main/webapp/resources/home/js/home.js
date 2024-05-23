/**
 * 
 */
//Document ready thì show loại sách và số lượng trong giỏ hàng (jquery ajax)
$(function(){
	$.get(path + "/categories", function(data) {
		$('.dropdown-menu').html(data);
	});
	$.get(path + "/countItems", function(data) {
		$('#cart_total').html(data);
	});
});
//hàm xử lý add 1 sách vào giỏ hàng (jquery ajax)
function addCart(productId) {
	$.get(path + "/addItem/" + productId, function(data) {
		$('#cart_total').html(data);
		window.scrollTo({ top: 0, behavior: 'smooth' });
		
	});
	window.location.href = path + "/cart";
	
}
//hàm xử lý cập nhật lại số lượng trong giỏ hàng (jquery ajax)
function updateCart(productId, value) {
	$.get(path + "/updateCart/" + productId + "/" + value, function() {
		window.location.reload();
	});
}
//hàm xử lý xóa 1 sách trong giỏ hàng (jquery ajax)
function removeItem(productId) {
	if (confirm('Bạn có muốn xóa không?')) {
		$.get(path + "/removeItem/" + productId, function() {
			window.location.reload();
		});
	}
}