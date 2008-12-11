package Perl6::Highlight;

# core modules & directives
use 5.010000;
use strict;
use warnings;
use English;
use Carp;
use Encode;
require Exporter;

# cpan modules
use File::Slurp qw(read_file);
use YAML::Dumper;
use Term::ANSIColor;

# Larry's STD.pm
use STD;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();

our $VERSION = '0.01';

# These are needed for redspans
$::ACTIONS = 'Actions';
our $src_text;
our $parser;
our @loc = ();

#XXX- document
sub new($%) {
    my ($class, %options) = @ARG;
    $options{rule} = $options{rule} // 'comp_unit';
    $options{clean_html} = $options{clean_html} // 1;
    $options{file} = $options{file} // 'FILE-NAME';
    #XXX- check when text is zero
    if(!$options{text}) {
        croak "'text' option not found in $class->new";
    }
    my $self = bless(\%options, $class);

    #XXX- this should be done on-demand (as lazily as possible)
 
    #XXX- do we need to convert to utf8 or make it a disabled option? 
    # slurp the file for parsing and redspans
    $src_text = decode('utf8', $self->{text} );
    $loc[length($src_text) - 1] = [];
    $parser = STD->parse($src_text, $self->{rule});

    return $self;
}

=item snippet_html

This is same as C<highlight_perl6_full> when --snippet-html is used.
No more javascript tree viewer or anything fancy. 
Only nodes that have a color are printed. Not optimal but works ;-)
=cut
sub snippet_html($) {
    my ($self) = @ARG;
    my $str = "";
    my %colors = ();

    my $CSS = "STD_syntax_highlight.css";
    open CSS_FILE, $CSS
        or die "Could not open $CSS: $OS_ERROR\n";
    my $line;
    while($line = <CSS_FILE>) {
        if($line =~ /^\s*\.(\w+)\s*{\s*(.+?)\s*}/) {
            $colors{$1} = $2;
        }
    }
    close CSS_FILE;

    $str .= "<pre>";

    local *spit_snippet_html = sub {
        my ($i, $buffer, $rule, $tree) = @ARG;
        $buffer = escape_html($buffer);
        my $style = $colors{$rule};
        if($rule) {
            $str .= qq{<span style="$style">$buffer</span>};
        } else {
            $str .= $buffer;
        }
    };
    $self->redspans_traverse(\&spit_snippet_html,%colors); 

    $str .= "</pre>";

    $str;
}

=item simple_html

