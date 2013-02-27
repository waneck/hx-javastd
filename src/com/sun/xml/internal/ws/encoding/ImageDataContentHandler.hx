package com.sun.xml.internal.ws.encoding;
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
extern class ImageDataContentHandler extends java.awt.Component implements javax.activation.DataContentHandler
{
	@:overload public function new() : Void;
	
	/**
	* Returns an array of DataFlavor objects indicating the flavors the
	* data can be provided in. The array should be ordered according to
	* preference for providing the data (from most richly descriptive to
	* least descriptive).
	*
	* @return The DataFlavors.
	*/
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns an object which represents the data to be transferred.
	* The class of the object returned is defined by the representation class
	* of the flavor.
	*
	* @param df The DataFlavor representing the requested type.
	* @param ds The DataSource representing the data to be converted.
	* @return The constructed Object.
	*/
	@:overload public function getTransferData(df : java.awt.datatransfer.DataFlavor, ds : javax.activation.DataSource) : Dynamic;
	
	/**
	* Return an object representing the data in its most preferred form.
	* Generally this will be the form described by the first DataFlavor
	* returned by the <code>getTransferDataFlavors</code> method.
	*
	* @param ds The DataSource representing the data to be converted.
	* @return The constructed Object.
	*/
	@:overload public function getContent(ds : javax.activation.DataSource) : Dynamic;
	
	/**
	* Convert the object to a byte stream of the specified MIME type
	* and write it to the output stream.
	*
	* @param obj   The object to be converted.
	* @param type  The requested MIME type of the resulting byte stream.
	* @param os    The output stream into which to write the converted
	*          byte stream.
	*/
	@:overload public function writeTo(obj : Dynamic, type : String, os : java.io.OutputStream) : Void;
	
	
}
