<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    SPONSORS SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section sponsors-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="sponsors" path=contentModel.storeUrl label="Sponsors"/>>

            <div class="wow bounceIn col-md-12 col-sm-12">
                <div class="section-title">
                    <h2>${model.title_t!''}</h2>
                    <p>${model.description_html!''}</p>
                </div>
            </div>

            <#if (contentModel.sponsors_o.item)??><#list contentModel.sponsors_o.item as sponsor>
                <div class="wow fadeInUp col-md-3 col-sm-6 col-xs-6" data-wow-delay="0.3s">
                    <#if sponsor.url_s?? && sponsor.url_s?trim?has_content>
                        <a href="${sponsor.url_s!''}"><img src="${sponsor.picture_s}" class="img-responsive sponsor-image" alt="sponsors"></a>
                    <#else>
                        <img src="${sponsor.picture_s}" class="img-responsive sponsor-image" alt="sponsors">
                    </#if>
                </div>
            </#list></#if>
        </div>
    </div>
</section>
