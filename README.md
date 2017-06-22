# Crafter CMS Blueprint: Event

**Event** is a Crafter Studio template for event details, it's based on a theme developed by  
 [templatemo](http://www.templatemo.com/tm-486-new-event) where is described as a  "fully responsive one-page template for events, conferences or workshops."
 
# Registration and Contact-Us
Registration and Contact-Us functionality can be customized by editing the controllers at
  
  - /scripts/rest/register.post.groovy
  - /scripts/rest/contactUs.post.groovy
  

# Known Issues

## Video Playback on Safari
In Safari (Chrome and Firefox work properly), videos are not displayed. This seems to occur due to lack of implementation for [206 Partial Content](https://httpstatuses.com/206) and its associated headers. However, this can be fixed by configuring another web server to serve this files statically.

### Tomcat
To do this, edit the file `apache-tomcat/conf/server.xml` and add a context like this:

    <Context docBase="../../data/repos/sites/<your-site>/sandbox/static-assets/video" path="/static-assets/video" />

You may need to tweak the docbase a bit, to begin with, replace `<your-site>` with your site's name. You may also prefer to point to `published/` instead of `sandbox/`, and for your live site, it's a different path, similar to `/opt/crafter/bin/delivery/data/deployer/deployments/<your-environment>/<your-site>/`.
More information in [Tomcat's docs](https://tomcat.apache.org/tomcat-8.0-doc/config/context.html).

### Apache HTTP Server

You may have Apache httpd connect with Tomcat through ajp like this:

	ProxyPreserveHost ON
	ProxyPass / ajp://localhost:8009/
	ProxyPassReverse / ajp://localhost:8009/

in this case, use

	DocumentRoot "/filepath/to/crafter/site/"
	...
	ProxyPass /static-assets !

The filepath should be such that `static-assets` exists in it, like `/opt/crafter/bin/delivery/data/deployer/deployments/dev/art_showcase/` in the case of a production site (`static-assets` is in `/opt/crafter/bin/delivery/data/deployer/deployments/dev/art_showcase/static-assets/`).

Reload apache configuration with `service apache2 reload`.

# License
[New Event Template](http://www.templatemo.com/tm-486-new-event) is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). Permissions beyond the scope of this license is available [here](http://www.templatemo.com/contact).

# Additional Licenses
The Event blueprint also contains the following resources:

- Smart phone video from https://pixabay.com/en/videos/social-media-smart-phone-mobile-1360/ under Public Domain
