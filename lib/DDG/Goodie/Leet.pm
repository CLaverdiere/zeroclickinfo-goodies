package DDG::Goodie::Leet;
# ABSTRACT: Convert text to leet-speek.

use DDG::Goodie;

triggers start => 'leet', 'leetspeak', 'leet speak', '1337';

handle remainder => sub {
  my $leet_str = $_;

  for($leet_str) {
    s/a/4/g;
    s/e/3/g;
    s/i/1/g;
    s/m/\/\\\/\\/g;
    s/o/0/g;
    s/v/\\\//g;
    s/w/\\\/\\\//g;
  };

  return $leet_str;
};

1;
