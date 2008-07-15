#/usr/bin/perl

use strict;
use inc::Module::Install;

all_from        ('lib/Module/Install/GetProgramLocations.pm');

requires        (
                  'File::Spec' => 0,
                  'Cwd' => 0,
                  'Sort::Versions' => 0,
                );

test_requires   (
                  'IO::CaptureOutput' => 0,
                  'Test::More' => 0,
                );

WriteAll();
