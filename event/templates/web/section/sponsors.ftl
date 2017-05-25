<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    SPONSORS SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section sponsors-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="sponsors" path=contentModel.storeUrl label="Sponsors"/>>

            <div class="wow bounceIn col-md-12 col-sm-12">
                <div class="section-title">
                    <h2>${model.title!''}</h2>
                    <p>${model.description!''}</p>
                </div>
            </div>

            <#if (contentModel.sponsors.item)??><#list contentModel.sponsors.item as sponsor>
                <div class="wow fadeInUp col-md-3 col-sm-6 col-xs-6" data-wow-delay="0.3s">
                    <#if sponsor.url?? && sponsor.url?trim?has_content>
                        <a href="${sponsor.url!''}"><img src="${sponsor.picture}" class="img-responsive" alt="sponsors"></a>
                    <#else>
                        <img src="${sponsor.picture}" class="img-responsive" alt="sponsors">
                    </#if>
                </div>
            </#list></#if>
        </div>
    </div>
</section>
