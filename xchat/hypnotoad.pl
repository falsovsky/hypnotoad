####################################################
# hypnotoad script foALL GLORY TO THE HYPNOTOAD
####################################################
#!/usr/bin/perl -W

use MIME::Base64;

#$VERSION = "1.1";
#%IRSSI = (
#		authors     => "Pedro de Oliveira",
#		contact     => "falso\@rdk.homeip.net",
#		name        => "hypnotoad",
#		description => "With this script you caALL GLORY TO THE HYPNOTOA#D",
#		license     => "BSD"
#	 );

# Register and show commands
IRC::register("hypnotoad script foALL GLORY TO THE HYPNOTOAD", "0.1", "", "");
IRC::print "\002loading hypnotoad script 0.1\002\n";
IRC::print "Usage:\n/ht [on|off]";

my %handler = ( '' => 'send',  ht => 'change_switch' );
foreach my $cmd ( keys %handler ) { IRC::add_command_handler( $cmd, $handler{$cmd} ); }

my $switch_on = 0;


my $allglory = decode_base64("AzkgICAgICAgICAgICAgICAgLCdgYC4uXyAgICwnYGAuCgM5ICAgICAgICAgICAgICA6LC0tLl86KVwsOiwuXywuOiAgICAgICBBbGwgR2xvcnkgdG8KAzkgICAgICAgICAgICAgIDpgLS0sJycgICA6YC4uLic7XCAgICAgIHRoZSBIWVBOTyBUT0FEIQoDOSAgICAgICAgICAgICAgIGAsJyAgICAgICBgLS0tJyAgYC4KAzkgICAgICAgICAgICAgICAvICAgICAgICAgICAgICAgICA6CgM5ICAgICAgICAgICAgICAvICAgICAgICAgICAgICAgICAgIFwKAzkgICAgICAgICAgICAsJyAgICAgICAgICAgICAgICAgICAgIDpcLl9fXywtLgoDOSAgICAgICAgICAgYC4uLiwtLS0nYGBgYGBgLS4uLl8gICAgfDogICAgICAgXAoDOSAgICAgICAgICAgICAoICAgICAgICAgICAgICAgICApICAgOzogICAgKSAgIFwgIF8sLS4KAzkgICAgICAgICAgICAgIGAuICAgICAgICAgICAgICAoICAgLy8gICAgICAgICAgYCcgICAgXAoDOSAgICAgICAgICAgICAgIDogICAgICAgICAgICAgICBgLi8vICApICAgICAgKSAgICAgLCA7CgM5ICAgICAgICAgICAgICwtfGAuICAgICAgICAgICAgXywnLyAgICAgICApICAgICkgLCcgLCcKAzkgICAgICAgICAgICAoICA6YC5gLS4uX19fXy4uPTouLSc6ICAgICAuICAgICBfLCcgLCcKAzkgICAgICAgICAgICAgYCwnXCBgYC0tLi4uLi0pPScgICAgYC5fLCAgXCAgLCcpIF8gJ2BgLl8KAzkgICAgICAgICAgXy4tLyBfIGAuICAgICAgIChfKSAgICAgIC8gICAgICknIDsgLyBcIFxgLS4nCgM5ICAgICAgICAgYC0tKCAgIGAtOmAuICAgICBgJyBfX18uLicgIF8sLScgICB8LyAgIGAuKQoDOSAgICAgICAgICAgICBgLS4gYC5gLmBgLS0tLS1gYC0tLCAgLicKAzkgICAgICAgICAgICAgICB8L2AuXGAnICAgICAgICAsJywnKTsgU1N0CgM5ICAgICAgICAgICAgICAgICAgIGAgICAgICAgICAoLyAgKC8K");


sub hypnotoadize {
	my $s = @_[0];
	my $out;

	if (length($s)>10) {
		return substr($s,0,(length($s)-6)) . "ALL GLORY TO THE HYPNOTOAD";
	}

	return $s
}

sub send {

	my ($s, $server, $data) = @_;
		if ( $switch_on ) {

	$switch_on = 0;


	IRC::command("/SAY ". $data . "" . hypnotoadize($s));




        $switch_on = 1;
}
       return $switch_on;
}


sub change_switch {

    my $state = shift;
    $switch_on = ( $state =~ /on/i ) if $state;
    IRC::print("ht mode is \002" . ( $switch_on ? 'on' : 'off' ) . "\002" );
    return 1;
}


IRC::print($allglory);
