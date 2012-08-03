#!/usr/bin/perl

use warnings;
use strict;

# default : f | origin : fastCMD
my $shell_command_name = "f"; # shorten command

my $install_path = "/usr/local"; # ! don't modify
my $fastCMD_path = "$install_path/fastCMD";

my @steps;
push @steps, "mkdir $fastCMD_path";
push @steps, "mkdir $fastCMD_path/bin";
push @steps, "mkdir $fastCMD_path/db";
push @steps, "mkdir $fastCMD_path/config";

push @steps, "cp bin/fastCMD $fastCMD_path/bin/fastCMD";
push @steps, "ls $fastCMD_path/db/one.dat | grep one.dat || touch $fastCMD_path/db/one.dat";
push @steps, "chmod 770 $fastCMD_path/db/one.dat";
push @steps, "chown :users $fastCMD_path/db/one.dat";
push @steps, "cp config/fastCMD.config $fastCMD_path/config/fastCMD.config";
push @steps, "ln -s $fastCMD_path/bin/fastCMD /usr/bin/$shell_command_name";

print "\n";
for(@steps){
	print "try $_\n";
	`$_`;
	print "\n";
}
print "\n";
print "\$ fastCMD \n\n";
