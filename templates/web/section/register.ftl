<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- =========================
   REGISTER SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section register-section" style="background: url('${model.bgImage_s!""}') 50%;">
    <div class="container">
        <div class="row" <@studio.iceAttr iceGroup="register" path=contentModel.storeUrl label="Register"/>>

            <div class="wow fadeInUp col-md-7 col-sm-7" data-wow-delay="0.6s">
                <h2>${model.title!''}</h2>
                <h3>${model.description!''}</h3>
                <p>${model.instructions!''}</p>
            </div>

            <div class="wow fadeInUp col-md-5 col-sm-5" data-wow-delay="1s">
                <form action="/api/1/services/register.json" method="post">
                    <#if (model.formFields.item)??><#list model.formFields.item as field>
                        <input name="${field.name}" class="form-control" id="${field.name}" placeholder="${field.label}" required="" ${field.label?contains("mail")?then('type="email"','type="text" ')}>
                    </#list></#if>
                    <div class="col-md-offset-6 col-md-6 col-sm-offset-1 col-sm-10">
                        <input name="submit" type="submit"
                               class="form-control" id="submit" value="<#if model.submitLabel?? && model.submitLabel?trim?has_content>${model.submitLabel}<#else>Submit</#if>">
                    </div>
                </form>
            </div>
            
        </div>
    </div>
</section>


