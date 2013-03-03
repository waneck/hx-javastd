package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Base64Data extends com.sun.xml.internal.bind.v2.runtime.output.Pcdata
{
	/**
	* Fills in the data object by a portion of the byte[].
	*
	* @param len
	*      data[0] to data[len-1] are treated as the data.
	*/
	@:overload @:public public function set(data : java.NativeArray<java.StdTypes.Int8>, len : Int, mimeType : String) : Void;
	
	/**
	* Fills in the data object by the byte[] of the exact length.
	*
	* @param data
	*      this buffer may be owned directly by the unmarshaleld JAXB object.
	*/
	@:overload @:public public function set(data : java.NativeArray<java.StdTypes.Int8>, mimeType : String) : Void;
	
	/**
	* Fills in the data object by a {@link DataHandler}.
	*/
	@:overload @:public public function set(data : javax.activation.DataHandler) : Void;
	
	/**
	* Gets the raw data.
	*/
	@:overload @:public public function getDataHandler() : javax.activation.DataHandler;
	
	/**
	* Gets the byte[] of the exact length.
	*/
	@:overload @:public public function getExact() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the data as an {@link InputStream}.
	*/
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	/**
	* Returns false if this object only has {@link DataHandler} and therefore
	* {@link #get()} operation is likely going to be expensive.
	*/
	@:overload @:public public function hasData() : Bool;
	
	/**
	* Gets the raw data. The size of the byte array maybe larger than the actual length.
	*/
	@:overload @:public public function get() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getDataLen() : Int;
	
	@:overload @:public public function getMimeType() : String;
	
	/**
	* Gets the number of characters needed to represent
	* this binary data in the base64 encoding.
	*/
	@:overload @:public override public function length() : Int;
	
	/**
	* Encode this binary data in the base64 encoding
	* and returns the character at the specified position.
	*/
	@:overload @:public override public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Internally this is only used to split a text to a list,
	* which doesn't happen that much for base64.
	* So this method should be smaller than faster.
	*/
	@:overload @:public override public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* Returns the base64 encoded string of this data.
	*/
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function writeTo(buf : java.NativeArray<java.StdTypes.Char16>, start : Int) : Void;
	
	@:overload @:public override public function writeTo(output : com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput) : Void;
	
	@:overload @:public public function writeTo(output : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
