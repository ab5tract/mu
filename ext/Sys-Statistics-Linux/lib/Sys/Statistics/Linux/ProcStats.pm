=begin pod

=head1 NAME

Sys::Statistics::Linux::ProcStats - Collect linux load average statistics.

=head1 SYNOPSIS

   use Sys::Statistics::Linux::ProcStats;

   my $lxs   = Sys::Statistics::Linux::ProcStats.new;
   my %stats = $lxs.get;

=head1 DESCRIPTION

Sys::Statistics::Linux::ProcStats gathers process statistics from the virtual F</proc> filesystem (procfs).

For more informations read the documentation of the front-end module L<Sys::Statistics::Linux>.

=head1 LOAD AVERAGE STATISTICS

Generated by F</proc/stat> and F</proc/loadavg>.

   new       -  Number of new processes that were produced per second.
   runqueue  -  The number of processes waiting for runtime.
   count     -  The total amount of processes on the system.

=head1 METHODS

=head2 new()

Call C<new()> to create a new object.

   my $lxs = Sys::Statistics::Linux::ProcStats.new;

=head2 init()

Call C<init()> to initialize the statistics.

   $lxs.init;

=head2 get()

Call C<get()> to get the statistics. C<get()> returns the statistics as a hash reference.

   my %stats = $lxs.get;

=head1 EXAMPLES

    my $lxs = Sys::Statistics::Linux::ProcStats.new;
    $lxs.init;
    my $header = 0;

    loop {
        sleep(1);
        my %stats = $lxs.get;
        my $time  = localtime();

        if $header == 0 {
            $header = 20;
            print  ' ' x 20;
            printf "%10s%10s%10s\n", <new runqueue count>;
        }

        printf "%04d-%02d-%02d %02d:%02d:%02d %10s%10s%10s\n",
               $time.<year month day hour min sec>,
               %stats<new runqueue count>;

        $header--;
    }

=head1 EXPORTS

No exports.

=head1 SEE ALSO

B<proc(5)>

=head1 REPORTING BUGS

Please report all bugs to <jschulz.cpan(at)bloonix.de>.

=head1 AUTHOR

Jonny Schulz <jschulz.cpan(at)bloonix.de>.

=head1 COPYRIGHT

Copyright (c) 2006, 2007 by Jonny Schulz. All rights reserved.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=end pod

#package Sys::Statistics::Linux::ProcStats;
#our $VERSION = '0.09';

class Sys::Statistics::Linux::ProcStats-0.001;

use v6;

#use strict;
#use warnings;
#use Carp qw(croak);

sub croak (*@m) { die @m } # waiting for Carp::croak

has %.files;
has %.inits;
has %.stats;
has Int $.uptime;

#sub new {
#   my $class = shift;
#   my %self = (
#      files => {
#         loadavg => '/proc/loadavg',
#         stat => '/proc/stat',
#         uptime => '/proc/uptime',
#      }
#   );
#   return bless \%self, $class;
#}

submethod BUILD () {
    $.files<loadavg> = '/proc/loadavg';
    $.files<stat>    = '/proc/stat';
    $.files<uptime>  = '/proc/uptime';
}

#sub init {
#   my $self = shift;
#   $self->{uptime} = $self->_uptime;
#   $self->{init}->{new} = $self->_newproc;
#}

method init () {
    self.uptime = self.uptime();
    self.inits<new> = self.newproc();
}

#sub get {
#   my $self  = shift;
#   my $class = ref $self;
#
#   croak "$class: there are no initial statistics defined"
#      unless exists $self->{init};
#
#   $self->{stats} = $self->_load;
#   $self->_deltas;
#   return $self->{stats};
#}

method get () {
    unless self.inits.defined {
        croak("there are no initial statistics defined");
    }
    self.stats = self.load;
    self.deltas();
    # "return self.stats" will return a Hash::Const, for this reason
    # I return %stats, then it returns a Hash
    my %stats := self.stats;
    return %stats;
}

#
# private stuff
#

#sub _load {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   my %lavg  = ();
#
#   open my $fh, '<', $file->{loadavg} or croak "$class: unable to open $file->{loadavg} ($!)";
#
#   ( $lavg{runqueue}
#   , $lavg{count}
#   ) = (split m@/@, (split /\s+/, <$fh>)[3]);
#
#   close($fh);
#
#   $lavg{new} = $self->_newproc;
#
#   return \%lavg;
#}

my method load () {
    my %files = self.files;
    my %stats;
    self.newproc();

    my $avgfh = open(%files<loadavg>, :r) or croak("unable to open %files<loadavg>: $!");
    $avgfh.readline ~~ /(\d+)\/(\d+)/;
    (%stats<runqueue count>) = ($0, $1);
    $avgfh.close;

    %stats<new> = self.newproc();

    return %stats;
}

#sub _newproc {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   my $stat  = ();
#
#   open my $fh, '<', $file->{stat} or croak "$class: unable to open $file->{stat} ($!)";
#
#   while (my $line = <$fh>) {
#      if ($line =~ /^processes\s+(\d+)/) {
#         $stat = $1;
#         last;
#      }
#   }
#
#   close($fh);
#   return $stat;
#}

my method newproc () {
    my $file  = self.files<stat>;
    my %stats;

    my $nfh = open($file, :r) or croak("unable to open $file: $!");

    for =$nfh -> $line {
        if $line ~~ /^processes\s+(\d+)/ {
            $nfh.close;
            return $0;
        }
    }

    $nfh.close;
    return 0;
}

#sub _deltas {
#   my $self   = shift;
#   my $class  = ref $self;
#   my $istat  = $self->{init};
#   my $lstat  = $self->{stats};
#   my $uptime = $self->_uptime;
#   my $delta  = sprintf('%.2f', $uptime - $self->{uptime});
#   $self->{uptime} = $uptime;
#
#   croak "$class: different keys in statistics"
#      unless defined $istat->{new} && defined $lstat->{new};
#   croak "$class: value of 'new' is not a number"
#      unless $istat->{new} =~ /^\d+$/ && $lstat->{new} =~ /^\d+$/;
#
#   my $new_init = $lstat->{new};
#
#   $lstat->{new} =
#      $lstat->{new} == $istat->{new}
#         ? sprintf('%.2f', 0)
#         : $delta > 0
#            ? sprintf('%.2f', ($new_init - $istat->{new}) / $delta )
#            : sprintf('%.2f', $new_init - $istat->{new});
#
#   $istat->{new} = $new_init;
#}

my method deltas () {
    my %inits  := self.inits;
    my %stats  := self.stats;
    my $uptime  = self.uptime();
    my $delta   = sprintf('%.2f', $uptime - self.uptime);
    self.uptime = $uptime;
    my $snew    = %stats<new>;

    if $snew == %inits<stat> {
        %stats<new> = 0.00;
    } elsif $delta > 0 {
        %stats<new> = sprintf('%.2f', ($snew - %inits<new>) / $delta);
    } else {
        %stats<new> = sprintf('%.2f', $snew - %inits<new>);
    }

    %inits<new> = $snew;
}

#sub _uptime {
#   my $self  = shift;
#   my $class = ref $self;
#   my $file  = $self->{files};
#   open my $fh, '<', $file->{uptime} or croak "$class: unable to open $file->{uptime} ($!)";
#   my ($up, $idle) = split /\s+/, <$fh>;
#   close($fh);
#   return $up;
#}

my method uptime () {
    my $file = self.files<uptime>;
    my $upfh = open($file, :r) or croak("unable to open $file: $!");
    my ($up, $idle) = $upfh.readline.comb;
    $upfh.close;
    return $up;
}
