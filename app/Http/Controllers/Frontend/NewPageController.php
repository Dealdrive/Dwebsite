<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NewPageController extends Controller
{
    public function index()
    {
        // Your page logic goes here
        return view('new-page'); // This loads the 'new-page.blade.php' view
    }
}
