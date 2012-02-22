This is a very basic script to download spots you've visited in Gowalla. Since Gowalla hasn't released any data migration tools yet, I though I'd cobble something together before it's too late.

First, install the Github gem. Use the updated version from https://github.com/rud/gowalla or download a prebuilt gem directly from https://github.com/downloads/gtcaz/gowalla-bak/gowalla-0.5.8.gem

Next, cp config.rb.EXAMPLE to config.rb and add your login information and API key

Get your API key while you still can: http://gowalla.com/api/keys

Then, run. You can save your output the usual UNIX way.

    ruby gbak.rb > 2012-02-22.txt
