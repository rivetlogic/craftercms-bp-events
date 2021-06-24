<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro drawImage>
	<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
    <@crafter.img $field="image_s" src=(model.image_s) class="img-responsive" alt="Overview" />
	</div>
</#macro>

<section id="${model['internal-name']}" class="parallax-section image-section">
  <div class="container">
    <div class="row">

      <#if "left" == model.imagePosition_s><@drawImage/></#if>
      <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
        <@crafter.h3 $field="imageTitle_t">
          ${model.imageTitle_t!''}
        </@crafter.h3>
        <@crafter.div $field="imageDescription_html">
          ${model.imageDescription_html!''}
        </@crafter.div>
      </div>
      <#if "right" == model.imagePosition_s><@drawImage/></#if>

    </div>
  </div>
</section>