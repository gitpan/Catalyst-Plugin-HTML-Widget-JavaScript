use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Catalyst::Plugin::HTML::Widget::JavaScript',
    AUTHOR              => 'Nilson Santos Figueiredo Júnior <nilsonsfj@cpan.org>',
    VERSION_FROM        => 'lib/Catalyst/Plugin/HTML/Widget/JavaScript.pm',
    ABSTRACT_FROM       => 'lib/Catalyst/Plugin/HTML/Widget/JavaScript.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
		'Catalyst::Plugin::HTML::Widget' => 0,
		'HTML::Widget::JavaScript' => 0
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Catalyst-Plugin-HTML-Widget-JavaScript-*' },
);
