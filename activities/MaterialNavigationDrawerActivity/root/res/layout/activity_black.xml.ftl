<?xml version="1.0" encoding="utf-8"?>
<android.support.v4.widget.DrawerLayout xmlns:android="http://schemas.android.com/apk/res/android"
                                        xmlns:app="http://schemas.android.com/apk/res-auto"
                                        android:id="@+id/drawer"
                                        android:layout_width="match_parent"
                                        android:layout_height="match_parent">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <include
            android:id="@+id/toolbar_actionbar"
            layout="@layout/toolbar_default"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"/>

        <FrameLayout
            android:id="@+id/container"
            android:clickable="true"
            android:layout_width="match_parent"
            android:layout_height="match_parent"/>
    </LinearLayout>
    <!-- android:layout_marginTop="?android:attr/actionBarSize"-->
    <fragment
        android:id="@+id/fragment_drawer"
        android:layout_marginTop="@dimen/abc_action_bar_default_height_material"
        android:name="${packageName}.NavigationDrawerFragment"
        android:layout_width="@dimen/navigation_drawer_width"
        android:layout_height="match_parent"
        android:layout_gravity="<#if buildApi gte 17>start<#else>left</#if>"
        app:layout="@layout/${navigationDrawerLayout}"/>
</android.support.v4.widget.DrawerLayout>