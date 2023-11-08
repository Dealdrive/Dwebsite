<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Contact;
use App\Models\Frontend\Quote;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Form validation
        $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|max:255',
            'message' => 'required|max:500',
        ]);

        // Get All Request
        $input = $request->all();

        // Record to database
        quote::firstOrCreate([
            'name' => $input['name'],
            'email' => $input['email'],
            'message' => $input['message'],
        ]);

        return redirect()->back()
            ->with('success', 'frontend.content.created_successfully');

    }
}
