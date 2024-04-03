#!/usr/bin/perl

#full path for the guestbook file
$file="comments.html";

require "cgi-lib.pl";
&ReadParse;

#translate all the linefeeds into <BR>s for nice formatting
$in{'comments'} =~ s/\n/<BR>\n/g;

#open the guestbook file and append data to the end of it
open(GUESTBOOK,">>$file");

#print the information
print GUESTBOOK "\n<UL>\n";
print GUESTBOOK $in{'comments'};
print GUESTBOOK "\n<B>$in{'name'}<BR>\n";
print GUESTBOOK "$in{'location'}</B><BR>\n";

close GUESTBOOK;