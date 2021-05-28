<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    PROGRAM SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section program-section">
  <div class="container">
    <div class="row">

      <div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="0.6s">
        <div class="section-title">
          <@crafter.h2 $field="sectionTitle_t">
            ${model.sectionTitle_t!''}
          </@crafter.h2>
          <@crafter.p $field="sectionDescription_t">
            ${model.sectionDescription_t!''}
          </@crafter.p>
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
              <li <#if currentDayIndex==1>class="active"</#if>>
                <a
                  href="#day${currentDayIndex}" aria-controls="day${currentDayIndex}"
                  role="tab" data-toggle="tab"
                >
                  ${currentDay}
                </a>
              </li>
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
              <#assign index = program?index>
              <#if currentDay != program.programDay_t>
                <#if closePane>
                  </div>
                  <#assign closePane=false/>
                </#if>
                <#assign closePane=true>
                <#assign currentDay = program.programDay_t/>
                <#assign currentDayIndex = (currentDayIndex + 1) />
                <div
                  role="tabpanel" class="tab-pane <#if currentDayIndex==1>active</#if>"
                  id="day${currentDayIndex}"
                >
              <#else>
                <!-- program divider -->
                <div class="program-divider col-md-12 col-sm-12"></div>
              </#if>
              <!-- program speaker here -->
              <div class="col-md-2 col-sm-2">
                  <#if program.programPicture_s?? && program.programPicture_s?trim?has_content>
                    <@crafter.img
                      $field="programs_o.programPicture_s"
                      $index=index
                      src=(program.programPicture_s!'')
                      class="img-responsive"
                      alt="program"
                    />
                  </#if>
              </div>
              <div class="col-md-10 col-sm-10">
                <h6>
                  <span>
                    <i class="fa fa-clock-o"></i>
                    <@crafter.span $field="programs_o.programTime_t" $index=index>
                      ${program.programTime_t!''}
                    </@crafter.span>
                  </span>
                  <span>
                    <i class="fa fa-map-marker"></i>
                    <@crafter.span $field="programs_o.programLocation_t" $index=index>
                      ${program.programLocation_t!''}
                    </@crafter.span>
                  </span>
                </h6>
                <@crafter.h3 $field="programs_o.programTitle_t" $index=index>
                  ${program.programTitle_t!''}
                </@crafter.h3>
                <@crafter.h4 $field="programs_o.programSubtitle_t" $index=index>
                  ${program.programSubtitle_t!''}
                </@crafter.h4>
                <@crafter.p $field="programs_o.programDescription_t" $index=index>
                  ${program.programDescription_t!''}
                </@crafter.p>
              </div>
            </#list>
            <#if closePane>
              </div>
            </#if>
        </div>
      </#if>
    </div>
  </div>
</section>


