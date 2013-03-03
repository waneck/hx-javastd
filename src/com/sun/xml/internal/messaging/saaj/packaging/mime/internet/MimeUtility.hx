package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* @(#)MimeUtility.java       1.45 03/03/10
*/
extern class MimeUtility
{
	@:public @:static @:final public static var ALL(default, null) : Int;
	
	/**
	* Get the content-transfer-encoding that should be applied
	* to the input stream of this datasource, to make it mailsafe. <p>
	*
	* The algorithm used here is: <br>
	* <ul>
	* <li>
	* If the primary type of this datasource is "text" and if all
	* the bytes in its input stream are US-ASCII, then the encoding
	* is "7bit". If more than half of the bytes are non-US-ASCII, then
	* the encoding is "base64". If less than half of the bytes are
	* non-US-ASCII, then the encoding is "quoted-printable".
	* <li>
	* If the primary type of this datasource is not "text", then if
	* all the bytes of its input stream are US-ASCII, the encoding
	* is "7bit". If there is even one non-US-ASCII character, the
	* encoding is "base64".
	* </ul>
	*
	* @param   ds      DataSource
	* @return          the encoding. This is either "7bit",
	*                  "quoted-printable" or "base64"
	*/
	@:overload @:public @:static public static function getEncoding(ds : javax.activation.DataSource) : String;
	
	/**
	* Same as <code>getEncoding(DataSource)</code> except that instead
	* of reading the data from an <code>InputStream</code> it uses the
	* <code>writeTo</code> method to examine the data.  This is more
	* efficient in the common case of a <code>DataHandler</code>
	* created with an object and a MIME type (for example, a
	* "text/plain" String) because all the I/O is done in this
	* thread.  In the case requiring an <code>InputStream</code> the
	* <code>DataHandler</code> uses a thread, a pair of pipe streams,
	* and the <code>writeTo</code> method to produce the data. <p>
	*
	* @since   JavaMail 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function getEncoding(dh : javax.activation.DataHandler) : String;
	
	/**
	* Decode the given input stream. The Input stream returned is
	* the decoded input stream. All the encodings defined in RFC 2045
	* are supported here. They include "base64", "quoted-printable",
	* "7bit", "8bit", and "binary". In addition, "uuencode" is also
	* supported.
	*
	* @param   is              input stream
	* @param   encoding        the encoding of the stream.
	* @return                  decoded input stream.
	*/
	@:overload @:public @:static public static function decode(is : java.io.InputStream, encoding : String) : java.io.InputStream;
	
	/**
	* Wrap an encoder around the given output stream.
	* All the encodings defined in RFC 2045 are supported here.
	* They include "base64", "quoted-printable", "7bit", "8bit" and
	* "binary". In addition, "uuencode" is also supported.
	*
	* @param   os              output stream
	* @param   encoding        the encoding of the stream.
	* @return                  output stream that applies the
	*                          specified encoding.
	*/
	@:overload @:public @:static public static function encode(os : java.io.OutputStream, encoding : String) : java.io.OutputStream;
	
	/**
	* Wrap an encoder around the given output stream.
	* All the encodings defined in RFC 2045 are supported here.
	* They include "base64", "quoted-printable", "7bit", "8bit" and
	* "binary". In addition, "uuencode" is also supported.
	* The <code>filename</code> parameter is used with the "uuencode"
	* encoding and is included in the encoded output.
	*
	* @param   os              output stream
	* @param   encoding        the encoding of the stream.
	* @param   filename        name for the file being encoded (only used
	*                          with uuencode)
	* @return                  output stream that applies the
	*                          specified encoding.
	* @since                   JavaMail 1.2
	*/
	@:require(java2) @:overload @:public @:static public static function encode(os : java.io.OutputStream, encoding : String, filename : String) : java.io.OutputStream;
	
	/**
	* Encode a RFC 822 "text" token into mail-safe form as per
	* RFC 2047. <p>
	*
	* The given Unicode string is examined for non US-ASCII
	* characters. If the string contains only US-ASCII characters,
	* it is returned as-is.  If the string contains non US-ASCII
	* characters, it is first character-encoded using the platform's
	* default charset, then transfer-encoded using either the B or
	* Q encoding. The resulting bytes are then returned as a Unicode
	* string containing only ASCII  characters. <p>
	*
	* Note that this method should be used to encode only
	* "unstructured" RFC 822 headers. <p>
	*
	* Example of usage:
	* <p><blockquote><pre>
	*
	*  MimeBodyPart part = ...
	*  String rawvalue = "FooBar Mailer, Japanese version 1.1"
	*  try {
	*    // If we know for sure that rawvalue contains only US-ASCII
	*    // characters, we can skip the encoding part
	*    part.setHeader("X-mailer", MimeUtility.encodeText(rawvalue));
	*  } catch (UnsupportedEncodingException e) {
	*    // encoding failure
	*  } catch (MessagingException me) {
	*   // setHeader() failure
	*  }
	*
	* </pre></blockquote><p>
	*
	* @param   text    unicode string
	* @return  Unicode string containing only US-ASCII characters
	* @exception UnsupportedEncodingException if the encoding fails
	*/
	@:overload @:public @:static public static function encodeText(text : String) : String;
	
	/**
	* Encode a RFC 822 "text" token into mail-safe form as per
	* RFC 2047. <p>
	*
	* The given Unicode string is examined for non US-ASCII
	* characters. If the string contains only US-ASCII characters,
	* it is returned as-is.  If the string contains non US-ASCII
	* characters, it is first character-encoded using the specified
	* charset, then transfer-encoded using either the B or Q encoding.
	* The resulting bytes are then returned as a Unicode string
	* containing only ASCII characters. <p>
	*
	* Note that this method should be used to encode only
	* "unstructured" RFC 822 headers.
	*
	* @param   text    the header value
	* @param   charset the charset. If this parameter is null, the
	*          platform's default chatset is used.
	* @param   encoding the encoding to be used. Currently supported
	*          values are "B" and "Q". If this parameter is null, then
	*          the "Q" encoding is used if most of characters to be
	*          encoded are in the ASCII charset, otherwise "B" encoding
	*          is used.
	* @return  Unicode string containing only US-ASCII characters
	*/
	@:overload @:public @:static public static function encodeText(text : String, charset : String, encoding : String) : String;
	
	/**
	* Decode "unstructured" headers, that is, headers that are defined
	* as '*text' as per RFC 822. <p>
	*
	* The string is decoded using the algorithm specified in
	* RFC 2047, Section 6.1.1. If the charset-conversion fails
	* for any sequence, an UnsupportedEncodingException is thrown.
	* If the String is not an RFC 2047 style encoded header, it is
	* returned as-is <p>
	*
	* Example of usage:
	* <p><blockquote><pre>
	*
	*  MimeBodyPart part = ...
	*  String rawvalue = null;
	*  String  value = null;
	*  try {
	*    if ((rawvalue = part.getHeader("X-mailer")[0]) != null)
	*      value = MimeUtility.decodeText(rawvalue);
	*  } catch (UnsupportedEncodingException e) {
	*      // Don't care
	*      value = rawvalue;
	*  } catch (MessagingException me) { }
	*
	*  return value;
	*
	* </pre></blockquote><p>
	*
	* @param   etext   the possibly encoded value
	* @exception       UnsupportedEncodingException if the charset
	*                  conversion failed.
	*/
	@:overload @:public @:static public static function decodeText(etext : String) : String;
	
	/**
	* Encode a RFC 822 "word" token into mail-safe form as per
	* RFC 2047. <p>
	*
	* The given Unicode string is examined for non US-ASCII
	* characters. If the string contains only US-ASCII characters,
	* it is returned as-is.  If the string contains non US-ASCII
	* characters, it is first character-encoded using the platform's
	* default charset, then transfer-encoded using either the B or
	* Q encoding. The resulting bytes are then returned as a Unicode
	* string containing only ASCII  characters. <p>
	*
	* This method is meant to be used when creating RFC 822 "phrases".
	* The InternetAddress class, for example, uses this to encode
	* it's 'phrase' component.
	*
	* @param   text    unicode string
	* @return  Array of Unicode strings containing only US-ASCII
	*          characters.
	* @exception UnsupportedEncodingException if the encoding fails
	*/
	@:overload @:public @:static public static function encodeWord(word : String) : String;
	
	/**
	* Encode a RFC 822 "word" token into mail-safe form as per
	* RFC 2047. <p>
	*
	* The given Unicode string is examined for non US-ASCII
	* characters. If the string contains only US-ASCII characters,
	* it is returned as-is.  If the string contains non US-ASCII
	* characters, it is first character-encoded using the specified
	* charset, then transfer-encoded using either the B or Q encoding.
	* The resulting bytes are then returned as a Unicode string
	* containing only ASCII characters. <p>
	*
	* @param   text    unicode string
	* @param   charset the MIME charset
	* @param   encoding the encoding to be used. Currently supported
	*          values are "B" and "Q". If this parameter is null, then
	*          the "Q" encoding is used if most of characters to be
	*          encoded are in the ASCII charset, otherwise "B" encoding
	*          is used.
	* @return  Unicode string containing only US-ASCII characters
	* @exception UnsupportedEncodingException if the encoding fails
	*/
	@:overload @:public @:static public static function encodeWord(word : String, charset : String, encoding : String) : String;
	
	/**
	* The string is parsed using the rules in RFC 2047 for parsing
	* an "encoded-word". If the parse fails, a ParseException is
	* thrown. Otherwise, it is transfer-decoded, and then
	* charset-converted into Unicode. If the charset-conversion
	* fails, an UnsupportedEncodingException is thrown.<p>
	*
	* @param   eword   the possibly encoded value
	* @exception       ParseException if the string is not an
	*                  encoded-word as per RFC 2047.
	* @exception       UnsupportedEncodingException if the charset
	*                  conversion failed.
	*/
	@:overload @:public @:static public static function decodeWord(eword : String) : String;
	
	/**
	* A utility method to quote a word, if the word contains any
	* characters from the specified 'specials' list.<p>
	*
	* The <code>HeaderTokenizer</code> class defines two special
	* sets of delimiters - MIME and RFC 822. <p>
	*
	* This method is typically used during the generation of
	* RFC 822 and MIME header fields.
	*
	* @param   word    word to be quoted
	* @param   specials the set of special characters
	* @return          the possibly quoted word
	* @see     javax.mail.internet.HeaderTokenizer#MIME
	* @see     javax.mail.internet.HeaderTokenizer#RFC822
	*/
	@:overload @:public @:static public static function quote(word : String, specials : String) : String;
	
	/**
	* Convert a MIME charset name into a valid Java charset name. <p>
	*
	* @param charset   the MIME charset name
	* @return  the Java charset equivalent. If a suitable mapping is
	*          not available, the passed in charset is itself returned.
	*/
	@:overload @:public @:static public static function javaCharset(charset : String) : String;
	
	/**
	* Convert a java charset into its MIME charset name. <p>
	*
	* Note that a future version of JDK (post 1.2) might provide
	* this functionality, in which case, we may deprecate this
	* method then.
	*
	* @param   charset    the JDK charset
	* @return          the MIME/IANA equivalent. If a mapping
	*                  is not possible, the passed in charset itself
	*                  is returned.
	* @since           JavaMail 1.1
	*/
	@:require(java1) @:overload @:public @:static public static function mimeCharset(charset : String) : String;
	
	/**
	* Get the default charset corresponding to the system's current
	* default locale.  If the System property <code>mail.mime.charset</code>
	* is set, a system charset corresponding to this MIME charset will be
	* returned. <p>
	*
	* @return  the default charset of the system's default locale,
	*          as a Java charset. (NOT a MIME charset)
	* @since   JavaMail 1.1
	*/
	@:require(java1) @:overload @:public @:static public static function getDefaultJavaCharset() : String;
	
	
}
@:internal extern class AsciiOutputStream extends java.io.OutputStream
{
	@:overload @:public public function new(breakOnNonAscii : Bool, encodeEolStrict : Bool) : Void;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Return ASCII-ness of data stream.
	*/
	@:overload @:public public function getAscii() : Int;
	
	
}
