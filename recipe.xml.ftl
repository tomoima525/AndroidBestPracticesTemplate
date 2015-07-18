<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values-w820dp/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values-w820dp/dimens.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/bools.xml"
             to="${escapeXmlAttribute(resOut)}/values/bools.xml" />
    <merge from="res/values-land/bools.xml"
             to="${escapeXmlAttribute(resOut)}/values-land/bools.xml" />

    <instantiate from="res/layout/activity_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="src/app_package/activity/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.java" />

    <instantiate from="src/app_package/fragments/BaseFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragments/BaseFragment.java" />

    <instantiate from="src/app_package/utils/LocalStorageUtil.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/utils/LocalStorageUtil.java" />

    <instantiate from="src/app_package/models/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/models/SimpleModel.java" />

    <instantiate from="src/app_package/models/apis/SimpleApi.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/models/apis/SimpleApi.java" />

    <instantiate from="src/app_package/models/prefs/SimplePref.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/models/prefs/SimplePref.java" />   

    <instantiate from="src/app_package/models/providers/SimpleProvider.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/models/providers/SimpleProvider.java" />

    <instantiate from="src/app_package/views/SimpleView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/views/SimpleView.java" />
                     
    <instantiate from="src/app_package/services/SimpleService.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/services/SimpleService.java" />

    <instantiate from="src/app_package/consts/S.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/consts/S.java" />

    <instantiate from="src/app_package/ThisApplication.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${applicationClass}.java" />

    <instantiate from="src/app_package/network/SimpleNetwork.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/network/SimpleNetwork.java" />

    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.java" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>
