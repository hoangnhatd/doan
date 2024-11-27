@extends('layout.layout')
@section('content')
@endsection
@section('main_content')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">THÊM MỚI SẢN PHẨM</h1>
</div>

<form class="row g-3" method="POST" action="{{ route('product.xl-them-moi') }}">
    <div class="col-12">
        @csrf
        <div class="row">
            <div class="col-md-6">
                <label for="product_id" class="form-label">ID</label>
                <input type="text" name="product_id" class="form-control" id="product_id" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="brand_id" class="form-label">nhan hang</label>
                <input type="text" name="brand_id" class="form-control" id="brand_id" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_name" class="form-label">NHÀ CUNG CẤP</label>
                <input type="text" name="product_name" class="form-control" id="product_name" >
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="product_price" class="form-label">gia</label>
                <input type="text" name="product_price" class="form-control" id="product_price" >
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="desc" class="form-label">mo ta</label>
                <input type="text" name="desc" class="form-control" id="desc" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_sold" class="form-label">GIÁ BÁN</label>
                <input type="product_sold" name="product_sold" class="form-control" id="product_sold" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_image" class="form-label">Hinh san pham</label>
                <input type="text" name="product_image" class="form-control" id="product_image" >
            </div>
        </div>        
        <div class="row pt-3">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
        </div>
    </div>
</form>
@endsection


\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
@extends('layout.layout')
@section('content')
@endsection
@section('main_content')
<div class="card-body">
    <h4 class="card-title">Thông Tin Liên Hệ Của Shop</h4>
    <p class="text-muted">
        Trang này quản lý thông tin liên hệ của shop, bao gồm địa chỉ, số điện thoại, email, giờ làm việc, và các thông
        tin hỗ trợ khác.
    </p>

    <!-- Success Message -->
    @if(session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    @endif

    <!-- Contact Information Form -->
    <form method="POST" action="{{ route('product.xl-them-moi')  }}">
        @csrf
        @method('PUT')

        <div class="row">
            <div class="col-md-6">
                <label for="product_id" class="form-label">ID</label>
                <input type="text" name="product_id" class="form-control" id="product_id" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="brand_id" class="form-label">nhan hang</label>
                <input type="text" name="brand_id" class="form-control" id="brand_id" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_name" class="form-label">NHÀ CUNG CẤP</label>
                <input type="text" name="product_name" class="form-control" id="product_name" >
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="product_price" class="form-label">gia</label>
                <input type="text" name="product_price" class="form-control" id="product_price" >
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label for="desc" class="form-label">mo ta</label>
                <input type="text" name="desc" class="form-control" id="desc" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_sold" class="form-label">GIÁ BÁN</label>
                <input type="product_sold" name="product_sold" class="form-control" id="product_sold" >
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-6">
                <label for="product_image" class="form-label">Hinh san pham</label>
                <input type="text" name="product_image" class="form-control" id="product_image" >
            </div>
        </div>        
        <div class="row pt-3">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Cập Nhật Thông Tin Liên Hệ</button>
    </form>

</div>
@endsection