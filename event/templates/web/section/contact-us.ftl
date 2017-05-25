<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!-- =========================
    CONTACT SECTION
============================== -->
<section id="${model['internal-name']}" class="parallax-section contact-section" style="background: url('${model.bgImage!""}') 50%;">
    <div class="container">
        <div class="row"  <@studio.iceAttr iceGroup="contact-us" path=contentModel.storeUrl label="Contact Us"/>>

            <div class="wow fadeInUp col-md-offset-1 col-md-5 col-sm-6" data-wow-delay="0.6s">
                <div class="contact_des">
                    <div>${model.formDescription!''}</div>
                        <#if model.attachment?? && model.attachment.item??>
                            <a href="${model.attachment.item.key}" class="btn btn-danger">
                                <#if model.attachmentLabel?? && model.attachmentLabel?trim?has_content>
                                    ${model.attachmentLabel}
                                <#else>
                                    DOWNLOAD
                                </#if>
                            </a>
                        </#if>
                </div>
            </div>

            <div class="wow fadeInUp col-md-5 col-sm-6" data-wow-delay="0.9s">
                <div class="contact_detail">
                    <div class="section-title">
                        <h2>${model.formTitle!''}</h2>
                    </div>
                    <form action="/api/1/services/contactUs.json" method="post">
                        <#if (model.formFields.item)??><#list model.formFields.item as field>
                        <#if "true" == field.isTextArea>
                            <textarea name="${field.name}" rows="5" class="form-control" id="${field.name}" placeholder="${field.label}"></textarea>
                        <#else>
                            <input name="${field.name}" type="text" class="form-control" id="${field.name}" placeholder="${field.label}">
                        </#if>
                        </#list></#if>
                        <div class="col-md-6 col-sm-10">
                            <input name="submit" type="submit" class="form-control" id="submit" value="<#if model.submitLabel?? && model.submitLabel?trim?has_content>${model.submitLabel}<#else>SEND</#if>">
                        </div>
                    </form>
                 </div>
             </div>
        </div>
    </div>
</section>