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
                    @php $trans =  $category->categoryTranslations->where('lang_id',$lang_id)->first();@endphp
                    @if($trans != null)
                        <li class="nav-item">
                            @php $nameChain = $nameChain .'/'. $trans->slug @endphp

                            <a class="nav-link" href="{{route("binshopsblog.view_category",[$locale, $nameChain ])}}">
                                <span class="category-item" value='{{$category->category_id}}'>
                        {{$trans->category_name}}

                                    @if( count($category->siblings) > 0)
                                        <ul>
                                @include("binshopsblog::partials._category_partial", [
                    'category_tree' => $category->siblings,
                    'name_chain' => $nameChain
                    ])
                                </ul>
                                    @endif
                                </span>
                            </a>
                        </li>
                    @endif
                @endforeach                       
            </ul>
        </div>
    </div>
</nav>                                                              
                                        