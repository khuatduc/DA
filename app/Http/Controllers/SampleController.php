<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Image;
use App\Models\Exhibition;
use Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\MyTestMail;
class SampleController extends Controller
{

    public function sendMail($id){
    	
        $exhibition= Exhibition::find($id);
      
        $lastName= $exhibition->image->user->lastName;
        $firstName=$exhibition->image->user->firstName;
        $title= $exhibition->image->TieuDe;
        $image= $exhibition->image->name;
        $score= $exhibition->sumScore;
        $mail= $exhibition->image->user->email;
        
    	$details=[
    		'lastName'=>$lastName,"firstName"=>$firstName,'title'=>$title,'score'=>$score,'image'=>$image
    	];

    	Mail::to($mail,'TrienLamTranhVN')->send(new MyTestMail($details));
    	
        $exhibition->guimail=1;
        $exhibition->save();
   
    return redirect('BanToChuc/danhsachguimail');
}
}