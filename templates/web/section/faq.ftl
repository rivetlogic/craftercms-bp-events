<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    FAQ SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section faq-section">
  <div class="container">
    <div class="row">

      <!-- Section title
      ================================================== -->
      <div class="wow bounceIn col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 text-center">
        <div class="section-title">
          <@crafter.h2 $field="title_t">
            ${model.title_t!''}
          </@crafter.h2>
          <@crafter.span $field="description_html">
            ${model.description_html!''}
          </@crafter.span>
        </div>
      </div>

      <div class="wow fadeInUp col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10" data-wow-delay="0.9s">
        <@crafter.renderRepeatGroup
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
                <@crafter.span $field="faqs_o.question_t" $index=index>
                  ${faq.question_t}
                </@crafter.span>
              </a>
            </h4>
          </div>
          <div
            id="collapse-#{index}"
            class="panel-collapse collapse <#if index==0> in</#if>" role="tabpanel"
            aria-labelledby="heading-${index}"
          >
            <@crafter.div $field="faqs_o.answer_html" $index=index class="panel-body">
              ${faq.answer_html}
            </@crafter.div>
          </div>
        </@crafter.renderRepeatGroup>
      </div>

    </div>
  </div>
</section>