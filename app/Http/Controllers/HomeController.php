<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use BinshopsBlog\Models\BinshopsCategoryTranslation;
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
        $ShowCategories = BinshopsCategoryTranslation::all();
        $posts = Post::find($id);
        $latest_posts = Post::where('category_id', request('category_id'))
            ->latest()
            ->get();

        return view('viewpost', compact('ShowCategories', 'posts', 'latest_posts'));
    }
    public function ShowCategories($id)
    {
        $ShowCategories = BinshopsCategoryTranslation::all();

        return view('viewpost', 'binshopsblog::single_post',  compact('ShowCategories'));
    }
   
}
