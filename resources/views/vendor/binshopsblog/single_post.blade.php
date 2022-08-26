@extends("layouts.master",['title'=>$post->gen_seo_title()])

@section('blog-custom-css')
    <link type="text/css" href="{{ asset('binshops-blog.css') }}" rel="stylesheet">
@endsection

@section("content")
<!-- main nav page  -->
@include("binshopsblog::partials.nav_page")

<!-- main navbar category -- import category partial -->
<div style="border-top: 1px solid black;">
@if($ShowCategories)
<nav class="navbar navbar-expand-lg navbar-light bg-light">
                                <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarCenteredExample"
        aria-controls="navbarCenteredExample"
        aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarCenteredExample">
            <ul class="navbar-nav mb-2 mb-lg-0">

        @foreach($ShowCategories as $Categories)
                <a class="nav-link" href='{{$Categories->categoryTranslations[0]->url($locale)}}'>
                        {{$Categories->categoryTranslations[0]->category_name}}
                </a>
        @endforeach
        
        </ul>
        </div>
    </div>
</nav>    
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