#!/usr/bin/perl -w


#create function to clean up input line
# Declare the subroutines
sub trim($);
sub trim($)
{
	my $string = shift;
	$string =~ s/^\s+//;
	$string =~ s/\s+$//;
	return $string;
}

print "What version of Primo are you using ?";
$primo_version = <>;
$primo_version = trim($primo_version);

#################################################################
#Merge the contents of the original primo file with the new one #
#################################################################
open (ORIG, "$primo_version/misspell_eng.txt.primo_original");
open (OUTPUT, '>',"$primo_version/misspell_eng.txt");

while (<ORIG>) {
	chomp;
	print OUTPUT "$_\n";
}

close(ORIG);
close(OUTPUT);


#################################################
#Merge the contents of the custom misspell file #
#################################################
open (CUSTOM, "custom_misspell.txt");
open (OUTPUT_CUSTOM, '>>',"$primo_version/misspell_eng.txt");

while (<CUSTOM>) {
	chomp;
	print OUTPUT_CUSTOM "$_\n";
}

close(CUSTOM);
close(OUTPUT_CUSTOM);


##############################################################
# Clean up wiki.txt spellings and merge with orig primo file #
##############################################################

open (OUTPUT_APPEND, '>>',"$primo_version/misspell_eng.txt");
$LOGFILE = "wikipedia_misspell.txt";

open(LOGFILE) or die("Could not open log file.");
foreach $line (<LOGFILE>) {
	
	$write_to_file = 'yes';

	#Clean up the data from the wiki.txt - change -> to spaces and , to or and append to new file
	$line = trim($line);
	$line =~ s/\-\>/ /;
	#nto include anyting after a comma
	@line_clean = split /\,/ , $line ;
        $line = $line_clean[0];

	#check if wiki misspelling in oring primo file - if it is skip
	@wiki_misspell = split / / ,$line;

	open (ORIG2, '<', "$primo_version/misspell_eng.txt.primo_original") or  die "Failed to read file : $! " ;
	open (OUTPUT, '>>',"$primo_version/misspell_eng.txt");

	while (<ORIG2>) {
		chomp;
		@primo_misspell = split / / , $_;

		if($primo_misspell[0] eq $wiki_misspell[0])
		{
			$write_to_file = 'no';
		}
	}
	close(ORIG2);

	if ($write_to_file eq 'yes') 
	{
		print OUTPUT_APPEND "$line \n";
	}


}
close(LOGFILE);
close(OUTPUT_APPEND);


##############################
# Sort the new misspell file #
##############################

open (NAMES_FILE, '<', "$primo_version/misspell_eng.txt")  or  die "Failed to read file : $! ";
my @not_sorted = <NAMES_FILE>;  # read entire file in the array
close (NAMES_FILE);
@sorted = sort { lc($a) cmp lc($b) } @not_sorted ;


open(FILE, '>',"$primo_version/misspell_eng.txt" ) || die "unable to open file write <$!>";
  
  foreach(@sorted) {
    print FILE "$_";
  }
  
close(FILE);
