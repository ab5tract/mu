{ package KindaPerl6::Grammar; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict "vars";
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
do { do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::KindaPerl6::Grammar )
,"true"),"p5landish") ) { }  else { do { do {::MODIFIED($::KindaPerl6::Grammar);
$::KindaPerl6::Grammar = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Grammar' )
 )
, 'PROTOTYPE',  )
} } } }
; do { use vars qw($_rule_sig_type); $_rule_sig_type = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(?:(?:(??{ eval '$_rule_'::'' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "'::'" ]; })))|(?:(?:(??{ eval '$_rule_''' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture_to_array", "''" ]; }))))(?:(??{ eval '$_rule_full_ident' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "full_ident" ]; }))(?:(??{ eval '$_rule_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'full_ident' )
 )
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?:(??{ eval '$_rule_''' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture_to_array", "''" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Str, 'new', '' )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_type" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_type/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_default_value); $_rule_sig_default_value = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))=(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?:(??{ eval '$_rule_exp' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "exp" ]; }))(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Hash, 'new', { _hash => { ::DISPATCH( $::Str, 'new', 'has_default' )
->{_value} => ::DISPATCH( $::Int, 'new', 1 )
,::DISPATCH( $::Str, 'new', 'default' )
->{_value} => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp' )
 )
 )
, } }
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?:(??{ eval '$_rule_''' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "''" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Hash, 'new', { _hash => { ::DISPATCH( $::Str, 'new', 'has_default' )
->{_value} => ::DISPATCH( $::Int, 'new', 0 )
,::DISPATCH( $::Str, 'new', 'default' )
->{_value} => ::DISPATCH( $::Val::Undef, 'new',  )
, } }
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_default_value" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_default_value/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_named_only); $_rule_sig_named_only = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?::(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_named_only" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_named_only/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_optional); $_rule_sig_optional = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:?(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?:(?:!)|(?:))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_optional" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_optional/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_slurpy); $_rule_sig_slurpy = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:*(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_slurpy" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_slurpy/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_multidimensional); $_rule_sig_multidimensional = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:@(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_multidimensional" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_multidimensional/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_rw); $_rule_sig_rw = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))is(?:(??{ eval '$_rule_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))rw(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_rw" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_rw/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig_copy); $_rule_sig_copy = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))is(?:(??{ eval '$_rule_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))copy(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 1 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Int, 'new', 0 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig_copy" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig_copy/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_exp_sig_item); $_rule_exp_sig_item = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_sig_type' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_type" ]; }))(?:(??{ eval '$_rule_sig_named_only' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_named_only" ]; }))(?:(??{ eval '$_rule_sig_slurpy' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_slurpy" ]; }))(?:(??{ eval '$_rule_sig_multidimensional' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_multidimensional" ]; }))(?:(??{ eval '$_rule_sigil' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sigil" ]; }))(?:(??{ eval '$_rule_ident' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "ident" ]; }))(?:(??{ eval '$_rule_sig_optional' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_optional" ]; }))(?:(??{ eval '$_rule_sig_default_value' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_default_value" ]; }))(?:(??{ eval '$_rule_sig_rw' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_rw" ]; }))(?:(??{ eval '$_rule_sig_copy' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "sig_copy" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Lit::SigArgument, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'key' )
, value           => ::DISPATCH( $::Var, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sigil' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__126__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sigil' )
 )
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'twigil' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__126__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'ident' )
 )
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'namespace' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [] }
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'value' )
, value           => ::DISPATCH( ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_default_value' )
 )
 )
, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'default' )
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'type' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_type' )
 )
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'has_default' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_default_value' )
 )
 )
, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'has_default' )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_named_only' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_named_only' )
 )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_optional' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_optional' )
 )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_slurpy' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_slurpy' )
 )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_multidimensional' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_multidimensional' )
 )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_rw' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_rw' )
 )
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_copy' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'sig_copy' )
 )
 )
,  } ),  )
,  } ),  )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "exp_sig_item" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_exp_sig_item/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_exp_sig_list); $_rule_exp_sig_list = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_exp_sig_item' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "exp_sig_item" ]; }))(?:(?:(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))\,(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?:(??{ eval '$_rule_exp_sig_list' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "exp_sig_list" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Array, 'new', { _array => [::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_item' )
 )
 )
, ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_list' )
 )
 )
 )
] }
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))|(?:(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?:(?:\,(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; })))|(?:))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Array, 'new', { _array => [::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_item' )
 )
 )
] }
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; }))))|(?:(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Array, 'new', { _array => [] }
 )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "exp_sig_list" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_exp_sig_list/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); } ; do { use vars qw($_rule_sig); $_rule_sig = qr/(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'create', pos(), \$_ ]; $GLOBAL::_M2 = $GLOBAL::_M; })(?:(?:(?:(??{ eval '$_rule_invocant' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "invocant" ]; }))(?:(??{ eval '$_rule_opt_ws' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "discard_capture" ]; }))(?:(??{ eval '$_rule_exp_sig_list' })(?{ local $GLOBAL::_M = [ $GLOBAL::_M, "named_capture", "exp_sig_list" ]; }))(?{ local $GLOBAL::_M = $GLOBAL::_M; Match::from_global_data( $GLOBAL::_M ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; @Match::Matches = (); my $ret = ( sub {do { return(::DISPATCH( $::Sig, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'invocant' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'invocant' )
 )
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'positional' )
, value           => ::DISPATCH( $GLOBAL::Code_prefix_58__60__36__62_, 'APPLY', ::DISPATCH( $MATCH, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'exp_sig_list' )
 )
 )
,  } ),  )
)
 }; "974^213" } )->();if ( $ret ne "974^213" ) {$GLOBAL::_M = [ [ @$GLOBAL::_M ], "result", $ret ]; }; })))(?{ local $GLOBAL::_M = [ $GLOBAL::_M, 'to', pos() ]; $GLOBAL::_M2 = $GLOBAL::_M; })/x; 
::DISPATCH(::DISPATCH($::KindaPerl6::Grammar,"HOW"),"add_method", ::DISPATCH( $::Str, "new", "sig" ), ::DISPATCH( $::Method, "new", sub { local $GLOBAL::_Class = shift; undef $GLOBAL::_M2; ( ref($_) ? $_->{_dispatch}( $_, "Str" )->{_value} : $_ ) =~ /$_rule_sig/; if ( $GLOBAL::_M2->[1] eq 'to' ) { Match::from_global_data( $GLOBAL::_M2 ); $MATCH = $GLOBAL::MATCH = pop @Match::Matches; } else { $MATCH = $GLOBAL::MATCH = Match->new(); } @Match::Matches = (); return $MATCH; } ), ); }  }
; 1 }
