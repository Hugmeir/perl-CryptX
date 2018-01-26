package Crypt::Digest::SHA3_256;

### BEWARE - GENERATED FILE, DO NOT EDIT MANUALLY!

use strict;
use warnings;
our $VERSION = '0.056_001';

use base qw(Crypt::Digest Exporter);
our %EXPORT_TAGS = ( all => [qw( sha3_256 sha3_256_hex sha3_256_b64 sha3_256_b64u sha3_256_file sha3_256_file_hex sha3_256_file_b64 sha3_256_file_b64u )] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();

use Carp;
$Carp::Internal{(__PACKAGE__)}++;
use Crypt::Digest;

sub hashsize                { Crypt::Digest::hashsize('SHA3_256')             }
sub sha3_256             { Crypt::Digest::digest_data('SHA3_256', @_)      }
sub sha3_256_hex         { Crypt::Digest::digest_data_hex('SHA3_256', @_)  }
sub sha3_256_b64         { Crypt::Digest::digest_data_b64('SHA3_256', @_)  }
sub sha3_256_b64u        { Crypt::Digest::digest_data_b64u('SHA3_256', @_) }
sub sha3_256_file        { Crypt::Digest::digest_file('SHA3_256', @_)      }
sub sha3_256_file_hex    { Crypt::Digest::digest_file_hex('SHA3_256', @_)  }
sub sha3_256_file_b64    { Crypt::Digest::digest_file_b64('SHA3_256', @_)  }
sub sha3_256_file_b64u   { Crypt::Digest::digest_file_b64u('SHA3_256', @_) }

1;

=pod

=head1 NAME

Crypt::Digest::SHA3_256 - Hash function SHA3-256 [size: 256 bits]

=head1 SYNOPSIS

   ### Functional interface:
   use Crypt::Digest::SHA3_256 qw( sha3_256 sha3_256_hex sha3_256_b64 sha3_256_b64u
                                sha3_256_file sha3_256_file_hex sha3_256_file_b64 sha3_256_file_b64u );

   # calculate digest from string/buffer
   $sha3_256_raw  = sha3_256('data string');
   $sha3_256_hex  = sha3_256_hex('data string');
   $sha3_256_b64  = sha3_256_b64('data string');
   $sha3_256_b64u = sha3_256_b64u('data string');
   # calculate digest from file
   $sha3_256_raw  = sha3_256_file('filename.dat');
   $sha3_256_hex  = sha3_256_file_hex('filename.dat');
   $sha3_256_b64  = sha3_256_file_b64('filename.dat');
   $sha3_256_b64u = sha3_256_file_b64u('filename.dat');
   # calculate digest from filehandle
   $sha3_256_raw  = sha3_256_file(*FILEHANDLE);
   $sha3_256_hex  = sha3_256_file_hex(*FILEHANDLE);
   $sha3_256_b64  = sha3_256_file_b64(*FILEHANDLE);
   $sha3_256_b64u = sha3_256_file_b64u(*FILEHANDLE);

   ### OO interface:
   use Crypt::Digest::SHA3_256;

   $d = Crypt::Digest::SHA3_256->new;
   $d->add('any data');
   $d->addfile('filename.dat');
   $d->addfile(*FILEHANDLE);
   $result_raw  = $d->digest;     # raw bytes
   $result_hex  = $d->hexdigest;  # hexadecimal form
   $result_b64  = $d->b64digest;  # Base64 form
   $result_b64u = $d->b64udigest; # Base64 URL Safe form

=head1 DESCRIPTION

Provides an interface to the SHA3_256 digest algorithm.

=head1 EXPORT

Nothing is exported by default.

You can export selected functions:

  use Crypt::Digest::SHA3_256 qw(sha3_256 sha3_256_hex sha3_256_b64 sha3_256_b64u
                                      sha3_256_file sha3_256_file_hex sha3_256_file_b64 sha3_256_file_b64u);

Or all of them at once:

  use Crypt::Digest::SHA3_256 ':all';

=head1 FUNCTIONS

=head2 sha3_256

Logically joins all arguments into a single string, and returns its SHA3_256 digest encoded as a binary string.

 $sha3_256_raw = sha3_256('data string');
 #or
 $sha3_256_raw = sha3_256('any data', 'more data', 'even more data');

=head2 sha3_256_hex

Logically joins all arguments into a single string, and returns its SHA3_256 digest encoded as a hexadecimal string.

 $sha3_256_hex = sha3_256_hex('data string');
 #or
 $sha3_256_hex = sha3_256_hex('any data', 'more data', 'even more data');

=head2 sha3_256_b64

Logically joins all arguments into a single string, and returns its SHA3_256 digest encoded as a Base64 string, B<with> trailing '=' padding.

 $sha3_256_b64 = sha3_256_b64('data string');
 #or
 $sha3_256_b64 = sha3_256_b64('any data', 'more data', 'even more data');

=head2 sha3_256_b64u

Logically joins all arguments into a single string, and returns its SHA3_256 digest encoded as a Base64 URL Safe string (see RFC 4648 section 5).

 $sha3_256_b64url = sha3_256_b64u('data string');
 #or
 $sha3_256_b64url = sha3_256_b64u('any data', 'more data', 'even more data');

=head2 sha3_256_file

Reads file (defined by filename or filehandle) content, and returns its SHA3_256 digest encoded as a binary string.

 $sha3_256_raw = sha3_256_file('filename.dat');
 #or
 $sha3_256_raw = sha3_256_file(*FILEHANDLE);

=head2 sha3_256_file_hex

Reads file (defined by filename or filehandle) content, and returns its SHA3_256 digest encoded as a hexadecimal string.

 $sha3_256_hex = sha3_256_file_hex('filename.dat');
 #or
 $sha3_256_hex = sha3_256_file_hex(*FILEHANDLE);

B<BEWARE:> You have to make sure that the filehandle is in binary mode before you pass it as argument to the addfile() method.

=head2 sha3_256_file_b64

Reads file (defined by filename or filehandle) content, and returns its SHA3_256 digest encoded as a Base64 string, B<with> trailing '=' padding.

 $sha3_256_b64 = sha3_256_file_b64('filename.dat');
 #or
 $sha3_256_b64 = sha3_256_file_b64(*FILEHANDLE);

=head2 sha3_256_file_b64u

Reads file (defined by filename or filehandle) content, and returns its SHA3_256 digest encoded as a Base64 URL Safe string (see RFC 4648 section 5).

 $sha3_256_b64url = sha3_256_file_b64u('filename.dat');
 #or
 $sha3_256_b64url = sha3_256_file_b64u(*FILEHANDLE);

=head1 METHODS

The OO interface provides the same set of functions as L<Crypt::Digest>.

=head2 new

 $d = Crypt::Digest::SHA3_256->new();

=head2 clone

 $d->clone();

=head2 reset

 $d->reset();

=head2 add

 $d->add('any data');
 #or
 $d->add('any data', 'more data', 'even more data');

=head2 addfile

 $d->addfile('filename.dat');
 #or
 $d->addfile(*FILEHANDLE);

=head2 add_bits

 $d->add_bits($bit_string);   # e.g. $d->add_bits("111100001010");
 #or
 $d->add_bits($data, $nbits); # e.g. $d->add_bits("\xF0\xA0", 16);

=head2 hashsize

 $d->hashsize;
 #or
 Crypt::Digest::SHA3_256->hashsize();
 #or
 Crypt::Digest::SHA3_256::hashsize();

=head2 digest

 $result_raw = $d->digest();

=head2 hexdigest

 $result_hex = $d->hexdigest();

=head2 b64digest

 $result_b64 = $d->b64digest();

=head2 b64udigest

 $result_b64url = $d->b64udigest();

=head1 SEE ALSO

=over

=item * L<CryptX|CryptX>, L<Crypt::Digest>

=item * L<https://en.wikipedia.org/wiki/SHA-3>

=back

=cut
