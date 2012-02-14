Extended misspellings files for ExLibris Primo
=========

### How to run
    ./merge_primo_misspell.pl

You will then be asked for which version of Primo you are using,  Choose one that corresponds to an available sub-folder
ie. 3.1.2

This will now convert the contents of the wikipedia_misspell.txt ( which comes from http://en.wikipedia.org/wiki/Wikipedia:Lists_of_common_misspellings/For_machines) into Primo misspelling file formatting and merge it with the default Primo eng_misspell.txt file (located in the version sub-folder) and then sort this

Copy the newly prioducted $version/misspell_eng.txt to the Primo misspelling directory at ng/jaguar/home/profile/analysis/misspelling/misspell_eng


