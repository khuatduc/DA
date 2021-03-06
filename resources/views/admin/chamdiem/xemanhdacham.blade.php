 @extends('admin.layout.index')
 @section('content')
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12">
            <ol class="breadcrumb float-sm-right" style="float: right;">
              <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
              <li class="breadcrumb-item active">dữ liệu</li>
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
                <h3 class="card-title">Điểm cho mỗi tác phẩm:</h3>
                
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
                    <td>Điểm số</td>
                    <td style="text-align: center;">Sửa</td>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $i=0; ?>
                    @foreach($image as $score)
                  <tr>
                    <td>{{$score->image->id}}</td>
                    <td><img src="upload/hinh/{{$score->image->name}}" style="width:100px;"></td>
                    <td>{{$score->image->TieuDe}}</td>
                    <td>{{$score->image->user->firstName}} {{$score->image->user->lastName}}</td>
                    <td>{{$score->score}}</td>
                    <td><a style="text-align: center; display:block;color: #191913a6;" href="GiamKhao/ChamDiemUser/{{$score->image->user->id}}/{{$score->image->TieuDeKhongDau}}{{$score->image->id}}.html"><i class="fas fa-pen" style="font-size: 10px;" ></i></a></td>
                  </tr>
                   <?php $i++ ?>
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