@extends('layouts.master')
<!-- podgląd postów do czytania -->
@section('content')
    <!-- Page header with logo and tagline-->
    <header class="py-5 bg-light border-bottom mb-4">
        <div class="container">
            <div class="text-center">
                {{-- <img class="img-fluid mb-4" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /> --}}
                <img class="img-fluid mb-4" src="{{ asset('uploads/posts/' . $posts->image) }}" alt="Image">
            </div>
            <div class="text-center my-5">
                <h1 class="fw-bolder">{{ $posts->title }}</h1>
                <p>Category: {{ $posts->category->name }}</p>
                <p>{{ $posts->created_at }}</p>
            </div>
        </div>
    </header>
    <!-- Page content-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4">
                <p class="lead mb-0">{{ strip_tags(html_entity_decode($posts->post_text)) }}</p>
            </div>
        </div>
    </div>
     <!-- Side widgets-->
     <div class="col-lg-4">
            <!-- Categories widget-->
            <!---
            <div class="card mb-4">
                <div class="card-header">Z ostatniej chwili</div>
                    <div class="card-body">
                        <div class="row">
                        <a href="{{ route('viewpost', $posts->id) }}">
                                    {{-- <img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg"
                                        alt="..." /> --}}
                                    <img class="card-img-top" src="{{ asset('uploads/posts/' . $posts->image) }}"
                                        alt="Image">
                                </a>
                                <div class="card-body">
                                    <div class="small text-muted">{{ $posts->created_at }}</div>
                                    <h2 class="card-title h4">{{ $posts->title }}</h2>
                                    {{-- <p class="card-text">{{ $posts->post_text }}</p> --}}
                                    <p class="card-text">{{ Str::limit($posts->post_text, 400) }}</p>
                                    <a class="btn btn-primary" href="{{ route('viewpost', $posts->id) }}">Czytaj więcej →</a>
                                </div>
                         </div>
                    </div>
                </div>
            </div>
            -->
        </div>
@endsection
