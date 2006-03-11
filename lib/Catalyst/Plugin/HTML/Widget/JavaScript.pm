package Catalyst::Plugin::HTML::Widget::JavaScript;

use warnings;
use strict;

use HTML::Widget::JavaScript;
use base 'Catalyst::Plugin::HTML::Widget';

=head1 NAME

Catalyst::Plugin::HTML::Widget::JavaScript - JavaScript validation for HTML Widget

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

This is a wrapper module around L<Catalyst::Plugin::HTML::Widget> that instead 
of creating L<HTML::Widget> objects, creates L<HTML::Widget::JavaScript> 
objects.

L<HTML::Widget::JavaScript> is able to add some automatic JavaScript parameter
checking to your forms.

For further documentation, see L<Catalyst::Plugin::HTML::Widget>.

=head1 METHODS

=cut

=head2 $c->widget( $name, $widget )

Returns a L<HTML::Widget::JavaScript>. If no object exists, it will be created on 
the fly. The widget name defaults to C<_widget>.

=cut

# copied verbatim from Catalyst::Plugin::HTML::Widget
sub widget {
    my ( $c, $name, $widget ) = @_;
    $widget = $name if ref $name;
    $c->{_widget} ||= {};
    $name ||= $widget ? $widget->name ? $widget->name : '_widget' : '_widget';
    $c->{_widget}->{$name} ||= ( $widget || HTML::Widget::JavaScript->new($name) );
    return $c->{_widget}->{$name};
}

=head1 AUTHOR

Nilson Santos Figueiredo Júnior, C<< <nilsonsfj at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests directly to the author.
If you ask nicely it will probably get fixed or implemented.

=head1 SEE ALSO

L<Catalyst::Plugin::HTML::Widget>, L<HTML::Widget::JavaScript>

=head1 COPYRIGHT & LICENSE

Copyright 2006 Nilson Santos Figueiredo Júnior, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Catalyst::Plugin::HTML::Widget::JavaScript
