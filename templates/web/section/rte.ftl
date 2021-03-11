<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    VENUE SECTION
============================== -->

<@studio.componentRootTag
  $tag="section"
  $attrs={
    'id': '${model["internal-name"]}',
    'class': 'parallax-section rte-section',
    'style': 'background: url(\'${model.bgImage_s}\') 50% 0 repeat-y fixed;'
  }
>
  <div class="container">
    <div class="row">
      <@studio.tag $field="body_html" class="wow fadeInLeft col-md-offset-1 col-md-5 col-sm-8" $attrs={'data-wow-delay': '0.9s'}>
        ${model.body_html!''}
      </@studio.tag>
    </div>
  </div>
</@studio.componentRootTag>