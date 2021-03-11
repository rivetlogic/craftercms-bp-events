<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    SPEAKERS SECTION
============================== -->

<@studio.componentRootTag
  $tag="section"
  id="speakers"
  class="parallax-section speakers-section"
>
  <div class="container">
    <div class="row">

      <div class="col-md-12 col-sm-12 wow bounceIn">
        <div class="section-title">
          <@studio.h2 $field="speakersTitle_t">
            ${model.speakersTitle_t!''}
          </@studio.h2>
          <@studio.p $field="speakersDescription_t">
            ${model.speakersDescription_t!''}
          </@studio.p>
        </div>
      </div>

      <@studio.renderRepeatCollection
        $field="speakers_o"
        $containerTag="div"
        $containerAttributes={'class': 'owl-carousel', 'id': 'owl-speakers'}
        $itemTag="div"
        $itemAttributes={'class': 'item wow fadeInUp col-md-3 col-sm-3', 'data-wow-delay': '0.9s'};
        speaker, index
      >
        <div class="speakers-wrapper">
          <@studio.img $field="speakers_o.speakerImage_s" $index=index src=(speaker.speakerImage_s!'') class="img-responsive" alt="speakers" />
          <div class="speakers-thumb">
            <@studio.h3 $field="speakers_o.speakerName_t" $index=index>
              ${speaker.speakerName_t!''}
            </@studio.h3>
            <@studio.h6 $field="speakers_o.speakerTitle_t" $index=index>
              ${speaker.speakerTitle_t!''}
            </@studio.h6>
          </div>
        </div>
      </@studio.renderRepeatCollection>
    </div>
  </div>
</@studio.componentRootTag>

