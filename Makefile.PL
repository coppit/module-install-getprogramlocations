#/usr/bin/perl

use strict;
use inc::Module::Install;
use File::Slurp;

all_from('lib/Module/Install/GetProgramLocations.pm');

githubmeta;

include(
  'File::Slurp' => 0,
);

requires(
  'File::Spec' => 0,
  'Cwd' => 0,
  'Sort::Versions' => 0,
);

test_requires(
  'IO::CaptureOutput' => 0,
  'Test::More' => 0,
);

license 'gpl2';
auto_license(holder => 'David Coppit');

WriteAll();

if (auto_tester) {
  my $code = read_file('Makefile');
  $code =~ s/TEST_VERBOSE\s*=\s*0/TEST_VERBOSE=1/ or die "Couldn't enable verbose mode in Makefile";
  write_file('Makefile', $code);
}
