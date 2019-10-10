<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
    PROGRAM SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section program-section">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="programs-section" path=contentModel.storeUrl label="Programs"/>>

            <div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="0.6s">
                <div class="section-title">
                    <h2>${model.sectionTitle_t!''}</h2>
                    <p>${model.sectionDescription_t!''}</p>
                </div>
            </div>
            <#if (contentModel.programs_o.item)??>
                <!-- Nav tabs -->
                <#assign currentDay=""/>
                <#assign currentDayIndex=0/>
                <ul class="nav nav-tabs" role="tablist">
                <#list contentModel.programs_o.item as program>
                <#if currentDay != program.programDay_t>
                    <#assign currentDay = program.programDay_t/>
                    <#assign currentDayIndex = (currentDayIndex + 1) />
                    <li <#if currentDayIndex==1>class="active"</#if>><a href="#day${currentDayIndex}" aria-controls="day${currentDayIndex}" role="tab" data-toggle="tab">${currentDay}</a></li>
                </#if>
                </#list>
                </ul>

                <div class="wow fadeInUp col-md-10 col-sm-10" data-wow-delay="0.9s">
                    <!-- tab panes -->
                    <div class="tab-content">
                        <#assign currentDay=""/>
                        <#assign currentDayIndex=0/>
                        <#assign closePane=false>
                        <#list contentModel.programs_o.item as program>
                            <#if currentDay != program.programDay_t>
                                <#if closePane>
                                </div>
                                    <#assign closePane=false/>
                                </#if>
                                <#assign closePane=true>
                                <#assign currentDay = program.programDay_t/>
                                <#assign currentDayIndex = (currentDayIndex + 1) />
                                <div role="tabpanel" class="tab-pane <#if currentDayIndex==1>active</#if>" id="day${currentDayIndex}">
                            <#else>
                                <!-- program divider -->
                                <div class="program-divider col-md-12 col-sm-12"></div>
                            </#if>
                            <!-- program speaker here -->
                            <div class="col-md-2 col-sm-2">
                                <#if program.programPicture?? && program.programPicture?trim?has_content>
                                    <img src="${program.programPicture!''}" class="img-responsive" alt="program">
                                </#if>
                            </div>
                            <div class="col-md-10 col-sm-10">
                                <h6>
                                    <span><i class="fa fa-clock-o"></i> ${program.programTime_t!''}</span>
                                    <span><i class="fa fa-map-marker"></i> ${program.programLocation!''}</span>
                                </h6>
                                <h3>${program.programTitle!''}</h3>
                                <h4>${program.programSubtitle!''}</h4>
                                <p>${program.programDescription!''}</p>
                            </div>
                        </#list>
                        <#if closePane>
                            </div>
                        </#if>
                </div>

                </div>

            </#if>

        </div>
</section>


