#!/usr/bin/perl -w

use strict;
use warnings;

BEGIN {
    use Test::More;
    eval "use Test::Compile";
    Test::More->builder->BAIL_OUT(
        "Test::Compile required for testing compilation") if $@;
    all_pm_files_ok();
}
    
