package com.sun.xml.internal.org.jvnet.staxex;
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
extern class Base64Data implements java.lang.CharSequence implements java.lang.Cloneable
{
	/**
	* Default constructor
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Clone constructor
	* @param that needs to be cloned
	*/
	@:overload @:public public function new(that : com.sun.xml.internal.org.jvnet.staxex.Base64Data) : Void;
	
	/**
	* Fills in the data object by a portion of the byte[].
	*
	* @param data actual data
	* @param len
	*      data[0] to data[len-1] are treated as the data.
	* @param mimeType MIME type
	* @param cloneByRef
	*      true if data[] can be cloned by reference
	*/
	@:overload @:public public function set(data : java.NativeArray<java.StdTypes.Int8>, len : Int, mimeType : String, cloneByRef : Bool) : Void;
	
	/**
	* Fills in the data object by a portion of the byte[].
	*
	* @param data actual data bytes
	* @param len
	*      data[0] to data[len-1] are treated as the data.
	* @param mimeType MIME type
	*/
	@:overload @:public public function set(data : java.NativeArray<java.StdTypes.Int8>, len : Int, mimeType : String) : Void;
	
	/**
	* Fills in the data object by the byte[] of the exact length.
	*
	* @param data
	*      this buffer may be owned directly by the unmarshaleld JAXB object.
	* @param mimeType MIME type
	*/
	@:overload @:public public function set(data : java.NativeArray<java.StdTypes.Int8>, mimeType : String) : Void;
	
	/**
	* Fills in the data object by a {@link DataHandler}.
	*
	* @param data DataHandler for the data
	*/
	@:overload @:public public function set(data : javax.activation.DataHandler) : Void;
	
	/**
	* Gets the raw data. If the returned DataHandler is {@link StreamingDataHandler},
	* callees may need to downcast to take advantage of its capabilities.
	*
	* @see StreamingDataHandler
	* @return DataHandler for the data
	*/
	@:overload @:public public function getDataHandler() : javax.activation.DataHandler;
	
	/**
	* Gets the byte[] of the exact length.
	*
	* @return byte[] for data
	*/
	@:overload @:public public function getExact() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the data as an {@link InputStream}.
	*
	* @return data as InputStream
	* @throws IOException if i/o error occurs
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns false if this object only has {@link DataHandler} and therefore
	* {@link #get()} operation is likely going to be expensive.
	*
	* @return false if it has only DataHandler
	*/
	@:overload @:public public function hasData() : Bool;
	
	/**
	* Gets the raw data. The size of the byte array maybe larger than the actual length.
	*
	* @return data as byte[], the array may be larger
	*/
	@:overload @:public public function get() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the length of the binary data counted in bytes.
	*
	* Note that if this object encapsulates {@link DataHandler},
	* this method would have to read the whole thing into {@code byte[]}
	* just to count the length, because {@link DataHandler}
	* doesn't easily expose the length.
	*
	* @return no of bytes
	*/
	@:overload @:public public function getDataLen() : Int;
	
	@:overload @:public public function getMimeType() : String;
	
	/**
	* Gets the number of characters needed to represent
	* this binary data in the base64 encoding.
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* Encode this binary data in the base64 encoding
	* and returns the character at the specified position.
	*/
	@:overload @:public public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Internally this is only used to split a text to a list,
	* which doesn't happen that much for base64.
	* So this method should be smaller than faster.
	*/
	@:overload @:public public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* Returns the base64 encoded string of this data.
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function writeTo(buf : java.NativeArray<java.StdTypes.Char16>, start : Int) : Void;
	
	@:overload @:public public function clone() : com.sun.xml.internal.org.jvnet.staxex.Base64Data;
	
	
}
@:native('com$sun$xml$internal$org$jvnet$staxex$Base64Data$Base64DataSource') @:internal extern class Base64Data_Base64DataSource implements javax.activation.DataSource
{
	@:overload @:public public function getContentType() : String;
	
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	
}
@:native('com$sun$xml$internal$org$jvnet$staxex$Base64Data$Base64StreamingDataHandler') @:internal extern class Base64Data_Base64StreamingDataHandler extends com.sun.xml.internal.org.jvnet.staxex.StreamingDataHandler
{
	@:overload @:public override public function readOnce() : java.io.InputStream;
	
	@:overload @:public override public function moveTo(dst : java.io.File) : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$org$jvnet$staxex$Base64Data$FilterDataHandler') @:internal extern class Base64Data_FilterDataHandler extends com.sun.xml.internal.org.jvnet.staxex.StreamingDataHandler
{
	@:overload @:public override public function readOnce() : java.io.InputStream;
	
	@:overload @:public override public function moveTo(dst : java.io.File) : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
