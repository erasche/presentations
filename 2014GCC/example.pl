#!/usr/bin/perl
use strict;
use warnings;
use CPT::GalaxyGetOpt;
my $ggo  = CPT::GalaxyGetOpt->new();
my $options = $ggo->getOptions(
 'options' => [
  [ 'file', 'Input file', { validate => 'File/Input', multiple => 1 } ],
  [ 'int', 'An integer', { validate => 'Int', min => 10, deafult => 30}],
  [ 'option', 'Select an option!',{ validate => 'Option',
    options => { 'a' => 'Alpha', 'b' => 'Bravo' }, multiple => 1 } ],
 ],
 'outputs' => [
  ['test_output','Output Data', {
    validate => 'File/Output', required => 1, default => 'out',
    data_format => 'text/plain', default_format => 'TXT'
   }
  ],
 ],
 'defaults' => [
  'appid' => 'org.cpt.examples.GGOPoster',
  'appname' => 'Example Utility',
  'appdesc' => 'prints out options passed to it',
  'appvers' => '1.0.0',
 ],
 'tests' => [
  {
   test_name    => "Default", params => {},
   outputs => { 'test_output' => ["out.txt",
     'test-data/outputs/template.default.txt' ],},
  },
 ],
);
my %table = {
  'Sheet1' => {
    headers => ['Key', 'Value'],
    data => [
        ['File', $options->{file}],
        ['File', $options->{int}],
        ['File', $options->{option}],
    ]
  }
}

use CPT::OutputFiles;
my $crr_output = CPT::OutputFiles->new(
    name => 'test_output',
    GGO => $ggo,
);
$crr_output->CRR(data => \%table);

=head1 DESCRIPTION

Print out options passed to it

=cut

