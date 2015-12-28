#!/usr/bin/env perl

my $string = 'Hello, World';

my %digests;
use Digest::MD5 qw(md5_hex md5_base64);
$digests{'MD5 Hex'} = md5_hex($string);
$digests{'MD5 base64'} = md5_base64($string);
use Digest::SHA qw(sha1_hex sha1_base64);
$digests{'SHA1 Hex'} = sha1_hex($string);
$digests{'SHA1 base64'} = sha1_base64($string);
use Digest::CRC qw(crc32 crc16 crc64 crc32_hex crc16_hex crc64_hex);
$digests{'CRC32'} = crc32($string);
$digests{'CRC16'} = crc16($string);
$digests{'CRC32 hex'} = crc32_hex($string);
$digests{'CRC16 hex'} = crc16_hex($string);
if($ARGV[1] eq 'crc64'){
	$digests{'CRC64'} = crc64($string);
	$digests{'CRC64 hex'} = crc64_hex($string);
}

printf("Digests of '%s' in several different common digests\n\n", $string);
foreach(sort(keys(%digests))){
	printf("%-15s: %s\n", $_, $digests{$_});
}
