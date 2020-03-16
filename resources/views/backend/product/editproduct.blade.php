@extends('backend.master.master')
@section('title','Sửa sản phẩm')
@section('product')
class="active"
@endsection
@section('script_product')
<script>
    function changeImg(input) {
            //Nếu như tồn thuộc tính file, đồng nghĩa người dùng đã chọn file mới
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                //Sự kiện file đã được load vào website
                reader.onload = function (e) {
                    //Thay đổi đường dẫn ảnh
                    $('#avatar').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $(document).ready(function () {
            $('#avatar').click(function () {
                $('#img').click();
            });
        });
</script>
@endsection
@section('content')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">


    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Sửa sản phẩm</h1>
        </div>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-xs-6 col-md-12 col-lg-12">
            <form method="post" enctype="multipart/form-data">
                @csrf
                <div class="panel panel-primary">
                    <div class="panel-heading">Sửa sản phẩm: {{ $product->name }} ({{ $product->product_code }})</div>
                    <div class="panel-body">
                        @if (session('thongbao'))
                        <div class="alert alert-success" role="alert">
                            <strong>{{ session('thongbao') }}</strong>
                        </div>
                        @endif
                        <div class="row" style="margin-bottom:40px">
                            <div class="col-xs-8">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <label>Danh mục</label>
                                            <select name="category" class="form-control">
                                                {{ GetCategory($category,0,'',$product->category->id) }}
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Mã sản phẩm</label>
                                            <input type="text" name="product_code" class="form-control"
                                                value="{{$product->product_code}}">
                                            @if ($errors->has('product_code'))
                                            <div class="alert alert-danger" role="alert">
                                                <strong> {{$errors->first('product_code')}}</strong>
                                            </div>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input type="text" name="product_name" class="form-control"
                                                value="{{ $product->name }}">
                                            @if ($errors->has('product_name'))
                                            <div class="alert alert-danger" role="alert">
                                                <strong> {{$errors->first('product_name')}}</strong>
                                            </div>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label>Giá sản phẩm (Giá chung)</label> <a
                                                href="admin/product/edit-variant/{{ $product->id }}"><span
                                                    class="glyphicon glyphicon-chevron-right"></span>
                                                Giá theo biến thể</a>
                                            <input type="number" name="product_price" class="form-control"
                                                value="{{$product->price}}">
                                            @if ($errors->has('product_price'))
                                            <div class="alert alert-danger" role="alert">
                                                <strong> {{$errors->first('product_price')}}</strong>
                                            </div>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label>Sản phẩm nổi bật</label>
                                            <select name="featured" class="form-control">
                                                <option @if ($product->featured== 0) selected @endif value="0">Không
                                                </option>
                                                <option @if ($product->featured== 1) selected @endif value="1">Có
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Trạng thái</label>
                                            <select name="product_state" class="form-control">
                                                <option @if ($product->state== 1) selected @endif value="1">Còn hàng
                                                </option>
                                                <option @if ($product->state== 0) selected @endif value="0">Hết hàng
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Ảnh sản phẩm</label>
                                            @if ($errors->has('product_img'))
                                            <div class="alert alert-danger" role="alert">
                                                <strong> {{$errors->first('product_img')}}</strong>
                                            </div>
                                            @endif
                                            <input id="img" type="file" name="product_img" class="form-control hidden"
                                                onchange="changeImg(this)">
                                            <img id="avatar" class="thumbnail" width="100%" height="350px"
                                                src="backend/img/{{$product->img}}">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Thông tin</label>
                                    <textarea name="info"
                                        style="width: 100%;height: 100px;">{{ $product->info }}</textarea>
                                    <script type="text/javascript">
                                        CKEDITOR.replace("info");
                                    </script>
                                </div>


                            </div>
                            <div class="col-xs-4">
                                <label>Các thuộc tính</label>
                                <div class="panel panel-default">
                                    <div class="panel-body tabs">

                                        @if ($errors->has('attr_name'))
                                        <div class="alert alert-danger" role="alert">
                                            <strong>{{$errors->first('attr_name')}}</strong>
                                        </div>
                                        @endif
                                        @if ($errors->has('value_name'))
                                        <div class="alert alert-danger" role="alert">
                                            <strong>{{$errors->first('value_name')}}</strong>
                                        </div>
                                        @endif

                                        <ul class="nav nav-tabs">
                                            @php
                                            $i=0;
                                            @endphp
                                            @foreach ($attrs as $attr)
                                            <li @if($i==0) class='active' @endif><a href="#tab{{$attr->id}}"
                                                    data-toggle="tab">{{$attr->name}}</a></li>
                                            @php
                                            $i=1;
                                            @endphp
                                            @endforeach

                                        </ul>
                                        <div class="tab-content">
                                            @foreach ($attrs as $attr)
                                            <div class="tab-pane fade  @if($i==1) active @endif in"
                                                id="tab{{$attr->id}}">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            @foreach ($attr->values as $value)
                                                            <th>{{$value->value}}</th>
                                                            @endforeach
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            @foreach ($attr->values as $value)
                                                            <td> <input @if (check_value($product,$value->id))checked
                                                                @endif
                                                                class="form-check-input" type="checkbox"
                                                                name="attr[{{$attr->id}}][]" value="{{$value->id}}">
                                                            </td>
                                                            @endforeach
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <hr>

                                            </div>
                                            @php
                                            $i=2;
                                            @endphp
                                            @endforeach
                                            <div class="tab-pane fade" id="tab-add">
                                                <form action="admin/product/add-attr" method="post">
                                                    @csrf
                                                    <div class="form-group">
                                                        <label for="">Tên thuộc tính mới</label>
                                                        <input type="text" class="form-control" name="attr_name"
                                                            aria-describedby="helpId" placeholder="">
                                                    </div>
                                                    <button type="submit" name="add_pro" class="btn btn-success"> <span
                                                            class="glyphicon glyphicon-plus"></span>Thêm thuộc
                                                        tính</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <p></p>

                                        </label>
                                    </div>
                                </div>

                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Miêu tả</label>
                                            <textarea id="editor" name="description"
                                                style="width: 100%;height: 100px;">{{ $product->describe }}</textarea>
                                            <script type="text/javascript">
                                                CKEDITOR.replace("description");
                                            </script>
                                        </div>


                                        <button class="btn btn-success" name="add-product" type="submit">Sửa sản
                                            phẩm</button>
                                        <button class="btn btn-danger" type="reset">Huỷ bỏ</button>

                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!--/.row-->

</div>
<!--end main-->

@endsection
