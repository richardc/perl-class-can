#!perl -w
use strict;
use Test::More tests => 1;
use Class::Can qw( class_can );

package Foo;
sub foo;

package Bar;
use base qw( Foo );
sub bar;

package main;

is_deeply( { class_can( 'Foo' ) },
{ }, "understands Foo");
