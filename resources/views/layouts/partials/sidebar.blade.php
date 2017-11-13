<aside class="left-side sidebar-offcanvas">                
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
      @if($user->role->slug == "dg")
            <div class="pull-left image">
                <img src="{{ asset("uploads/profile/avatar-male.png") }}" class="img-circle" alt="User Image" />
            </div>
      @else
            <div class="pull-left image">
                <img src="{{ asset(Auth::user()->avatar()) }}" class="img-circle" alt="User Image" />
            </div>
      @endif
            <div class="pull-left info">
                <p>{{ Auth::user()->name }}</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        @include('layouts.partials._sideNav')
    </section>
    <!-- /.sidebar -->
</aside>