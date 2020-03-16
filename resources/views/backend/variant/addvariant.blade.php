@extends('backend.master.master')
@section('title','Biến thể')
@section('product')
class="active"
@endsection
@section('content')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li class="active">Biến thể</li>
        </ol>
    </div>
    <!--/.row-->

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Biến thể</h1>
        </div>
    </div>
    <!--/.row-->
    <div class="col-md-12">
        <div class="panel panel-default">
            <form method="post">
                @csrf
                <div class="panel-heading" align='center'>
                    Giá cho từng biến thể sản phẩm : {{ $product->name }} ({{ $product->product_code }})
                </div>
                <div class="panel-body" align='center'>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Biến thể</th>
                                <th>Giá (có thể trống)</th>
                                <th>Tuỳ chọn</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product->variant as $variant)
                            <tr>
                                <td scope="row">
                                    @foreach ($variant->values as $value)
                                    {{ $value->attribute->name }} : {{ $value->value }},
                                    @endforeach
                                </td>
                                <td>
                                    <input name="variant[{{ $variant->id }}]" class="form-control"
                                        placeholder="Giá cho biến thể" value="">
                                </td>
                                <td>
                                    <a id="" class="btn btn-warning" href="#" role="button">Xoá</a>
                                </td>
                            </tr>
                            @endforeach


                        </tbody>
                    </table>

                </div>
                <div align='right'><button class="btn btn-success" type="submit"> Cập nhật </button> <a
                        class="btn btn-warning" href="admin/product" role="button">Bỏ qua</a></div>
            </form>

        </div>
    </div>

</div>
@endsection
