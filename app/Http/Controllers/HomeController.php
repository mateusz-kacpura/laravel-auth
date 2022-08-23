<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categories = Category::all();
        $posts = Post::when(request('category_id'), function ($query) {
            $query->where('category_id', request('category_id'));
        })
            ->latest()
            ->get();

        return view('home', compact('categories', 'posts'));
    }

    public function show($id)
    {
        $posts = Post::find($id);
        $latest_posts = Post::where('category_id', request('category_id'))
            ->latest()
            ->get();

        return view('viewpost', compact('posts', 'latest_posts'));
    }
}
