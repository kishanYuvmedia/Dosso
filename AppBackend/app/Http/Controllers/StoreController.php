<?php
#{{---------------------------------------------------🔱JAI SHREE MAHAKAAL🔱-----------------------------------------------------------------}}
namespace App\Http\Controllers;

use App\Models\AdminVendors;
use Illuminate\Http\Request;
use App\Models\AddContest;
use Illuminate\Support\Facades\Hash;
use PhpParser\Node\Stmt\Catch_;
class StoreController extends Controller
{
    public function createcontest(Request $req)
    {
        // dd($req->all());
        try{
            $req->validate([
                'title' => 'required',
                'startdate' => 'required',
                'enddate' => 'required',
                'totalround' => 'required',
                'completedround' => 'required',
                'totalprice' => 'required',
                'totalspin' => 'required',
                'thumbnail' => 'required',
                'joinmembers' => 'required',
            ]);
            //Image Upload
            $imagePath = null;
            if ($req->hasFile('thumbnail')) {
                $image = $req->file('thumbnail');
                $imagePath = time() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('uploads'), $imagePath);
            }
            AddContest::create([
                'title' => $req->title,
                'startdate' => $req->startdate,
                'enddate' => $req->enddate,
                'totalround' => $req->totalround,
                'completedround' => $req->completedround,
                'totalprice' => $req->totalprice,
                'totalspin' => $req->totalspin,
                'thumbnail' => $imagePath,
                'joinmembers' => $req->joinmembers,
            ]);
            return redirect()->route('addcontestview')->with('success', 'Contest Created..!!');
        }catch(\Exception $c){
            //  return redirect()->route('addcontestview')->with('error', $c->getMessage());
            return redirect()->route('addcontestview')->with('error', 'Not Created Try Again...');
        }
    }

    public function createvendor(Request $req)
    {
        // dd($req->all());
        try{
            $req->validate([
                'vendorname' => 'required',
                'contactno' => 'required',
                'emailaddress' => 'required',
                'password' => 'required',
            ]);
            //Image Upload
            $imagePath = null;
            if ($req->hasFile('vendorprofile')) {
                $image = $req->file('vendorprofile');
                $imagePath = time() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('uploads'), $imagePath);
            }
            AdminVendors::create([
                'vendorname' => $req->vendorname,
                'vendorprofile' => $imagePath,
                'schoolname' => $req->schoolname,
                'contactno' => $req->contactno,
                'emailaddress' => $req->emailaddress,
                'password' => Hash::make($req->password),   // storing password in encrypted form
                // 'referidvendor' => $req->referidvendor,
            ]);
            return redirect()->route('addvendorview')->with('success', 'Vendor Created..!!');
        }catch(\Exception $c){
            //  return redirect()->route('addvendorview')->with('error', $c->getMessage());
            return redirect()->route('addvendorview')->with('error', 'Not Created Try Again...');
        }
    }
}
