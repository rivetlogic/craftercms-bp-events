<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    SPEAKERS SECTION
============================== -->
<section id="speakers" class="parallax-section speakers-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="speakers-details" path=contentModel.storeUrl label="Speakers"/>>

            <div class="col-md-12 col-sm-12 wow bounceIn">
                <div class="section-title">
                    <h2>${model.speakersTitle_t!''}</h2>
                    <p>${model.speakersDescription_t!''}</p>
                </div>
            </div>


            <div id="owl-speakers" class="owl-carousel">

            <#if (contentModel.speakers_o.item)??><#list contentModel.speakers_o.item as speaker>
                <div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.9s">
                    <div class="speakers-wrapper">
                        <img src="${speaker.speakerImage_s!''}" class="img-responsive" alt="speakers">
                        <div class="speakers-thumb">
                            <h3>${speaker.speakerName_t!''}</h3>
                            <h6>${speaker.speakerTitle_t!''}</h6>
                        </div>
                    </div>
                </div>
            </#list></#if>
            </div>

        </div>
    </div>
</section>

