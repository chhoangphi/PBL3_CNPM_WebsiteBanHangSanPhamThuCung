
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update Products</title>


<style>
.red {
	color: red;
}
.col-sm-12
{
margin: 70px;
padding-left: 150px;
padding-right:150px;
}
</style>
</head>
<body>

	</hr>
	<div class="container" >
		<form:form class="form"
			action="/petshop-5/admin/cap-nhat-san-pham/${product_id}"
			method="POST" modelAttribute="product">
			<div class="row">

				<div class="col-sm-12">
					<div class="text-center">
						<h3>UPDATE PRODUCT</h3>
					</div>
					<div class="mb-3">
						<label for="product_name" class="form-label">Product Name</label>
						<form:input type="text" class="form-control" path="product_name"></form:input>
					</div>
					<div class="mb-3">
						<label for="status" class="form-label">Status</label>
						<select class="form-control"
								id="status" name="status">
									<option value="1" label="Active &#9660" ${product.status=='1' ? 'selected' : ''} />
									<option value="0" label="Inactive &#9660" ${product.status=='0' ? 'selected' : ''}/>
						</select>
					</div>
					<div class="mb-3">
						<label for="img" class="form-label">Product Image URL</label>
						<form:input type="text" class="form-control" id="img" name="img"
							path="img"></form:input>
					</div>
					<div class="mb-3">
						<label for="price" class="form-label">Product Price </label>
						<form:input type="text" class="form-control" id="price"
							name="price" path="price"></form:input>
					</div>
					<div class="mb-3">
						<label for="description" class="form-label">Product
							Description</label>
						<form:input type="text" class="form-control" id="description"
							name="description" path="description"></form:input>
					</div>
					<hr />
					<div class="mb-3">
						<label for="product_categ_name" class="form-label">Product
							Category Name</label>
						<select class="form-control" id="product_categ_name"
							name="product_categ_name" >
								<option value="${productCategoryName}" label="${productCategoryName }"/>
					
						</select>
					</div>
					<input class="btn btn-primary form-control" type="submit"
						value="Cập nhật" name="submit" id="submit" />
				</div>



			</div>
		</form:form>
	</div>
</body>

</html>