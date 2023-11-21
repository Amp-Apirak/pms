<aside class="main-sidebar elevation-4 sidebar-light-danger">

    <!-- Brand Logo -->
    <a href="http://10.40.10.96/" target="_blank" class="brand-link  bg-danger">
        <img src="../pms/img/up1.png" alt="Innovation Test Bug" class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">Innovation Test Bug</span>
    </a>


    <!-- Sidebar -->
    <?php if (isset($_SESSION['contact_id'])) { ?>
    <div
        class="sidebar os-host os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden os-theme-dark os-host-foreign os-theme-light os-host-scrollbar-vertical-hidden">
        
        <div class="os-resize-observer-host observed">
            <div class="os-resize-observer" style="left: 0px; right: auto;"></div>
            <div class="os-resize-observer"></div>
        </div>

        <div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;">
            <div class="os-resize-observer"></div>
        </div>

        <div class="os-padding">
            <div class="os-viewport os-viewport-native-scrollbars-invisible">
                <div class="os-content">

                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="../pms/img/002.png" class="img-circle elevation-2" alt="User Image">
                        </div>
                        <div class="info">
                            <a href="profile.php" class=""><?php echo ($_SESSION['contact_name']);?></a><br>
                            <a href="profile.php" class="">Your Welcome</a><br>
                            <a href="logout.php" class=""><i class="nav-icon fa fa-sign-in">Logout</i></a>
                        </div>
                    </div>
                    <?php } ?>


                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview"
                            role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                            <li class="nav-item">
                                <a href="index.php" class="nav-link <?php if($menu=="index"){echo "active";} ?>">
                                    <i class="nav-icon fa fa-desktop"></i>
                                    <p>
                                        Work Detail
                                    </p>
                                </a>
                            </li>


                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
            </div>
        </div>

        <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div>
            </div>
        </div>

        <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-unusable os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
                <div class="os-scrollbar-handle" style="height: 100%; transform: translate(0px, 0px);"></div>
            </div>
        </div>

        <div class="os-scrollbar-corner"></div>
        
    </div>
    <!-- /.sidebar -->
</aside>