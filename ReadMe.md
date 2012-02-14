Extended misspellings files for ExLibris Primo
=========
### What

This extendes the default Primo misspelling file and adds all the misspellings listed in this Wikipead page: http://en.wikipedia.org/wiki/Wikipedia:Lists_of_common_misspellings/For_machines)

### How to run
    ./merge_primo_misspell.pl

You will then be asked for which version of Primo you are using,  Choose one that corresponds to an available sub-folder
ie. 3.1.2

This will now convert the contents of the wikipedia_misspell.txt into Primo misspelling file formatting and merge it with the default Primo eng_misspell.txt file (located in the version sub-folder) and then sort this

Copy the newly prioducted $version/misspell_eng.txt to the Primo misspelling directory at ng/jaguar/home/profile/analysis/misspelling/misspell_eng

### Extending

If you want to create a misspellings file for a version of Primo not listed just create a subfolder with the version number ie 3.1.0,
copy the current primo misspelling file (located at: ng/jaguar/home/profile/analysis/misspelling/misspell_eng.txt) to the version folder

Add/Edit the wikipedia_misspell.txt file if you wish

Then run the ./merge_primo_misspell.pl and upload the new file
