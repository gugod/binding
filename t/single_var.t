#!/usr/bin/env perl -w
use strict;
use Test::More tests => 2;

use Binding;

sub foo {
    my $x = 3;
    my $y = "How are you";

    bar();

}

sub bar {
    # cab: caller binding.
    my $cab = Binding->of_caller;

    my $x = $cab->var('$x');
    my $y = $cab->var('$y');
    
    is $x, 3;
    is $y, "How are you";
}

foo();

