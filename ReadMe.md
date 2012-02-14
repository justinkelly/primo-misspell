Extended misspellings files for ExLibris Primo
=========
### What

This extendes the default Primo misspelling file and adds all the misspellings listed in this Wikipead page: http://en.wikipedia.org/wiki/Wikipedia:Lists_of_common_misspellings/For_machines

### How to run
    ./merge_primo_misspell.pl

You will then be asked for which version of Primo you are using,  Choose one that corresponds to an available sub-folder
ie. 3.1.2

This will now convert the contents of the wikipedia_misspell.txt into Primo misspelling file formatting and merge it with the default Primo eng_misspell.txt file (located in the version sub-folder) and then sort this

Copy the newly prioducted $version/misspell_eng.txt to the Primo misspelling directory at ng/jaguar/home/profile/analysis/misspelling/

### Why 

Primo comes with only 130 misspellings, by merging in the Wikipedia source this brings it to over 4,000
and by combining your own misspellings file you can customise this as much as you want

Here is a screenshot of it in action
![Primo Yotube misspelling example](http://i.minus.com/ibf7h8VFi2cDkM.png)

The yotube=>youtube comes from the wikipedia list, this is anexample of a usefull misspelling that ExLibris are unlikely to include

### Extending

If you want to create a misspellings file for a version of Primo not listed just create a subfolder with the version number ie 3.1.0,
copy the current primo misspelling file (located at: ng/jaguar/home/profile/analysis/misspelling/misspell_eng.txt) to the version folder

Add/Edit the wikipedia_misspell.txt file if you wish

Then run the ./merge_primo_misspell.pl and upload the new file


### Adding new misspellings

You can add new misspellings into the wikipedia_misspell.txt file in the Wikipedia format - such as

    abondoned->abandoned
    abondoning->abandoning
    abondons->abandons
    aborigene->aborigine
    accesories->accessories


where the incorrect spelling is the first word followed by a -> then the corret spelling