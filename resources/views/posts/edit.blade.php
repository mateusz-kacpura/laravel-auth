@extends('layouts.app')

@section('content')
<script src="https://cdn.tiny.cloud/1/k3vg1xfbe1spc9388nhnpsh46g7z8dinxe88yxfj8n4v1d2i/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
 <script>
   tinymce.init({
     selector: 'textarea#myeditorinstance', // Replace this CSS selector to match the placeholder element for TinyMCE
     plugins: 'code table lists',
     toolbar: 'undo redo | formatselect| bold italic | alignleft aligncenter alignright | indent outdent | bullist numlist | code | table'
   });
 </script>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        {{ __('Edytuj') }}
                    </div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                        @if ($errors)
                            @foreach ($errors->all() as $error)
                                <div class="alert alert-danger">{{ $error }}</div>
                            @endforeach
                        @endif

                        <form action="{{ route('posts.update', $post) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="mb-3">
                                <label for="" class="form-label">Tytuł</label>
                                <input type="text" name="title" class="form-control" id="exampleFormControlInput1"
                                    placeholder="Input title" value="{{ $post->title }}">
                            </div>
                            <div class="mb-3">
                                <label for="">Zdjęcie</label>
                                <input type="file" name="image" accept="" class="form-control">
                                <div style="text-align: center; margin: 1%;"><img src="{{ asset('uploads/posts/' . $post->image) }}" width="99%" height="99%"
                                    alt="Image"></div>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Opis</label>
                                <textarea name="post_text" cols="30" rows="5" id="myeditorinstance" class="form-control"
                                    placeholder="Input description">{{ $post->post_text }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Kategoria</label>
                                <select name="category_id" id="" class="form-control">
                                    @foreach ($categories as $category_item)
                                        <option value="{{ $category_item->id }}"
                                            {{ $post->category_id == $category_item->id ? 'selected' : '' }}>
                                            {{ $category_item->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3">
                                <input type="submit" value="Edytuj" class="btn btn-primary">
                                <a href="{{ route('posts.index') }}" class="btn btn-secondary">Wróć</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