This is same as C<highlight_perl6_full> when --simple-html is used.
No more javascript tree viewer or anything fancy. 
Only nodes that have a color are printed. Not optimal but works ;-)
=cut
sub simple_html {
    my ($self) = @ARG;
    my $str = "";
    my %colors = ();

    my $CSS = "STD_syntax_highlight.css";
    open CSS_FILE, $CSS
        or die "Could not open $CSS: $OS_ERROR\n";
    my $line;
    while($line = <CSS_FILE>) {
        if($line =~ /^\s*\.(\w+)\s*{\s*color\s*:\s*(\w+)/) {
            $colors{$1} = $2;
        }
    }
    close CSS_FILE;

    # slurp css inline it
    my $css = qq{<link href="../$CSS" rel="stylesheet" type="text/css">};
    if(!$self->{clean_html}) {
        $css = read_file($CSS)
            or die "Error while slurping file: $OS_ERROR\n";
        $css = qq{<style type="text/css">\n$css\n</style>};
    }

    my $file = $self->{file};
    my $timestamp = localtime;
    $str .= <<"HTML";
<html>
<head>
    <title>$file</title>
<!--
     Generated by $PROGRAM_NAME at $timestamp
-->
    $css
</head>
<body>
    <pre>
HTML

    local *spit_simple_html = sub {
        my ($i, $buffer, $rule, $tree) = @ARG;
        $buffer = escape_html($buffer);
        if($rule) {
            $str .= qq{<span class="$rule">$buffer</span>};
        } else {
            $str .= $buffer;
        }
    };

    $self->redspans_traverse(\&spit_simple_html,%colors); 

    $str .= <<"HTML";
    </pre>
</body>
</html>
HTML

   $str;
}

=item full_html

Generates the Perl6 highlighted HTML string for STD parse tree provided. 
The resources can be inlined (by default) or externalized (--clean-html). 
=cut
sub full_html {
    my ($self) = @ARG;
    my $str = "";

    # slurp libraries and javascript to inline them
    my ($JQUERY_JS,$JS,$CSS) = (
        'jquery-1.2.6.pack.js', 
        'STD_syntax_highlight.js',
        'STD_syntax_highlight.css');
    my %colors = ();
    my $line;
    open CSS_FILE, $CSS
        or die "Could not open $CSS: $OS_ERROR\n";
    while($line = <CSS_FILE>) {
        if($line =~ /^\s*\.(\w+)\s*{\s*color\s*:\s*(\w+)/) {
            $colors{$1} = $2;
        }
    }
    close CSS_FILE;

    my $jquery_js = qq{<script type="text/javascript" src="../$JQUERY_JS"></script>};
    my $js = qq{<script type="text/javascript" src="../$JS"></script>};
    my $css = qq{<link href="../$CSS" rel="stylesheet" type="text/css">};
    if(!$self->{clean_html}) {
        $jquery_js = read_file($JQUERY_JS) 
            or die "Error while slurping file: $OS_ERROR\n";    
        $js = read_file($JS) 
            or die "Error while slurping file: $OS_ERROR\n";
        $css = read_file($CSS)
            or die "Error while slurping file: $OS_ERROR\n";
        $jquery_js = qq{<script type="text/javascript">\n$jquery_js\n</script>};
        $js = qq{<script type="text/javascript">\n$js\n</script>};
        $css = qq{<style type="text/css">\n$css\n</style>};
    }

    my $file = $self->{file};
    my $timestamp = localtime;
    $str .= <<"HTML";
<html>
<head>
    <title>$file</title>
<!--
    Generated by $PROGRAM_NAME at $timestamp
-->
    $css
    $jquery_js
    $js
</head>
<body>
    <div id="parse_tree">
        <button id="parse_tree_expand">Show Syntax Tree</button>
        <button id="parse_tree_collapse">Hide it</button>
        <button id="parse_tree_help">Help</button>
        <div id="parse_tree_output"></div>
    </div>
    <pre>
HTML

    local *spit_full_html = sub {
        my ($i, $buffer, $rule, $tree) = @ARG;
        $buffer = escape_html($buffer);
        $str .= qq{<span id="tree_$i" style="display:none;">$tree</span>};
        if($rule) {
            $str .= qq{<span id="node_$i" class="$rule">$buffer</span>};
        } else {
            $str .= $buffer;
        }
    };

    $self->redspans_traverse(\&spit_full_html,%colors); 

    $str .= <<"HTML";
    </pre>
</body>
</html>
HTML

    $str;
}

=item ansi

This is same as C<highlight_perl6_full> when --ansi-text is used.
No more javascript tree viewer or anything fancy. 
Only nodes that have a color are printed. Not optimal but works ;-)
=cut
sub ansi {
    my ($self) = @ARG;
    my $str = "";
    my %colors = ();

    my $ANSI = "STD_syntax_highlight.ansi";
    open ANSI_FILE, $ANSI
        or die "Could not open $ANSI: $OS_ERROR\n";
    my $line;
    while($line = <ANSI_FILE>) {
        if($line =~ /^(\w+)=(.+)$/) {
            $colors{$1} = $2;
        }
    }
    close ANSI_FILE;

    local *spit_ansi_text = sub {
        my ($i, $buffer, $rule, $tree) = @ARG;
        if($rule) {
            my $color = $colors{$rule};
            $str .= (color $color) . $buffer. (color 'reset');
        } else {
            $str .= $buffer;
        }
    };

    $self->redspans_traverse(\&spit_ansi_text,%colors); 

    $str;
}


=item highlight_perl6_yaml

Spits out YAML that can be useful for the future
=cut
sub yaml {
    my ($self) = @ARG;
    my $str = "";
    my %colors = ();

    my $ANSI = "STD_syntax_highlight.ansi";
    open ANSI_FILE, $ANSI
        or die "Could not open $ANSI: $OS_ERROR\n";
    my $line;
    while($line = <ANSI_FILE>) {
        if($line =~ /^(\w+)=(.+)$/) {
            $colors{$1} = $2;
        }
    }
    close ANSI_FILE;

    my @yaml = ();
    local *spit_yaml = sub {
        push @yaml, @ARG;
    };

    $self->redspans_traverse(\&spit_yaml,%colors); 

    my $dumper = YAML::Dumper->new;
    $dumper->indent_width(4);
    $str .= $dumper->dump(@yaml);

    $str;
}

=item redspans_traverse

    Walk the path that no one wanted to travel ;)
