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
* @(#)MimeMultipart.java     1.31 03/01/29
*/
extern class BMMimeMultipart extends com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeMultipart
{
	/**
	* Default constructor. An empty MimeMultipart object
	* is created. Its content type is set to "multipart/mixed".
	* A unique boundary string is generated and this string is
	* setup as the "boundary" parameter for the
	* <code>contentType</code> field. <p>
	*
	* MimeBodyParts may be added later.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a MimeMultipart object of the given subtype.
	* A unique boundary string is generated and this string is
	* setup as the "boundary" parameter for the
	* <code>contentType</code> field. <p>
	*
	* MimeBodyParts may be added later.
	*/
	@:overload @:public public function new(subtype : String) : Void;
	
	/**
	* Constructs a MimeMultipart object and its bodyparts from the
	* given DataSource. <p>
	*
	* This constructor handles as a special case the situation where the
	* given DataSource is a MultipartDataSource object.  In this case, this
	* method just invokes the superclass (i.e., Multipart) constructor
	* that takes a MultipartDataSource object. <p>
	*
	* Otherwise, the DataSource is assumed to provide a MIME multipart
	* byte stream.  The <code>parsed</code> flag is set to false.  When
	* the data for the body parts are needed, the parser extracts the
	* "boundary" parameter from the content type of this DataSource,
	* skips the 'preamble' and reads bytes till the terminating
	* boundary and creates MimeBodyParts for each part of the stream.
	*
	* @param   ds      DataSource, can be a MultipartDataSource
	*/
	@:overload @:public public function new(ds : javax.activation.DataSource, ct : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.ContentType) : Void;
	
	@:overload @:public public function initStream() : java.io.InputStream;
	
	/**
	* Parse the InputStream from our DataSource, constructing the
	* appropriate MimeBodyParts.  The <code>parsed</code> flag is
	* set to true, and if true on entry nothing is done.  This
	* method is called by all other methods that need data for
	* the body parts, to make sure the data has been parsed.
	*
	* @since   JavaMail 1.2
	*/
	@:require(java2) @:overload @:protected override private function parse() : Void;
	
	@:overload @:public public function lastBodyPartFound() : Bool;
	
	@:overload @:public public function getNextPart(stream : java.io.InputStream, pattern : java.NativeArray<java.StdTypes.Int8>, sin : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.SharedInputStream) : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeBodyPart;
	
	@:overload @:public public function parse(stream : java.io.InputStream, pattern : java.NativeArray<java.StdTypes.Int8>, sin : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.SharedInputStream) : Bool;
	
	@:overload @:public public function readNext(is : java.io.InputStream, buff : java.NativeArray<java.StdTypes.Int8>, patternLength : Int, eof : java.util.BitSet, posVector : java.NativeArray<haxe.Int64>, sin : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.SharedInputStream) : Int;
	
	@:overload @:public public function find(is : java.io.InputStream, pattern : java.NativeArray<java.StdTypes.Int8>, sin : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.SharedInputStream) : Bool;
	
	@:overload @:public public function find(is : java.io.InputStream, pattern : java.NativeArray<java.StdTypes.Int8>, posVector : java.NativeArray<haxe.Int64>, out : com.sun.xml.internal.messaging.saaj.util.ByteOutputStream, sin : com.sun.xml.internal.messaging.saaj.packaging.mime.internet.SharedInputStream) : Bool;
	
	@:overload @:public override public function writeTo(os : java.io.OutputStream) : Void;
	
	@:overload @:public public function setInputStream(is : java.io.InputStream) : Void;
	
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	@:overload @:public public function setBoundary(bnd : String) : Void;
	
	@:overload @:public public function getBoundary() : String;
	
	@:overload @:public public function isEndOfStream() : Bool;
	
	@:overload @:public public function setLazyAttachments(flag : Bool) : Void;
	
	
}
