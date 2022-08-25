@extends("layouts.master",['title'=>$post->gen_seo_title()])

@section('blog-custom-css')
    <link type="text/css" href="{{ asset('binshops-blog.css') }}" rel="stylesheet">
@endsection

@section("content")
<!-- main nav page  -->
@include("binshopsblog::partials.nav_page")

<!-- main navbar category -- import category partial -->
<div style="border-top: 1px solid black;">
@if($categories)
    @include("binshopsblog::partials._category_partial", [
      'category_tree' => $categories,
      'name_chain' => $nameChain = ""
    ])
    @foreach ($ShowCategories as $category)
               
                    <a class="nav-link" href="{{ route('home') }}?category_id={{ $category->id }}">{{ $category->name }}</a>
                
            @endforeach
@else
    <span>No Categories</span>
@endif
    </div>
<!-- end main navbar category -->

<!-- main advert header -->
@include("binshopsblog::partials.advert_header")
<!-- end main advert header -->

@if(config("binshopsblog.reading_progress_bar"))
        <div id="scrollbar">
            <div id="scrollbar-bg"></div>
        </div>
    @endif

    {{--https://binshops.binshops.com/laravel/packages/binshopsblog-blog-system-for-your-laravel-app/help-documentation/laravel-blog-package-binshopsblog#guide_to_views--}}

    <div class='container'>
    <div class='row'>
        <div class='col-sm-12 col-md-12 col-lg-12'>

            @include("binshopsblog::partials.show_errors")
            @include("binshopsblog::partials.full_post_details")


            @if(config("binshopsblog.comments.type_of_comments_to_show","built_in") !== 'disabled')
                <div class="" id='maincommentscontainer'>
                    <h2 class='text-center' id='binshopsblogcomments'>Comments</h2>
                    @include("binshopsblog::partials.show_comments")
                </div>
            @else
                {{--Comments are disabled--}}
            @endif


        </div>
    </div>
    </div>

@endsection

@section('blog-custom-js')
    <script src="{{asset('binshops-blog.js')}}"></script>
@endsection