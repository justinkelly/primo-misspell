Extended misspellings files for ExLibris Primo
=========
### What

This extendes the default Primo misspelling file, adds all the misspellings listed in this Wikipead page: http://en.wikipedia.org/wiki/Wikipedia:Lists_of_common_misspellings/For_machines
, provides a way to add your own custom misspellings and adds extra language translations

### Translations

Currently we have misspelling files for English and Danish.  If you can contribute to existing files or new language files it would be gretaly appreciated

### Why 

Primo comes with only 130 misspellings and if you review your primo search queries logs you'll see a lot of common misspellings that aren't covered by Primo.  By merging in the Wikipedia source this brings it to over **4,000**
and by combining your own misspellings file you can customise this as much as you want

Here is a screenshot of it in action
![Primo Yotube misspelling example](http://i.minus.com/ibf7h8VFi2cDkM.png)

The yotube=>youtube comes from the wikipedia list, this is an example of a useful misspelling that ExLibris are unlikely to include

### Adding new misspellings

You can add new misspellings into the custom_misspell.txt file in the Primo format - such as

    acheive achieve 
    adress address 
    alot a lot or allot 
    alterior ulterior 
    athiest atheist 

Where the incorrect spelling is the first word followed by a space then the corret spelling.
Note the *or* in the alot statement, this allows you to define multiple spelling results

I've added a sample into the custom_misspell.txt for a common misspelling of our Instituion name

    swineburne swinburne

### How to run
    ./merge_primo_misspell.pl

You will then be asked for which version of Primo you are using,  Choose one that corresponds to an available sub-folder
ie. 3.1.2

This will now convert the contents of the wikipedia_misspell.txt into Primo misspelling file formatting and merge it with the default Primo eng_misspell.txt file (located in the version sub-folder) and then sort this

Copy the newly prioducted $version/misspell_eng.txt to the Primo misspelling directory at ng/jaguar/home/profile/analysis/misspelling/

### Extending to other versions of Primo

If you want to create a misspellings file for a version of Primo not listed just create a subfolder with the version number ie 3.1.0,
copy the current primo misspelling file (located at: ng/jaguar/home/profile/analysis/misspelling/misspell_eng.txt) to the version folder

Add/Edit the wikipedia_misspell.txt file if you wish

Then run the ./merge_primo_misspell.pl and upload the new file
