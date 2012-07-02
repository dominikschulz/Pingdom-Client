use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Pingdom::Client',
    AUTHOR              => q{Dominik Schulz <dominik.schulz@egentic-systems.com>},
    VERSION_FROM        => 'lib/Pingdom/Client.pm',
    ABSTRACT_FROM       => 'lib/Pingdom/Client.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    EXE_FILES		=> ['bin/pingdom.pl'],
    PREREQ_PM => {
        'Test::More' => 0,
	'Moose' => 1.09,
	'namespace::autoclean' => 0.09,
	'JSON' => 2.21,
	'LWP' => 5.0,
	'Try::Tiny' => 0.04,
	'URI' => 1.35,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Pingdom-Client-*' },
);