=cut
sub redspans_traverse($$%) {
    my ($self, $process_buffer,%colors) = @ARG;

    my ($last_tree,$buffer, $last_type) = ("","","");
    for my $i (0 .. @loc-1) {
        next unless defined $loc[$i];
        my $c = substr($src_text,$i,1);
        my $tree = "";
        for my $action_ref (@{$loc[$i]}) {
            $tree .= ${$action_ref} . " ";
        }
        if($tree ne $last_tree) {
            my $rule;
            my $rule_to_color = 0;
            $buffer = $buffer;
            my @rules = ();
            @rules = reverse(split / /,$last_tree) if $last_tree ne '';
            for $rule (@rules) {
                if($rule eq 'unv') {
                    $rule_to_color = '_comment';
                    last;
                } elsif($colors{$rule} && $buffer ne '') {
                    $rule_to_color = $rule;
                    last;
                }
            }
            if($rule_to_color) {
                if($last_tree =~ /\sidentifier/) {
                    if($last_type ne '') {
                        $rule_to_color = $last_type;
                        $last_type = '';
                    } #elsif($parser->is_type($buffer)) {
                        #$rule_to_color = '_type';
                    #} elsif($parser->is_routine($buffer)) {
                        #$rule_to_color = '_routine';
                    #} 
                } elsif($last_tree =~ /\ssigil/) {
                    given($buffer) {
                        when ('$') { $last_type = '_scalar'; }
                        when ('@') { $last_type = '_array'; }
                        when ('%') { $last_type = '_hash'; }
                        default { $last_type = ''; }
                    }      
                    $rule_to_color = $last_type if $last_type ne ''; 
                }             
            }
            #now delegate printing to a callback
            $process_buffer->($i, $buffer, $rule_to_color, $last_tree); 
            $buffer = $c;
        } else {
            $buffer .= $c;
        }
        $last_tree = $tree;
    }
}

###################################################################
# R E D S P A N S
{ 
    package Actions;

    our $AUTOLOAD;

    my %action_refs = ();

    sub AUTOLOAD {
        my $self = shift;
        my $C = shift;
        my $F = $C->{_from};
        my $P = $C->{_pos};
        $AUTOLOAD =~ s/^Actions:://;
        $loc[$P] = [] if $loc[$P];	# in case we backtracked to here
        my $action = $AUTOLOAD;
        my $action_ref = $action_refs{$action};
        if(!$action_ref) {
            $action_refs{$action} = $action_ref = \$action;
        }
        for ($F..$P-1) {
            unshift @{$loc[$_]}, $action_ref;
        }
    }

    sub stdstopper { }
    sub terminator { }
    sub unitstopper { }
    sub comp_unit { }
}


=item escape_html

Converts some characters to their equivalent html entities 
=cut
sub escape_html {
    my $str = shift;
    my %esc = (
        '<'     => '&lt;',
        '>'     => '&gt;',
        '"'     => '&quot;',
        '&'     => '&amp;'
    );
    my $re = join '|', map quotemeta, keys %esc;
    $str =~ s/($re)/$esc{$1}/g;
    return $str;
}

1;

__END__

=head1 NAME

Perl6::Highlight - Perl 6 source code highlighter

=head1 SYNOPSIS

  use Perl6::Highlight;
  
  my $crayon = Perl6::Highlight->new(
    $file => \*STDIN
  );
  print $crayon->snippet_html;
  print $crayon->simple_html;
  print $crayon->full_html;
  print $crayon->ansi;
  print $crayon->yaml;

=head1 DESCRIPTION

Highlights Perl 6 source code using STD.pm into html, ansi-escaped text and YAML.

=head2 EXPORT

None by default.

=head1 SEE ALSO

Discussion about this module is usually in #perl6 @ irc.freenode.net

=head1 AUTHOR

Ahmad Zawawi, E<lt>ahmad.zawawi@gmail.comE<gt>

Written by Ahmad M. Zawawi (azawawi), Moritz Lenz and Paweł Murias (pmurias)

The project idea was inspired by Moritz Lenz (moritz)
See http://www.nntp.perl.org/group/perl.perl6.users/2008/07/msg788.html

The initial STD tree traversal code was written by Paweł Murias (pmurias).

The redspans traversal code was written by Larry Wall (TimToady).
redspans stands for "...'red' for "reductions", and 'spans' from the 
from/to span calculations"

The browser code was written by Ahmad M. Zawawi (azawawi)

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 by Ahmad Zawawi

This library is free software; you can redistribute it and/or modify
it under the same terms asssssss
at your option, any later version of Perl 5 you may have available.

=cut

