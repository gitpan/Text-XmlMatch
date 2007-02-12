# -*- perl -*-

#this tests the module's ability to handle a configuration that only
#contains a single pattern.

use Test::More tests => 1;
use Data::Dumper;

BEGIN { use Text::XmlMatch; }
use Text::XmlMatch;

my $matcher = Text::XmlMatch->new('extras/singlepattern.xml');

$results = $matcher->findMatch('corp-test-dummydevice.medcity.net');
#print Dumper($results);
if ($results->{'DATACENTER-ndc'} eq 'market') {
  pass('Single Pattern XML Configuration');
} else {
  fail("Single Pattern XML Configuration Dumper($results)");
}
