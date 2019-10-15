<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro renderVideo>
<div class="wow fadeInUp col-md-6 col-sm-10" data-wow-delay="1.6s">
    <div class="embed-responsive embed-responsive-16by9">
        <#if contentModel.video_s?? && (contentModel.video_s?length>0) >
            <div class="fullscreen-bg">
                <video id="main-video" controls preload="auto" autoplay >
                    <source src="${contentModel.video_s}" type="video/mp4">
                </video>
            </div>
            <div class="overlay"></div>
        </#if>
    </div>
</div>
</#macro>

<section id="${model['internal-name']}" class="parallax-section video-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="video-details" path=contentModel.storeUrl label="Video - Details"/>>

			<#if "left" == model.videoPosition_t><@renderVideo/></#if>
            <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
                <h3>${model.videoTitle_t!''}</h3>
                <p>${model.videoDescription_t!''}</p>
            </div>
			<#if "right" == model.videoPosition_t><@renderVideo/></#if>
        </div>
    </div>
</section>
