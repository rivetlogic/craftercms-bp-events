<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    VENUE SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section rte-section" <#if model.bgImage_s?? && model.bgImage_s?trim?has_content> style="background: url('${model.bgImage_s}') 50% 0 repeat-y fixed;"</#if>>
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="rte-section" path=contentModel.storeUrl label="RTE"/>>

            <div class="wow fadeInLeft col-md-offset-1 col-md-5 col-sm-8" data-wow-delay="0.9s">
                ${model.body!''}
            </div>

        </div>
    </div>
</section>
