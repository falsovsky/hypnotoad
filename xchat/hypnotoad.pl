####################################################
# hypnotoad script foALL GLORY TO THE HYPNOTOAD
####################################################
use MIME::Base64;

my $allglory = decode_base64("AzkgICAgICAgICAgICAgICAgLCdgYC4uXyAgICwnYGAuCgM5ICAgICAgICAgICAgICA6LC0tLl86KVwsOiwuXywuOiAgICAgICBBbGwgR2xvcnkgdG8KAzkgICAgICAgICAgICAgIDpgLS0sJycgICA6YC4uLic7XCAgICAgIHRoZSBIWVBOTyBUT0FEIQoDOSAgICAgICAgICAgICAgIGAsJyAgICAgICBgLS0tJyAgYC4KAzkgICAgICAgICAgICAgICAvICAgICAgICAgICAgICAgICA6CgM5ICAgICAgICAgICAgICAvICAgICAgICAgICAgICAgICAgIFwKAzkgICAgICAgICAgICAsJyAgICAgICAgICAgICAgICAgICAgIDpcLl9fXywtLgoDOSAgICAgICAgICAgYC4uLiwtLS0nYGBgYGBgLS4uLl8gICAgfDogICAgICAgXAoDOSAgICAgICAgICAgICAoICAgICAgICAgICAgICAgICApICAgOzogICAgKSAgIFwgIF8sLS4KAzkgICAgICAgICAgICAgIGAuICAgICAgICAgICAgICAoICAgLy8gICAgICAgICAgYCcgICAgXAoDOSAgICAgICAgICAgICAgIDogICAgICAgICAgICAgICBgLi8vICApICAgICAgKSAgICAgLCA7CgM5ICAgICAgICAgICAgICwtfGAuICAgICAgICAgICAgXywnLyAgICAgICApICAgICkgLCcgLCcKAzkgICAgICAgICAgICAoICA6YC5gLS4uX19fXy4uPTouLSc6ICAgICAuICAgICBfLCcgLCcKAzkgICAgICAgICAgICAgYCwnXCBgYC0tLi4uLi0pPScgICAgYC5fLCAgXCAgLCcpIF8gJ2BgLl8KAzkgICAgICAgICAgXy4tLyBfIGAuICAgICAgIChfKSAgICAgIC8gICAgICknIDsgLyBcIFxgLS4nCgM5ICAgICAgICAgYC0tKCAgIGAtOmAuICAgICBgJyBfX18uLicgIF8sLScgICB8LyAgIGAuKQoDOSAgICAgICAgICAgICBgLS4gYC5gLmBgLS0tLS1gYC0tLCAgLicKAzkgICAgICAgICAgICAgICB8L2AuXGAnICAgICAgICAsJywnKTsgU1N0CgM5ICAgICAgICAgICAgICAgICAgIGAgICAgICAgICAoLyAgKC8K");
my $random = 100;

sub hypnotoadize {
	my $s = @_[0];
	
	if (length($s)>10) {
		return substr($s,0,(length($s)-6)) . "ALL GLORY TO THE HYPNOTOAD";
	}

	return $s
}

sub sendmsg {
	my $text = $_[1][0];
	my $sendto = $_[2];
	my $r = int(rand($random));
	
	if ($r eq 1) {
		Xchat::command("SAY ". $sendto . hypnotoadize($text));
	}
}

sub changerandom {
	my $value = $_[0][1]; 
	
	if ($value=~ /^(\d+\.?\d*|\.\d+)$/) {
		$random = $value;
		Xchat::print("Hypnotoad randomness changed to: ".$random);
	}
}

Xchat::register("hypnotoad", "1.0", "", "");
Xchat::hook_command( '', \&sendmsg);
Xchat::hook_command( 'htrandom', \&changerandom);
Xchat::print($allglory);
Xchat::print("Change randomness with /htrandom Number, default is 100");
