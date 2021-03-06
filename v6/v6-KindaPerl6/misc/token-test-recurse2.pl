# compile & run with:
# perl kp6-perl5.pl --perl5rx < examples/token-test-recurse.pl | perl -I lib5regex -I lib

class X {
  my $zzz;

  method y { 42 };  # just testing

  token ws { \s+ };

  token word { a <word>* b };

  token x {

    <word>

  };

  $_ := 'aaabb';
  X.x();
  say 'match: ', $/.perl;
}

=begin

=head1 AUTHORS

The Pugs Team E<lt>perl6-compiler@perl.orgE<gt>.

=head1 SEE ALSO

The Perl 6 homepage at L<http://dev.perl.org/perl6>.

The Pugs homepage at L<http://pugscode.org/>.

=head1 COPYRIGHT

Copyright 2007 by Flavio Soibelmann Glock and others.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=end