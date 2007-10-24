{ package KindaPerl6::Visitor::ExtractRuleBlock; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict "vars";
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
do { my $count; $count = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$count' } )  unless defined $count; BEGIN { $count = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$count' } ) }
;
do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::KindaPerl6::Visitor::ExtractRuleBlock )
,"true"),"p5landish") ) { }  else { do { my $count; $count = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$count' } )  unless defined $count; BEGIN { $count = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$count' } ) }
;
do {::MODIFIED($::KindaPerl6::Visitor::ExtractRuleBlock);
$::KindaPerl6::Visitor::ExtractRuleBlock = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'KindaPerl6::Visitor::ExtractRuleBlock' )
 )
, 'PROTOTYPE',  )
} } } }
; ::DISPATCH( ::DISPATCH( $::KindaPerl6::Visitor::ExtractRuleBlock, 'HOW',  )
, 'add_method', ::DISPATCH( $::Str, 'new', 'visit' )
, ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $node; $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } )  unless defined $node; BEGIN { $node = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node' } ) }
;
my $node_name; $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } )  unless defined $node_name; BEGIN { $node_name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$node_name' } ) }
;
my $path; $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } )  unless defined $path; BEGIN { $path = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$path' } ) }
;
$self = shift; my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0;  if ( exists $Hash__->{_value}{_hash}{'node'} )  { do {::MODIFIED($node);
$node = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'node' )
 )
} }  elsif ( exists $List__->{_value}{_array}[ $_param_index ] )  { $node = $List__->{_value}{_array}[ $_param_index++ ];  }  if ( exists $Hash__->{_value}{_hash}{'node_name'} )  { do {::MODIFIED($node_name);
$node_name = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'node_name' )
 )
} }  elsif ( exists $List__->{_value}{_array}[ $_param_index ] )  { $node_name = $List__->{_value}{_array}[ $_param_index++ ];  }  if ( exists $Hash__->{_value}{_hash}{'path'} )  { do {::MODIFIED($path);
$path = ::DISPATCH( $Hash__, 'LOOKUP', ::DISPATCH( $::Str, 'new', 'path' )
 )
} }  elsif ( exists $List__->{_value}{_array}[ $_param_index ] )  { $path = $List__->{_value}{_array}[ $_param_index++ ];  } } do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_infix_58__60_eq_62_, 'APPLY', $node_name, ::DISPATCH( $::Str, 'new', 'Rule::Block' )
 )
,"true"),"p5landish") ) { do { my $comp_unit; $comp_unit = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$comp_unit' } )  unless defined $comp_unit; BEGIN { $comp_unit = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$comp_unit' } ) }
;
my $name; $name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$name' } )  unless defined $name; BEGIN { $name = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$name' } ) }
;
use Data::Dumper; do {::MODIFIED($comp_unit);
$comp_unit = ::DISPATCH( $path, 'INDEX', ::DISPATCH( $GLOBAL::Code_infix_58__60__45__62_, 'APPLY', ::DISPATCH( $::Int, 'new', 0 )
, ::DISPATCH( $::Int, 'new', 1 )
 )
 )
}; do {::MODIFIED($count);
$count = ::DISPATCH( $GLOBAL::Code_infix_58__60__43__62_, 'APPLY', $count, ::DISPATCH( $::Int, 'new', 1 )
 )
}; do {::MODIFIED($name);
$name = ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $::Str, 'new', '__rule_block' )
, ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', $count, ::DISPATCH( $GLOBAL::Code_infix_58__60__126__62_, 'APPLY', ::DISPATCH( $::Str, 'new', '_' )
, $COMPILER::source_md5 )
 )
 )
}; ::DISPATCH( $GLOBAL::Code_push, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( ::DISPATCH( $comp_unit, 'body',  )
, 'body',  )
 )
