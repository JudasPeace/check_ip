#!/usr/bin/perl -w

my $ip = '';
if (defined $ARGV[0]){
	$ip=$ARGV[0];
}else{
	print "\n\tUsage: check_ip.pl IP_ADDRESS\n";
	print "\n\tExample perl check_ip.pl 192.168.0.1\n\n";
	exit;
}

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
	print "IP address OK\n";
}else{
	print "IP address not Valid\n";
}

exit;
