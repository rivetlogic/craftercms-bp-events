<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    SPONSORS SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section sponsors-section">
  <div class="container">
    <div class="row">
      <div class="wow bounceIn col-md-12 col-sm-12">
        <div class="section-title">
          <@studio.h2 $field="title_t">
            ${model.title_t!''}
          </@studio.h2>
          <@studio.span $field="description_html">
            ${model.description_html!''}
          </@studio.span>
        </div>
      </div>
    </div>
    <@studio.tag $field="sponsors_o" class="row">
      <#if (contentModel.sponsors_o.item)??>
        <#list contentModel.sponsors_o.item as sponsor>
          <#assign index = sponsor?index>
          <@studio.tag $field="sponsors_o" $index=index class="wow fadeInUp col-md-3 col-sm-6 col-xs-6" $attrs={'data-wow-delay': '0.3s'}>
            <#if sponsor.url_s?? && sponsor.url_s?trim?has_content>
              <a href="${sponsor.url_s!''}">
                <@studio.img
                  $field="sponsors_o.picture_s"
                  $index=index
                  src=(sponsor.picture_s)
                  class="img-responsive sponsor-image"
                  alt="sponsors"
                />
              </a>
            <#else>
              <@studio.img
                $field="sponsors_o.picture_s"
                $index=index
                src=(sponsor.picture_s)
                class="img-responsive sponsor-image"
                alt="sponsors"
              />
            </#if>
          </@studio.tag>
        </#list>
      </#if>
    </@studio.tag>
  </div>
</section>
