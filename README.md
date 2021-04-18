This is used to generate my [zaboople.github.io](https://zaboople.github.io) site.

To update the "distributions" parts - executables, zips, javadocs - look in lib/external* directories.

When running the site under tomcat with the template engine on, use this URL:
http://localhost/tmplzsite/content/pages/index.html

Some of the templates use a Slot called "Context", which is filled in using the position of the template relative to the "content" directory. The site generator fills it in on pages automatically using ../../../etc. based on what level the page is at. The Context slot is only necessary in an *included* template, since it doesn't know what level of the site it will appear in; files that map directly to pages can just hard-code the ../../etc. part.