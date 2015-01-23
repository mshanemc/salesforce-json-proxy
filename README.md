When using visualforce, say you want to get data from another site (esp REST API)

You can't grab that directly from the page's javascript because of cross-origin rules.

This package uses this pattern:

Page script calls remote Apex
Apex calls out to site (remote site is authorized in setup)
Apex returns the payload to the page