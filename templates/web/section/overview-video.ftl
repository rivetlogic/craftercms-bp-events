<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro renderVideo>
  <div class="wow fadeInUp col-md-6 col-sm-10" data-wow-delay="1.6s">
    <div class="embed-responsive embed-responsive-16by9">
        <#if contentModel.video_s?? && (contentModel.video_s?length>0) >
          <div class="fullscreen-bg">
            <@studio.video $field="video_s" id="main-video" controls="true" preload="auto" autoplay="true">
              <source src="${contentModel.video_s}" type="video/mp4">
            </@studio.video>
          </div>
          <div class="overlay"></div>
        </#if>
    </div>
  </div>
</#macro>

<@studio.componentRootTag
  $tag="section"
  $attrs={
    'id': '${model["internal-name"]}',
    'class': 'parallax-section video-section'
  }
>
  <div class="container">
    <div class="row">
      <#if "left" == model.videoPosition_t><@renderVideo/></#if>
      <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
        <@studio.h3 $field="videoTitle_t">
          ${model.videoTitle_t!''}
        </@studio.h3>
        <@studio.span $field="videoDescription_t">
          ${model.videoDescription_t!''}
        </@studio.span>
      </div>
      <#if "right" == model.videoPosition_t><@renderVideo/></#if>
    </div>
  </div>
</@studio.componentRootTag>

