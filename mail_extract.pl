#!/usr/bin/perl 
# Basic and imperfect mail extractor
# Simon Ibsen

$i = 0;
while (<>)
{
        chomp;
        if(/^Envelope-to:/)
        {
                $i++;
        }
        open (MAILFILE, ">>message$i.eml");
        print MAILFILE $_;
        close (MAILFILE);
}
