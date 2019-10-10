<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    FAQ SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section faq-section" <@studio.iceAttr iceGroup="faq-section" path=contentModel.storeUrl label="FAQ"/>>
    <div class="container">
        <div class="row">

            <!-- Section title
            ================================================== -->
            <div class="wow bounceIn col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 text-center">
                <div class="section-title">
                    <h2>${model.title_t!''}</h2>
                    <p>${model.description_html!''}</p>
                </div>
            </div>

            <div class="wow fadeInUp col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10" data-wow-delay="0.9s">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                    <#if (model.faqs.item)??><#list model.faqs.item as faq>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="heading-${faq_index}">
                                <h4 class="panel-title">
                                    <a class="collapsed faq-collapse-fix" data-toggle="collapse" data-parent="#accordion" href="#collapse-${faq_index}" aria-expanded="false" aria-controls="collapse-${faq_index}">
                                        ${faq.question}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-#{faq_index}" class="panel-collapse collapse <#if faq_index==0> in</#if>" role="tabpanel" aria-labelledby="heading-${faq_index}">
                                <div class="panel-body">
                                    ${faq.answer}
                                </div>
                            </div>
                        </div>
                    </#list></#if>
                </div>
            </div>

        </div>
    </div>
</section>
