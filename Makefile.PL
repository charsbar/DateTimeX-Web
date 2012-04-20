use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'DateTimeX::Web',
  AUTHOR        => 'Kenichi Ishigaki <ishigaki@cpan.org>',
  VERSION_FROM  => 'lib/DateTimeX/Web.pm',
  ABSTRACT_FROM => 'lib/DateTimeX/Web.pm',
  PREREQ_PM => {
    'DateTime'                   => 0,
    'DateTime::Format::HTTP'     => 0,
    'DateTime::Format::Mail'     => 0,
    'DateTime::Format::MySQL'    => 0,
    'DateTime::Format::W3CDTF'   => 0,
    'DateTime::Format::Strptime' => 0,
    'DateTime::Locale'           => 0,
    'DateTime::TimeZone'         => 0,
    'Scalar::Util'               => 0,
    'Test::More'                 => '0.47',
    'Test::UseAllModules'        => '0.09',
  },
  ($ExtUtils::MakeMaker::VERSION >= 6.31
    ? ( LICENSE => 'perl' )
    : ()
  ),
);
