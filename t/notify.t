#!/usr/bin/perl

use strict;
use warnings;

use Test::More 'no_plan';
use Data::Dumper;



BEGIN {
    use_ok('Gtk3::Notify');
}


sub main {
    Gtk3::Notify::import('', '-init', 'test_app');
    my $view = Gtk3::Notify::Notification->new("Title", "test", undef);
    isa_ok($view, 'Gtk3::Notify::Notification');
    return 0;
}


SKIP: {
    skip 'Gtk3::init_check failed, probably unable to open DISPLAY'
	unless Gtk3::init_check();

	exit main() unless caller;
}
