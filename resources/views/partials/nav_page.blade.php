<!-- page nav bar -->
<nav style="border: 1px solid black;" class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarLeftAlignExample"
      aria-controls="navbarLeftAlignExample"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarLeftAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="{{ route('home') }}"><strong style="letter-spacing: 2px;" >Prasa</strong></a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->

  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarRightAlignExample"
      aria-controls="navbarRightAlignExample"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarRightAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item"><a style="letter-spacing: 0px;" class="nav-link" href="{{ route('home') }}">Kontakt</a></li>
                    {{-- <li class="nav-item"><a class="nav-link" href="">O nas</a></li>
                    <li class="nav-item"><a class="nav-link" href="">Kontakt</a></li> --}}
        <!-- Navbar dropdown -->
        @auth
                        <!-- Pa -->
                        <ul class="navbar-nav me-auto">
                            @if (Auth::user()->is_admin == '1')
                                {{-- <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="{{ route('dashboard') }}">Panel</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('categories.index') }}">Kategoria</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('posts.index') }}">Artykuł</a>
                                </li> --}}
                            @endif
                        </ul>
                    @endauth

                    <!-- Head Right Side Of Navbar -->
                    {{-- <ul class="navbar-nav ms-auto"> --}}
                    @role('admin')
                    <li class="nav-item dropdown">
                    <a style="letter-spacing: 0px;" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {!! trans('titles.editorNavName') !!}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin')  }}">
                                {!! trans('titles.mainEditorPanel') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/add_post')  }}">
                                {!! trans('titles.createArticle') !!}
                            </a>      
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin') }}">
                                {!! trans('titles.viewArticles') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/categories/add_category') }}">
                                {!! trans('titles.addCategories') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/categories') }}">
                                {!! trans('titles.viweCategories') !!}
                            </a>  
                        </div>
                    </li>
                @endrole
                @role('user')
                    <li class="nav-item dropdown">
                    <a style="letter-spacing: 0px;" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {!! trans('titles.editorNavName') !!}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin')  }}">
                                {!! trans('titles.mainEditorPanel') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/add_post')  }}">
                                {!! trans('titles.createArticle') !!}
                            </a>      
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin') }}">
                                {!! trans('titles.viewArticles') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/categories/add_category') }}">
                                {!! trans('titles.addCategories') !!}
                            </a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item {{ (Request::is('roles') || Request::is('permissions')) ? 'active' : null }}" href="{{ url('/blog_admin/categories') }}">
                                {!! trans('titles.viweCategories') !!}
                            </a>  
                        </div>
                    </li>
                @endrole
                    <!-- Authentication Links -->
                     @guest
                        @if (Route::has('login'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Logowanie') }}</a>
                            </li>
                        @endif

                        @if (Route::has('register'))
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Rejestracja') }}</a>
                            </li>
                        @endif
                    @else
                    @role('admin')
                        <li class="nav-item dropdown">
                            <a style="letter-spacing: 0px;" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} 
                            </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
 
                                <a class="dropdown-item" href="{{ url('/panel') }}">Profil
                                </a>
                            <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">
                                    {{ __('Wyloguj się') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                        </div>
                        </li>
                        @endrole
                        @role('user')
                        <li class="nav-item dropdown">
                            <a style="letter-spacing: 0px;" id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} 
                            </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
 
                                <a class="dropdown-item" href="{{ url('/panel') }}">Profil
                                </a>
                            <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                            document.getElementById('logout-form').submit();">
                                    {{ __('Wyloguj się') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                        </div>
                        </li>
                        @endrole
                    @endguest 
                    <li class="nav-item">
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-dark" type="submit">Search</button>
        </form>
        </li>
        </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
</nav>