<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    DETAIL SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section details-section">
  <div class="container">
    <@crafter.renderRepeatGroup
      $field="detailElements_o"
      $containerTag="div"
      $containerAttributes={'class': 'row'}
      $itemTag="div"
      $itemAttributes={'class': 'wow fadeInLeft col-md-4 col-sm-4', 'data-wow-delay': '0.3s'};
      item, index
    >
      <i class="${item.elementType_s!''}"></i>
      <@crafter.h3 $field="detailElements_o.elementTitle_t" $index=index>
        ${item.elementTitle_t!''}
      </@crafter.h3>
      <@crafter.p $field="detailElements_o.elementDescription_t" $index=index>
        ${item.elementDescription_t!''}
      </@crafter.p>
    </@crafter.renderRepeatGroup>
  </div>
</section>