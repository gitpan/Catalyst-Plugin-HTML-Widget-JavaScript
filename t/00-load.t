#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Catalyst::Plugin::HTML::Widget::JavaScript' );
}

diag( "Testing Catalyst::Plugin::HTML::Widget::JavaScript $Catalyst::Plugin::HTML::Widget::JavaScript::VERSION, Perl $], $^X" );
