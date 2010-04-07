#!/usr/bin/perl
# 
# This file is part of Padre-Plugin-Plack
# 
# This software is copyright (c) 2010 by Patrick Donelan.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
unless (caller) {
    require Plack::Runner;
    Plack::Runner->run(@ARGV, $0);
}

my $handler = sub {
    return [ 200, [ "Content-Type" => "text/plain", "Content-Length" => 11 ], [ "Hello World" ] ];
};
