#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
# Generic Perl Api Tool

my $proto = "https";
my $baseurl = "partner.api.beatsmusic.com";
my $endpoint = "/v1/api/search/federated";
my $cid = "yy58uccwddty942z9mtzxzw3";
my $query = "UUOArynwzz8";
my $method = "GET";
my $url = $proto . "://" . $endpoint . "?q=" . $query . "&client_id=" . $cid; 

print Dumper $url;