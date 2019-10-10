<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro drawImage>
	<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
		<img src="${model.image}" class="img-responsive" alt="Overview">
	</div>
</#macro>

<section id="${model['internal-name']}" class="parallax-section image-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="image-details" path=contentModel.storeUrl label="Image - Details"/>>

			<#if "left" == model.imagePosition><@drawImage/></#if>
            <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
                <h3>${model.imageTitle_t!''}</h3>
                <p>${model.imageDescription_html!''}</p>
            </div>
			<#if "right" == model.imagePosition><@drawImage/></#if>
			
        </div>
    </div>
</section>
