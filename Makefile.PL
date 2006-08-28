#/usr/bin/perl

use strict;
use inc::Module::Install;

name            ('Module-Install-GetProgramLocations');
author          ('David Coppit <david@coppit.org>');
abstract_from   ('lib/Module/Install/GetProgramLocations.pm');
version_from    ('lib/Module/Install/GetProgramLocations.pm');
license         ('gpl');

requires        (
                  'File::Spec' => 0,
                  'Cwd' => 0,
                  'Sort::Versions' => 0,
                );

include         ('ExtUtils/AutoInstall.pm');
auto_install    ( );

WriteAll();

print "\n", '-'x78, "\n\n";

exit;
