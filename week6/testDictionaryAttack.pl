#!/usr/bin/perl
use Digest::SHA qw(sha256_hex);

# Read the password hash (replace with actual hash)
my $passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2";

# Open the wordlist (adjust the path)
open(WORDLIST, "<", "wordlist.txt") or die "Cannot open wordlist: $!";

while (<WORDLIST>) {
    chomp;
    my $word = $_;

    # Hash the word
    my $wordlistHash = sha256_hex($word);
    print "$word: $wordlistHash\n";

    # Check if the hash matches the password hash
    if ($wordlistHash eq $passwordHash) {
        print("Password has been cracked! It was $word\n");
        exit;
    }
}

close(WORDLIST);