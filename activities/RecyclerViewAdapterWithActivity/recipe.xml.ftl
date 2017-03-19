<?xml version="1.0"?>
<recipe>

    <#if appCompat?has_content>
      <dependency mavenUrl="com.android.support:appcompat-v7:21.0.0"/>
    </#if>    
    
    <dependency mavenUrl="com.android.support:support-v4:21.0.0"/>
    <dependency mavenUrl="com.android.support:recyclerview-v7:21.0.0"/>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <!-- Decide what kind of layout(s) to add -->
    <instantiate from="res/layout/activity_simple.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />

    <!-- Decide which activity code to add -->
    <instantiate from="src/app_package/SimpleActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="src/app_package/CustomAdapter.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
