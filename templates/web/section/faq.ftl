<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    FAQ SECTION
============================== -->
<@studio.componentRootTag
  $tag="section"
  $attrs={
    'id': '${model["internal-name"]}',
    'class': 'parallax-section faq-section'
  }
>
  <div class="container">
    <div class="row">

      <!-- Section title
      ================================================== -->
      <div class="wow bounceIn col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 text-center">
        <div class="section-title">
          <@studio.h2 $field="title_t">
            ${model.title_t!''}
          </@studio.h2>
          <@studio.span $field="description_html">
            ${model.description_html!''}
          </@studio.span>
        </div>
      </div>

      <div class="wow fadeInUp col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10" data-wow-delay="0.9s">
        <@studio.renderRepeatCollection
          $field="faqs_o"
          $containerTag="div"
          $containerAttributes={'class': 'panel-group', 'id': 'accordion', 'role': 'tablist', 'aria-multiselectable': 'true'}
          $itemTag="div"
          $itemAttributes={'class': 'panel panel-default'};
          faq, index
        >
          <div class="panel-heading" role="tab" id="heading-${index}">
            <h4 class="panel-title">
              <a
                class="collapsed faq-collapse-fix" data-toggle="collapse"
                data-parent="#accordion" href="#collapse-${index}"
                aria-expanded="false" aria-controls="collapse-${index}"
              >
                <@studio.span $field="faqs_o.question_t" $index=index>
                  ${faq.question_t}
                </@studio.span>
              </a>
            </h4>
          </div>
          <div
            id="collapse-#{index}"
            class="panel-collapse collapse <#if index==0> in</#if>" role="tabpanel"
            aria-labelledby="heading-${index}"
          >
            <@studio.tag $field="faqs_o.answer_html" $index=index class="panel-body">
              ${faq.answer_html}
            </@studio.tag>
          </div>
        </@studio.renderRepeatCollection>
      </div>

    </div>
  </div>
</@studio.componentRootTag>