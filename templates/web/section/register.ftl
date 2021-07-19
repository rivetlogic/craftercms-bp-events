<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
   REGISTER SECTION
============================== -->

<section id="${model['internal-name']}" class="parallax-section register-section" style="background: url('${model.bgImage_s!""}') 50%;">
  <div class="container">
    <div class="row">

      <div class="wow fadeInUp col-md-7 col-sm-7" data-wow-delay="0.6s">
        <@crafter.h2 $field="title_t">
          ${model.title_t!''}
        </@crafter.h2>
        <@crafter.h3 $field="description_html">
          ${model.description_html!''}
        </@crafter.h3>
        <@crafter.div $field="instructions_html">
          ${model.instructions_html!''}
        </@crafter.div>
      </div>

      <div class="wow fadeInUp col-md-5 col-sm-5" data-wow-delay="1s">
        <form action="/api/1/services/register.json" method="post">
          <#if (model.formFields_o.item)??>
            <#list model.formFields_o.item as field>
              <input
                name="${field.name_t}" class="form-control" id="${field.name_t}"
                placeholder="${field.label_t}"
                required="" ${field.label_t?contains("mail")?then('type="email"','type="text" ')}>
            </#list>
          </#if>
          <div class="col-md-offset-6 col-md-6 col-sm-offset-1 col-sm-10">
            <input
              name="submit" type="submit"
              class="form-control" id="submit"
              value="<#if model.submitLabel_t?? && model.submitLabel_t?trim?has_content>${model.submitLabel_t}<#else>Submit</#if>"
            >
          </div>
        </form>
      </div>

    </div>
  </div>
</section>

