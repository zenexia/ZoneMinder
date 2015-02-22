package ONVIF::Media::Types::SystemDateTime;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %DateTimeType_of :ATTR(:get<DateTimeType>);
my %DaylightSavings_of :ATTR(:get<DaylightSavings>);
my %TimeZone_of :ATTR(:get<TimeZone>);
my %UTCDateTime_of :ATTR(:get<UTCDateTime>);
my %LocalDateTime_of :ATTR(:get<LocalDateTime>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        DateTimeType
        DaylightSavings
        TimeZone
        UTCDateTime
        LocalDateTime
        Extension

    ) ],
    {
        'DateTimeType' => \%DateTimeType_of,
        'DaylightSavings' => \%DaylightSavings_of,
        'TimeZone' => \%TimeZone_of,
        'UTCDateTime' => \%UTCDateTime_of,
        'LocalDateTime' => \%LocalDateTime_of,
        'Extension' => \%Extension_of,
    },
    {
        'DateTimeType' => 'ONVIF::Media::Types::SetDateTimeType',
        'DaylightSavings' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'TimeZone' => 'ONVIF::Media::Types::TimeZone',
        'UTCDateTime' => 'ONVIF::Media::Types::DateTime',
        'LocalDateTime' => 'ONVIF::Media::Types::DateTime',
        'Extension' => 'ONVIF::Media::Types::SystemDateTimeExtension',
    },
    {

        'DateTimeType' => 'DateTimeType',
        'DaylightSavings' => 'DaylightSavings',
        'TimeZone' => 'TimeZone',
        'UTCDateTime' => 'UTCDateTime',
        'LocalDateTime' => 'LocalDateTime',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::SystemDateTime

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SystemDateTime from the namespace http://www.onvif.org/ver10/schema.

General date time inforamtion returned by the GetSystemDateTime method.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DateTimeType


=item * DaylightSavings


=item * TimeZone


=item * UTCDateTime


=item * LocalDateTime


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::SystemDateTime
   DateTimeType => $some_value, # SetDateTimeType
   DaylightSavings =>  $some_value, # boolean
   TimeZone =>  { # ONVIF::Media::Types::TimeZone
     TZ =>  $some_value, # token
   },
   UTCDateTime =>  { # ONVIF::Media::Types::DateTime
     Time =>  { # ONVIF::Media::Types::Time
       Hour =>  $some_value, # int
       Minute =>  $some_value, # int
       Second =>  $some_value, # int
     },
     Date =>  { # ONVIF::Media::Types::Date
       Year =>  $some_value, # int
       Month =>  $some_value, # int
       Day =>  $some_value, # int
     },
   },
   LocalDateTime =>  { # ONVIF::Media::Types::DateTime
     Time =>  { # ONVIF::Media::Types::Time
       Hour =>  $some_value, # int
       Minute =>  $some_value, # int
       Second =>  $some_value, # int
     },
     Date =>  { # ONVIF::Media::Types::Date
       Year =>  $some_value, # int
       Month =>  $some_value, # int
       Day =>  $some_value, # int
     },
   },
   Extension =>  { # ONVIF::Media::Types::SystemDateTimeExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
