<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    SPEAKERS SECTION
============================== -->

<section id="speakers" class="parallax-section speakers-section" xmlns="http://www.w3.org/1999/html">
  <div class="container">
    <div class="row">

      <div class="col-md-12 col-sm-12 wow bounceIn">
        <div class="section-title">
          <@crafter.h2 $field="speakersTitle_t">
            ${model.speakersTitle_t!''}
          </@crafter.h2>
          <@crafter.p $field="speakersDescription_t">
            ${model.speakersDescription_t!''}
          </@crafter.p>
        </div>
      </div>

      <@crafter.renderRepeatGroup
        $field="speakers_o"
        $containerTag="div"
        $containerAttributes={'class': 'owl-carousel', 'id': 'owl-speakers'}
        $itemTag="div"
        $itemAttributes={'class': 'item wow fadeInUp col-md-3 col-sm-3', 'data-wow-delay': '0.9s'};
        speaker, index
      >
        <div class="speakers-wrapper">
          <@crafter.img $field="speakers_o.speakerImage_s" $index=index src=(speaker.speakerImage_s!'') class="img-responsive" alt="speakers" />
          <div class="speakers-thumb">
            <@crafter.h3 $field="speakers_o.speakerName_t" $index=index>
              ${speaker.speakerName_t!''}
            </@crafter.h3>
            <@crafter.h6 $field="speakers_o.speakerTitle_t" $index=index>
              ${speaker.speakerTitle_t!''}
            </@crafter.h6>
          </div>
        </div>
      </@crafter.renderRepeatGroup>
    </div>
  </div>
</section>

