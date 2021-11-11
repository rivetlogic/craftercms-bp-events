<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    SPONSORS SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section sponsors-section">
  <div class="container">
    <div class="row">
      <div class="wow bounceIn col-md-12 col-sm-12">
        <div class="section-title">
          <@crafter.h2 $field="title_t">
            ${model.title_t!''}
          </@crafter.h2>
          <@crafter.span $field="description_html">
            ${model.description_html!''}
          </@crafter.span>
        </div>
      </div>
    </div>
    <@crafter.div $field="sponsors_o" class="row">
      <#if (contentModel.sponsors_o.item)??>
        <#list contentModel.sponsors_o.item as sponsor>
          <#assign index = sponsor?index>
          <@crafter.div $field="sponsors_o" $index=index class="wow fadeInUp col-md-3 col-sm-6 col-xs-6" $attrbutes={'data-wow-delay': '0.3s'}>
            <#if sponsor.url_s?? && sponsor.url_s?trim?has_content>
              <a href="${sponsor.url_s!''}">
                <@crafter.img
                  $field="sponsors_o.picture_s"
                  $index=index
                  src=(sponsor.picture_s)
                  class="img-responsive sponsor-image"
                  alt="sponsors"
                />
              </a>
            <#else>
              <@crafter.img
                $field="sponsors_o.picture_s"
                $index=index
                src=(sponsor.picture_s)
                class="img-responsive sponsor-image"
                alt="sponsors"
              />
            </#if>
          </@crafter.div>
        </#list>
      </#if>
    </@crafter.div>
  </div>
</section>
