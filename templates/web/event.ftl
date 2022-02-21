<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>${model.siteTitle_t}</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="/static-assets/css/animate.css">
  <link rel="stylesheet" href="/static-assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="/static-assets/css/owl.theme.css">
  <link rel="stylesheet" href="/static-assets/css/owl.carousel.css">
  <!-- Main css -->
  <link rel="stylesheet" href="/static-assets/css/style.css">
  <!-- Google Font -->
  <link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css'>
  <@crafter.head/>
</head>

<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">
<@crafter.body_top/>

<!-- =========================
     PRE LOADER
============================== -->
<div class="preloader">
  <div class="sk-rotating-plane"></div>
</div>

<!-- =========================
     NAVIGATION LINKS
============================== -->
<div class="navbar navbar-fixed-top custom-navbar" role="navigation">
  <div class="container">

    <!-- navbar header -->
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon icon-bar"></span>
        <span class="icon icon-bar"></span>
        <span class="icon icon-bar"></span>
      </button>
        <@crafter.a $field="pageTitle_t" hreh="#" class="navbar-brand">
          ${model.pageTitle_t!""}
        </@crafter.a>
    </div>

    <div class="collapse navbar-collapse">
      <#if (contentModel.sections_o.item)??>
        <ul class="nav navbar-nav navbar-right">
          <#list contentModel.sections_o.item as item>
            <#if item.component??>
              <#assign section = item.component />
            <#else>
              <#assign section = siteItemService.getSiteItem(item.key) />
            </#if>
            <#if (section.placeInNav?? && ("true" == section.placeInNav))>
              <li>
                <a href="#${section['internal-name']!''}">
                  ${section.navLabel!""}
                </a>
              </li>
            </#if>
          </#list>
        </ul>
      </#if>
    </div>
  </div>
</div>

<#if (contentModel.sections_o.item)??>
  <@crafter.renderComponentCollection $field="sections_o" />
<#else>
  <section id="contact" class="parallax-section details-section">
    <div class="container">
      <div class="row">
        <h1>This page doesn't have any section included.</h1>
        <h3>Please edit it on Crafter Studio</h3>
      </div>
    </div>
  </section>
</#if>

<!-- =========================
    FOOTER SECTION
============================== -->
<footer>
  <div class="container">
    <div class="row">

      <div class="col-md-12 col-sm-12 social-spacer">
        <@crafter.span $field="copyright_t" class="wow fadeInUp" $attributes={'data-wow-delay': '0.6s'}>
          ${model.copyright_t!''}
        </@crafter.span>
          <#if (contentModel.socialMedia_o.item)??>
            <ul class="social-icon">
              <#assign delay=1 />
              <#list contentModel.socialMedia_o.item as media>
                <li>
                  <a
                    href="${media.url_s}" class="fa ${media.icon_s} wow fadeInUp"
                    data-wow-delay="${delay}s"
                    target="_blank"
                  ></a>
                </li>
                <#assign delay= (delay + 0.3) />
              </#list>
            </ul>
          </#if>
      </div>
    </div>
  </div>
</footer>

<!-- =========================
    MODAL DIALOGS
============================== -->

<div class="modal fade" id="success-dialog" role="dialog">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 id="success-dialog-header" class="modal-title">Thank you</h3>
      </div>
      <div class="modal-body">
        <p>
          <span id="success-dialog-message" class="modal-main-message">
            Your request has been processed correctly.
          </span>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="fail-dialog" role="dialog">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 id="fail-dialog-header" class="modal-title">Error</h3>
      </div>
      <div class="modal-body">
        <p>
          <span id="fail-dialog-message" class="modal-main-message">
            Unable to process your request. </br>Please try again later.
          </span>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Back top -->
<a href="#back-top" class="go-top"><i class="fa fa-angle-up"></i></a>

<@crafter.body_bottom/>

<!-- =========================
     SCRIPTS
============================== -->
<script src="/static-assets/js/jquery.js"></script>
<script src="/static-assets/js/bootstrap.min.js"></script>
<script src="/static-assets/js/jquery.parallax.js"></script>
<script src="/static-assets/js/owl.carousel.min.js"></script>
<script src="/static-assets/js/smooth-scroll.min.js"></script>
<script src="/static-assets/js/wow.min.js"></script>
<script src="/static-assets/js/custom.js"></script>
</body>
</html>