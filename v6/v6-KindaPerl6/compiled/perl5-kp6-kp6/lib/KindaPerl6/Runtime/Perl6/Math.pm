{ package Math; 
# Do not edit this file - Perl 5 generated by KindaPerl6
use v5;
use strict;
no strict "vars";
use constant KP6_DISABLE_INSECURE_CODE => 0;
use KindaPerl6::Runtime::Perl5::Runtime;
my $_MODIFIED; BEGIN { $_MODIFIED = {} }
BEGIN { $_ = ::DISPATCH($::Scalar, "new", { modified => $_MODIFIED, name => "$_" } ); }
do { do { if (::DISPATCH(::DISPATCH(::DISPATCH( $GLOBAL::Code_VAR_defined, 'APPLY', $::Math )
,"true"),"p5landish") ) { }  else { do { do {::MODIFIED($::Math);
$::Math = ::DISPATCH( ::DISPATCH( $::Class, 'new', ::DISPATCH( $::Str, 'new', 'Math' )
 )
, 'PROTOTYPE',  )
} } } }
; ::DISPATCH( ::DISPATCH( $::Math, 'HOW',  )
, 'add_parent', ::DISPATCH( $::Value, 'HOW',  )
 )
; ::DISPATCH( ::DISPATCH( $::Math, 'HOW',  )
, 'add_method', ::DISPATCH( $::Str, 'new', 'NaN' )
, ::DISPATCH( $::Code, 'new', { code => sub { my  $List__ = ::DISPATCH( $::Array, 'new', { modified => $_MODIFIED, name => '$List__' } ) ; 
;
my $self; $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } )  unless defined $self; BEGIN { $self = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$self' } ) }
;
$self = shift; my $CAPTURE; $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } )  unless defined $CAPTURE; BEGIN { $CAPTURE = ::DISPATCH( $::Scalar, 'new', { modified => $_MODIFIED, name => '$CAPTURE' } ) }
::DISPATCH_VAR($CAPTURE,"STORE",::CAPTURIZE(\@_));do {::MODIFIED($List__);
$List__ = ::DISPATCH( $CAPTURE, 'array',  )
};do {::MODIFIED($Hash__);
$Hash__ = ::DISPATCH( $CAPTURE, 'hash',  )
};{ my $_param_index = 0; } return(::DISPATCH( $GLOBAL::Code_infix_58__60__45__62_, 'APPLY', ::DISPATCH( $::Math, 'Inf',  )
, ::DISPATCH( $::Math, 'Inf',  )
 )
)
 }, signature => ::DISPATCH( $::Signature, "new", { invocant => bless( {
                 'namespace' => [],
                 'name' => 'self',
                 'twigil' => '',
                 'sigil' => '$'
               }, 'Var' )
, array    => ::DISPATCH( $::Array, "new", { _array => [  ] } ), return   => $::Undef, } )
,  } )
 )
 }
; 1 }
