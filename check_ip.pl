#!/usr/bin/perl -w
#I like this one using quoted reg ex

my $ip = '192.168.255.254'; # for example
# Set up the quoted regex
my $ipno = qr/
    2(?:5[0-5] | [0-4]\d)
    |
    1\d\d
    |
    [1-9]?\d
/x;
# To test an IP address
if ( $ip =~ /^($ipno(?:\.|$)){4}/ ){
    print "IP OK\n";
};

exit;
