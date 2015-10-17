#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => "is_awesome_peteran";
zci is_cached   => 1;

ddg_goodie_test(
  [qw(
        DDG::Goodie::IsAwesome::peteran
    )],
    'duckduckhack peteran' => test_zci('peteran is awesome and has successfully completed the DuckDuckHack Goodie tutorial!'),
    'duckduckhack peteran is awesome' => undef,
);

done_testing;
