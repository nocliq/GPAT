#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
use JSON; # imports encode_json, decode_json, to_json and from_json.
# Generic Perl Api Tool

my $proto = "https";
my $baseurl = "partner.api.beatsmusic.com";
my $endpoint = "/v1/api/search/federated";
my $cid = "yy58uccwddty942z9mtzxzw3";
my $query = "UUOArynwzz8";
my $method = "GET";
my $url = $proto . "://" . $baseurl . $endpoint . "?q=" . $query . "&client_id=" . $cid; 

print Dumper $url;

require LWP::UserAgent;
 
my $ua = LWP::UserAgent->new;
$ua->timeout(5);
 
my $response = $ua->get($url);
 
if ($response->is_success) {
	my $json = JSON->new->allow_nonref;
	my $decoded = $json->decode( $response->decoded_content() );
	print Dumper $decoded;
} else {
     die $response->status_line;
}
