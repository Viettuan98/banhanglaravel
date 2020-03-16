@extends('backend.master.master')
@section('title','Danh sách đơn hàng')
@section('order')
class="active"
@endsection
@section('content')

<!--main-->
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#"><svg class="glyph stroked home">
                        <use xlink:href="#stroked-home"></use>
                    </svg></a></li>
            <li class="active">Đơn hàng</li>
        </ol>
    </div>
    <!--/.row-->
    <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">

            <div class="panel panel-primary">
                <div class="panel-heading">Danh sách đơn đặt hàng chưa xử lý</div>
                <div class="panel-body">
                    @if (session('thongbao'))
                    <div class="alert alert-success" role="alert">
                        <strong>{{ session('thongbao') }}</strong>
                    </div>
                    @endif
                    <div class="bootstrap-table">
                        <div class="table-responsive">

                            <a href="admin/order/processed" class="btn btn-success">Đơn đã xử lý</a>
                            <table class="table table-bordered" style="margin-top:20px;">
                                <thead>
                                    <tr class="bg-primary">
                                        <th>ID</th>
                                        <th>Tên khách hàng</th>
                                        <th>Sđt</th>
                                        <th>Địa chỉ</th>

                                        <th>Xử lý</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($customers as $row)
                                    <tr>
                                        <td>{{ $row->id }}</td>
                                        <td>{{ $row->full_name }}</td>
                                        <td>{{ $row->phone }}</td>
                                        <td>{{$row->address}}</td>
                                        <td>
                                            <a href="admin/order/detail/{{ $row->id }}" class="btn btn-warning"><i
                                                    class="fa fa-pencil" aria-hidden="true"></i>Xử lý</a>
                                        </td>
                                    </tr>
                                    @endforeach


                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 ">
                            {!! $customers->links() !!}
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--/.row-->


</div>
<!--end main-->
@endsection
