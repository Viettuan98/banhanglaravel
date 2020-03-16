<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forms</title>
    <link href="backend/css/bootstrap.min.css" rel="stylesheet">
    <link href="backend/css/datepicker3.css" rel="stylesheet">
    <link href="backend/css/styles.css" rel="stylesheet">

    <!--[if lt IE 9]>
<script src="backend/js/html5shiv.js"></script>
<script src="backend/js/respond.min.js"></script>
<![endif]-->

</head>

<body>

    <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">LOGIN ADMIN</div>
                <div class="panel-body">
                    @if (session('thongbao'))
                    <div class="alert alert-danger" role="alert">
                        <strong>{{session('thongbao')}}</strong>
                    </div>
                    @endif
                    <form method="POST">
                        @csrf
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="email" type="text" autofocus=""
                                    value="{{old('email')}}">
                                @if ($errors->has('email'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>{{$errors->first('email')}}</strong>
                                </div>
                                @endif
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password"
                                    value="">
                                @if ($errors->has('password'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>{{$errors->first('password')}}</strong>
                                </div>
                                @endif
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                </label>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div><!-- /.col-->
    </div><!-- /.row -->



    <script src="backend/js/jquery-1.11.1.min.js"></script>
    <script src="backend/js/bootstrap.min.js"></script>
    <script src="backend/js/chart.min.js"></script>
    <script src="backend/js/chart-data.js"></script>
    <script src="backend/js/easypiechart.js"></script>
    <script src="backend/js/easypiechart-data.js"></script>
    <script src="backend/js/bootstrap-datepicker.js"></script>
    <script>
        ! function ($) {
			$(document).on("click", "ul.nav li.parent > a > span.icon", function () {
				$(this).find('em:first').toggleClass("glyphicon-minus");
			});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
			if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
			if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
    </script>
</body>

</html>
