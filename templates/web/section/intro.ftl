<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    INTRO SECTION   
============================== -->
<section id="${model['internal-name']}" class="parallax-section intro-section" style="background: url('${model.backgroundImage_s!""}') 50% 0 repeat-y fixed;">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
            	<div  <@studio.iceAttr iceGroup="intro-header" path=contentModel.storeUrl label="Intro - Header"/>>
					<h3 class="wow bounceIn" data-wow-delay="0.9s">${model.datePlace_t!""}</h3>
					<h1 class="wow fadeInUp" data-wow-delay="1.6s">${model.title_t!""}</h1>
                </div>

                <div  <@studio.iceAttr iceGroup="intro-featured" path=contentModel.storeUrl label="Intro - Featured"/>>
					<#if (contentModel.featuredSections_o.item)??><#list contentModel.featuredSections_o.item as feature>
						<#list feature.section_o.item as section>
							<#assign content =  siteItemService.getSiteItem(section.key) />
							<a href="#${content['internal-name']}" class="btn btn-lg ${feature.buttonStyle_s!'btn-default'} smoothScroll wow fadeInUp ${(feature.showOnMobile == "true")?then('','hidden-xs')}"
								data-wow-delay="2.3s">
								<#if feature.overwriteLabel_t?? && feature.overwriteLabel_t?trim?has_content>
									${feature.overwriteLabel_t}
								<#else>
									${content.navLabel}
								</#if>
							</a>
						</#list>
					</#list></#if>
				</div>
			</div>
		</div>
	</div>
</section>
