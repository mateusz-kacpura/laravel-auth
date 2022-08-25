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

                @foreach($category_tree as $category)
                <a class="nav-link" href='{{$category->categoryTranslations[0]->url($locale)}}'>
                        {{$category->categoryTranslations[0]->category_name}}
                </a>
                @endforeach 

            </ul>
        </div>
    </div>
</nav>                                                              
                                        