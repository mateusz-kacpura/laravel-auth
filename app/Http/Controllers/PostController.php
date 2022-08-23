<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::with('category')->get();

        return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();

        return view('posts.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $posts = new Post();

        $request->validate([
            'title' => 'required|string|max:191',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'post_text' => 'required|string',
            'category_id' => 'required',
        ]);

        $posts->title = $request->input('title');
        $posts->post_text = $request->input('post_text');
        $posts->category_id = $request->input('category_id');

        // Store image in public storage
        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalName();
            $file->move('uploads/posts/', $filename);

            $posts->image = $filename;
        }

        $posts->save();
        return redirect()->route('posts.index')->with('status', 'Post added successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('show', compact('post')->display(function($val){
            return substr($val, 0, 10);
        }));   
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $categories = Category::all();

        return view('posts.edit', compact('post', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        $request->validate([
            'title' => 'required|string|max:191',
            'post_text' => 'required|string',
            'category_id' => 'required',
        ]);

        $post->title = $request->input('title');
        $post->post_text = $request->input('post_text');
        $post->category_id = $request->input('category_id');

        // Store image in public storage
        if ($request->hasfile('image')) {
            $img_path = 'uploads/posts/' . $post->image;
            if (File::exists($img_path)) {
                File::delete($img_path);
            }

            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalName();
            $file->move('uploads/posts/', $filename);

            $post->image = $filename;
        }

        $post->update();
        return redirect()->route('posts.index')->with('status', 'Post updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $img_path = 'uploads/posts/' . $post->image;
        if (File::exists($img_path)) {
            File::delete($img_path);
        }

        $post->delete();
        return redirect()->route('posts.index')->with('status_delete', 'Post deleted successfully!');
    }
}
