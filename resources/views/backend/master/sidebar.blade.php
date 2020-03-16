<!-- sidebar left-->
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <form role="search">
    </form>
    <ul class="nav menu">
        <li @yield('admin')><a href="admin"><svg class="glyph stroked dashboard-dial">
                    <use xlink:href="#stroked-dashboard-dial"></use>
                </svg> Tổng quan</a></li>
        <li @yield('categoty')><a href="admin/category"><svg class="glyph stroked clipboard with paper">
                    <use xlink:href="#stroked-clipboard-with-paper" /></svg> Danh Mục</a></li>
        <li @yield('product')><a href="admin/product"><svg class="glyph stroked bag">
                    <use xlink:href="#stroked-bag"></use>
                </svg> Sản phẩm</a></li>
        <li @yield('order')><a href="admin/order"><svg class="glyph stroked notepad ">
                    <use xlink:href="#stroked-notepad" /></svg> Đơn hàng</a></li>
        <li role="presentation" class="divider"></li>
        <li @yield('user')><a href="admin/user"><svg class="glyph stroked male-user">
                    <use xlink:href="#stroked-male-user"></use>
                </svg> Quản lý thành viên</a></li>

    </ul>

</div>
<!--/. end sidebar left-->
