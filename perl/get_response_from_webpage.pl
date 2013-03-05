#!/usr/bin/perl

#Hit a url with a user/password and save the output


use WWW::Mechanize;
my $mech = WWW::Mechanize->new( autocheck => 1 );
$mech->credentials( 'someuser' => 'somepass' );
$mech->get( 'https://datadirect.somesite.com/services/DataFetch?report=MARKET_DATA_UNIV&id=861589AZ2&format=xml' );
open OUTPUT, ">factset_nightly.xml";
print OUTPUT $mech->content();
close OUTPUT;


