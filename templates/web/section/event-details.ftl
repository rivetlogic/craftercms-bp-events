<#import "/templates/system/common/ice.ftl" as studio />
<!-- =========================
    DETAIL SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section details-section">
  <div class="container">
    <@studio.renderRepeatCollection
      $field="detailElements_o"
      $containerTag="div"
      $containerAttributes={'class': 'row'}
      $itemTag="div"
      $itemAttributes={'class': 'wow fadeInLeft col-md-4 col-sm-4', 'data-wow-delay': '0.3s'};
      item, index
    >
      <i class="${item.elementType_s!''}"></i>
      <@studio.h3 $field="detailElements_o.elementTitle_t" $index=index>
        ${item.elementTitle_t!''}
      </@studio.h3>
      <@studio.p $field="detailElements_o.elementDescription_t" $index=index>
        ${item.elementDescription_t!''}
      </@studio.p>
    </@studio.renderRepeatCollection>
  </div>
</section>