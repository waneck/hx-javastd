package javax.print;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DocFlavor implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* A String representing the host operating system encoding.
	* This will follow the conventions documented in
	* <a href="http://www.ietf.org/rfc/rfc2278.txt">
	* <i>RFC&nbsp;2278:&nbsp;IANA Charset Registration Procedures</i></a>
	* except where historical names are returned for compatibility with
	* previous versions of the Java platform.
	* The value returned from method is valid only for the VM which
	* returns it, for use in a DocFlavor.
	* This is the charset for all the "HOST" pre-defined DocFlavors in
	* the executing VM.
	*/
	public static var hostEncoding(default, null) : String;
	
	/**
	* Constructs a new doc flavor object from the given MIME type and
	* representation class name. The given MIME type is converted into
	* canonical form and stored internally.
	*
	* @param  mimeType   MIME media type string.
	* @param  className  Fully-qualified representation class name.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null or
	*     <CODE>className</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String, className : String) : Void;
	
	/**
	* Returns this doc flavor object's MIME type string based on the
	* canonical form. Each parameter value is enclosed in quotes.
	* @return the mime type
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* Returns this doc flavor object's media type (from the MIME type).
	* @return the media type
	*/
	@:overload public function getMediaType() : String;
	
	/**
	* Returns this doc flavor object's media subtype (from the MIME type).
	* @return the media sub-type
	*/
	@:overload public function getMediaSubtype() : String;
	
	/**
	* Returns a <code>String</code> representing a MIME
	* parameter.
	* Mime types may include parameters which are usually optional.
	* The charset for text types is a commonly useful example.
	* This convenience method will return the value of the specified
	* parameter if one was specified in the mime type for this flavor.
	* <p>
	* @param paramName the name of the paramater. This name is internally
	* converted to the canonical lower case format before performing
	* the match.
	* @return String representing a mime parameter, or
	* null if that parameter is not in the mime type string.
	* @exception throws NullPointerException if paramName is null.
	*/
	@:overload public function getParameter(paramName : String) : String;
	
	/**
	* Returns the name of this doc flavor object's representation class.
	* @return the name of the representation class.
	*/
	@:overload public function getRepresentationClassName() : String;
	
	/**
	* Converts this <code>DocFlavor</code> to a string.
	*
	* @return  MIME type string based on the canonical form. Each parameter
	*          value is enclosed in quotes.
	*          A "class=" parameter is appended to the
	*          MIME type string to indicate the representation class name.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hash code for this doc flavor object.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Determines if this doc flavor object is equal to the given object.
	* The two are equal if the given object is not null, is an instance
	* of <code>DocFlavor</code>, has a MIME type equivalent to this doc
	* flavor object's MIME type (that is, the MIME types have the same media
	* type, media subtype, and parameters), and has the same representation
	* class name as this doc flavor object. Thus, if two doc flavor objects'
	* MIME types are the same except for comments, they are considered equal.
	* However, two doc flavor objects with MIME types of "text/plain" and
	* "text/plain; charset=US-ASCII" are not considered equal, even though
	* they represent the same media type (because the default character
	* set for plain text is US-ASCII).
	*
	* @param  obj  Object to test.
	*
	* @return  True if this doc flavor object equals <CODE>obj</CODE>, false
	*          otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* Class DocFlavor.BYTE_ARRAY provides predefined static constant
* DocFlavor objects for example doc flavors using a byte array
* (<CODE>byte[]</CODE>) as the print data representation class.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$BYTE_ARRAY') extern class DocFlavor_BYTE_ARRAY extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of <CODE>"[B"</CODE> (byte array).
	*
	* @param  mimeType   MIME media type string.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"[B"</CODE> (byte array).
	*/
	public static var TEXT_PLAIN_HOST(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-8"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_PLAIN_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_PLAIN_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_PLAIN_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_PLAIN_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"[B"</CODE> (byte array).
	*/
	public static var TEXT_PLAIN_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"[B"</CODE> (byte array).
	*/
	public static var TEXT_HTML_HOST(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-8"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_HTML_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_HTML_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_HTML_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var TEXT_HTML_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"[B"</CODE> (byte array).
	*/
	public static var TEXT_HTML_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/pdf"</CODE>, print
	* data representation class name = <CODE>"[B"</CODE> (byte array).
	*/
	public static var PDF(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/postscript"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var POSTSCRIPT(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/vnd.hp-PCL"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array).
	*/
	public static var PCL(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/gif"</CODE>, print data
	* representation class name = <CODE>"[B"</CODE> (byte array).
	*/
	public static var GIF(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/jpeg"</CODE>, print data
	* representation class name = <CODE>"[B"</CODE> (byte array).
	*/
	public static var JPEG(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/png"</CODE>, print data
	* representation class name = <CODE>"[B"</CODE> (byte array).
	*/
	public static var PNG(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"application/octet-stream"</CODE>,
	* print data representation class name = <CODE>"[B"</CODE> (byte
	* array). The client must determine that data described
	* using this DocFlavor is valid for the printer.
	*/
	public static var AUTOSENSE(default, null) : javax.print.DocFlavor.DocFlavor_BYTE_ARRAY;
	
	
}
/**
* Class DocFlavor.INPUT_STREAM provides predefined static constant
* DocFlavor objects for example doc flavors using a byte stream ({@link
* java.io.InputStream <CODE>java.io.InputStream</CODE>}) as the print
* data representation class.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$INPUT_STREAM') extern class DocFlavor_INPUT_STREAM extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*
	* @param  mimeType   MIME media type string.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_HOST(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-8"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_HOST(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-8"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/pdf"</CODE>, print
	* data representation class name = <CODE>"java.io.InputStream"</CODE>
	* (byte stream).
	*/
	public static var PDF(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/postscript"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var POSTSCRIPT(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/vnd.hp-PCL"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var PCL(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/gif"</CODE>, print data
	* representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var GIF(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/jpeg"</CODE>, print data
	* representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var JPEG(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/png"</CODE>, print data
	* representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	*/
	public static var PNG(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"application/octet-stream"</CODE>,
	* print data representation class name =
	* <CODE>"java.io.InputStream"</CODE> (byte stream).
	* The client must determine that data described
	* using this DocFlavor is valid for the printer.
	*/
	public static var AUTOSENSE(default, null) : javax.print.DocFlavor.DocFlavor_INPUT_STREAM;
	
	
}
/**
* Class DocFlavor.URL provides predefined static constant DocFlavor
* objects.
* For example doc flavors using a Uniform Resource Locator ({@link
* java.net.URL <CODE>java.net.URL</CODE>}) as the print data
* representation  class.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$URL') extern class DocFlavor_URL extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of <CODE>"java.net.URL"</CODE>.
	*
	* @param  mimeType   MIME media type string.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_HOST(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-8"</CODE>,
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16"</CODE>,
	* print data representation class name =
	* <CODE>java.net.URL""</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/plain; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_PLAIN_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html"</CODE>,
	* encoded in the host platform encoding.
	* See {@link DocFlavor#hostEncoding <CODE>hostEncoding</CODE>}
	* Print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_HOST(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-8"</CODE>,
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_8(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16"</CODE>,
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16be"</CODE>
	* (big-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16BE(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=utf-16le"</CODE>
	* (little-endian byte ordering),
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_UTF_16LE(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"text/html; charset=us-ascii"</CODE>,
	* print data representation class name =
	* <CODE>"java.net.URL"</CODE> (byte stream).
	*/
	public static var TEXT_HTML_US_ASCII(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/pdf"</CODE>, print
	* data representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var PDF(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/postscript"</CODE>,
	* print data representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var POSTSCRIPT(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"application/vnd.hp-PCL"</CODE>,
	* print data representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var PCL(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/gif"</CODE>, print data
	* representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var GIF(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/jpeg"</CODE>, print data
	* representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var JPEG(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type = <CODE>"image/png"</CODE>, print data
	* representation class name = <CODE>"java.net.URL"</CODE>.
	*/
	public static var PNG(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	/**
	* Doc flavor with MIME type =
	* <CODE>"application/octet-stream"</CODE>,
	* print data representation class name = <CODE>"java.net.URL"</CODE>.
	*  The client must determine that data described
	* using this DocFlavor is valid for the printer.
	*/
	public static var AUTOSENSE(default, null) : javax.print.DocFlavor.DocFlavor_URL;
	
	
}
/**
* Class DocFlavor.CHAR_ARRAY provides predefined static constant
* DocFlavor objects for example doc flavors using a character array
* (<CODE>char[]</CODE>) as the print data representation class. As such,
* the character set is Unicode.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$CHAR_ARRAY') extern class DocFlavor_CHAR_ARRAY extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of
	* <CODE>"[C"</CODE> (character array).
	*
	* @param  mimeType  MIME media type string. If it is a text media
	*                      type, it is assumed to contain a
	*                      <CODE>"charset=utf-16"</CODE> parameter.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"[C"</CODE> (character array).
	*/
	public static var TEXT_PLAIN(default, null) : javax.print.DocFlavor.DocFlavor_CHAR_ARRAY;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"[C"</CODE> (character array).
	*/
	public static var TEXT_HTML(default, null) : javax.print.DocFlavor.DocFlavor_CHAR_ARRAY;
	
	
}
/**
* Class DocFlavor.STRING provides predefined static constant DocFlavor
* objects for example doc flavors using a string ({@link java.lang.String
* <CODE>java.lang.String</CODE>}) as the print data representation class.
* As such, the character set is Unicode.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$STRING') extern class DocFlavor_STRING extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of <CODE>"java.lang.String"</CODE>.
	*
	* @param  mimeType  MIME media type string. If it is a text media
	*                      type, it is assumed to contain a
	*                      <CODE>"charset=utf-16"</CODE> parameter.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"java.lang.String"</CODE>.
	*/
	public static var TEXT_PLAIN(default, null) : javax.print.DocFlavor.DocFlavor_STRING;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"java.lang.String"</CODE>.
	*/
	public static var TEXT_HTML(default, null) : javax.print.DocFlavor.DocFlavor_STRING;
	
	
}
/**
* Class DocFlavor.READER provides predefined static constant DocFlavor
* objects for example doc flavors using a character stream ({@link
* java.io.Reader <CODE>java.io.Reader</CODE>}) as the print data
* representation class. As such, the character set is Unicode.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$READER') extern class DocFlavor_READER extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with the given MIME type and a print
	* data representation class name of\
	* <CODE>"java.io.Reader"</CODE> (character stream).
	*
	* @param  mimeType  MIME media type string. If it is a text media
	*                      type, it is assumed to contain a
	*                      <CODE>"charset=utf-16"</CODE> parameter.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>mimeType</CODE> does not
	*     obey the syntax for a MIME media type string.
	*/
	@:overload public function new(mimeType : String) : Void;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/plain;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"java.io.Reader"</CODE> (character stream).
	*/
	public static var TEXT_PLAIN(default, null) : javax.print.DocFlavor.DocFlavor_READER;
	
	/**
	* Doc flavor with MIME type = <CODE>"text/html;
	* charset=utf-16"</CODE>, print data representation class name =
	* <CODE>"java.io.Reader"</CODE> (character stream).
	*/
	public static var TEXT_HTML(default, null) : javax.print.DocFlavor.DocFlavor_READER;
	
	
}
/**
* Class DocFlavor.SERVICE_FORMATTED provides predefined static constant
* DocFlavor objects for example doc flavors for service formatted print
* data.
* <P>
*
* @author  Alan Kaminsky
*/
@:native('javax$print$DocFlavor$SERVICE_FORMATTED') extern class DocFlavor_SERVICE_FORMATTED extends javax.print.DocFlavor
{
	/**
	* Constructs a new doc flavor with a MIME type of
	* <CODE>"application/x-java-jvm-local-objectref"</CODE> indicating
	* service formatted print data and the given print data
	* representation class name.
	*
	* @param  className  Fully-qualified representation class name.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>className</CODE> is
	*     null.
	*/
	@:overload public function new(className : String) : Void;
	
	/**
	* Service formatted print data doc flavor with print data
	* representation class name =
	* <CODE>"java.awt.image.renderable.RenderableImage"</CODE>
	* (renderable image object).
	*/
	public static var RENDERABLE_IMAGE(default, null) : javax.print.DocFlavor.DocFlavor_SERVICE_FORMATTED;
	
	/**
	* Service formatted print data doc flavor with print data
	* representation class name = <CODE>"java.awt.print.Printable"</CODE>
	* (printable object).
	*/
	public static var PRINTABLE(default, null) : javax.print.DocFlavor.DocFlavor_SERVICE_FORMATTED;
	
	/**
	* Service formatted print data doc flavor with print data
	* representation class name = <CODE>"java.awt.print.Pageable"</CODE>
	* (pageable object).
	*/
	public static var PAGEABLE(default, null) : javax.print.DocFlavor.DocFlavor_SERVICE_FORMATTED;
	
	
}
