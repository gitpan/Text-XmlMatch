# -*- perl -*-

# t/007_listGroups.t - check module ability to list groups defined in the configuration XML file

use Test::More tests => 2;
use Data::Dumper;

BEGIN { use_ok( 'Text::XmlMatch' ); }
use Text::XmlMatch;

my $matcher = Text::XmlMatch->new('extras/EHConfig.xml');

# ASD Exception block
$r_listOfGroups = $matcher->listGroups();
if (@$r_listOfGroups > 10) {
  pass("Group listing");
} else {
  fail("Group listing");
}

foreach (@$r_listOfGroups) {
  print "$_\n";
}
