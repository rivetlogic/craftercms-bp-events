<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro drawImage>
	<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
    <@studio.img $field="image_s" src=(model.image_s) class="img-responsive" alt="Overview" />
	</div>
</#macro>

<@studio.componentRootTag
  $tag="section"
  $attrs={
  'id': '${model["internal-name"]}',
  'class': 'parallax-section image-section'
  }
>
  <div class="container">
    <div class="row">

      <#if "left" == model.imagePosition_s><@drawImage/></#if>
      <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
        <@studio.h3 $field="imageTitle_t">
          ${model.imageTitle_t!''}
        </@studio.h3>
        <@studio.tag $field="imageDescription_html">
          ${model.imageDescription_html!''}
        </@studio.tag>
      </div>
      <#if "right" == model.imagePosition_s><@drawImage/></#if>

    </div>
  </div>
</@studio.componentRootTag>