, ::DISPATCH( $::Method, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'block' )
, value           => ::DISPATCH( $::Lit::Code, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'body' )
, value           => ::DISPATCH( ::DISPATCH( $node, 'closure',  )
, 'body',  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sig' )
, value           => ::DISPATCH( $::Sig, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'invocant' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'positional' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [::DISPATCH( $::Lit::SigArgument, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'key' )
, value           => ::DISPATCH( $::Var, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'namespace' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [] }
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
, value           => ::DISPATCH( $::Str, 'new', 'MATCH' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'twigil' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sigil' )
, value           => ::DISPATCH( $::Str, 'new', '$' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'value' )
, value           => $::Undef,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'type' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_multidimensional' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_slurpy' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_optional' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_named_only' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_copy' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'is_rw' )
, value           => ::DISPATCH( $::Val::Bit, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'bit' )
, value           => ::DISPATCH( $::Str, 'new', '0' )
,  } ),  )
,  } ),  )
] }
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'pad' )
, value           => ::DISPATCH( $::Pad, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'lexicals' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [::DISPATCH( $::Decl, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'decl' )
, value           => ::DISPATCH( $::Str, 'new', 'my' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'var' )
, value           => ::DISPATCH( $::Var, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'namespace' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [] }
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
, value           => ::DISPATCH( $::Str, 'new', '_' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'twigil' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sigil' )
, value           => ::DISPATCH( $::Str, 'new', '@' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'type' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ),  )
, ::DISPATCH( $::Decl, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'decl' )
, value           => ::DISPATCH( $::Str, 'new', 'my' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'var' )
, value           => ::DISPATCH( $::Var, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'namespace' )
, value           => ::DISPATCH( $::Array, 'new', { _array => [] }
 )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
, value           => ::DISPATCH( $::Str, 'new', 'MATCH' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'twigil' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'sigil' )
, value           => ::DISPATCH( $::Str, 'new', '$' )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'type' )
, value           => ::DISPATCH( $::Str, 'new', '' )
,  } ),  )
] }
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'state' )
, value           => ::DISPATCH( $::Hash, 'new', { _hash => {  } }
 )
,  } ),  )
,  } ), ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'name' )
, value           => $name,  } ),  )
 )
; ::DISPATCH( $GLOBAL::Code_push, 'APPLY', ::DISPATCH( $GLOBAL::Code_prefix_58__60__64__62_, 'APPLY', ::DISPATCH( ::DISPATCH( $node, 'closure',  )
, 'body',  )
 )
, ::DISPATCH( $::Return, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'result' )
, value           => ::DISPATCH( $::Val::Buf, 'new', ::DISPATCH( $::NamedArgument, "new", { _argument_name_ => ::DISPATCH( $::Str, 'new', 'buf' )
, value           => ::DISPATCH( $::Str, 'new', 'sTrNgE V4l' )
,  } ),  )
,  } ),  )
 )
; ::DISPATCH( $node, 'closure', $name )
; return($node)
 } }  else { ::DISPATCH($::Bit, "new", 0) } }
; ::DISPATCH( $::Int, 'new', 0 )
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => $::Undef, array    => ::DISPATCH( $::Array, "new", { _array => [ ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'node', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
, ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'node_name', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
, ::DISPATCH( $::Signature::Item, 'new', { sigil  => '$', twigil => '', name   => 'path', value  => $::Undef, has_default    => ::DISPATCH( $::Bit, 'new', 0 )
, is_named_only  => ::DISPATCH( $::Bit, 'new', 0 )
, is_optional    => ::DISPATCH( $::Bit, 'new', 0 )
, is_slurpy      => ::DISPATCH( $::Bit, 'new', 0 )
, is_multidimensional  => ::DISPATCH( $::Bit, 'new', 0 )
, is_rw          => ::DISPATCH( $::Bit, 'new', 0 )
, is_copy        => ::DISPATCH( $::Bit, 'new', 0 )
,  } )
,  ] } ), return   => $::Undef, } )
,  } )
 )
; $count }
; 1 }
