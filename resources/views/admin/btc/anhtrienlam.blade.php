 @extends('admin.layout.index')
 @section('content')
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"> Trang chủ</a></li>
              <li class="breadcrumb-item active">Dữ liệu</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
             <form method="post" action="BanToChuc/anhtrienlam">
              @csrf
              <div class="card-header">
                <h3 class="card-title">Tổng số tranh đã chọn đi triển lãm: {{count($exhibition)}}</h3>
                <button type="submit" class="btn btn-dark" style="float: right;">Gửi mail</button>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>STT</th>
                    <th>Bức Ảnh</th>
                    <th>Tiêu Đề</th>
                    <th>Tên Thí Sinh</th>
                    <th>Tổng điểm</th>
                    <td>Triển Lãm</td>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($exhibition as $exhibition)
                  <tr>
                    <td>{{$exhibition->id}}</td>
                    <td><img src="upload/hinh/{{$exhibition->image->name}}" style="width:100px; height: 70px;"></td>
                    <td>{{$exhibition->image->TieuDe}}</td>
                    <td>{{$exhibition->image->user->firstName}} {{$exhibition->image->user->lastName}}</td>
                    <td>{{$exhibition->sumScore}}</td>
                    <td onclick="confirm('bạn chắc chắn muốn xóa')" style="text-align: center;"><a href="BanToChuc/xoaanhtrienlam/{{$exhibition->id}}" ><i class="fas fa-trash" aria-hidden="true" style="color: #4a2d2d; font-size: 10px;"></i></a></td>
                  </tr>
                    @endforeach
                  </tbody>
                  <tfoot>
                 
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </form>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
@endsection