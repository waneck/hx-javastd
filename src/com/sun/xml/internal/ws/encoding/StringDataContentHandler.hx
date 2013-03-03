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
extern class StringDataContentHandler implements javax.activation.DataContentHandler
{
	@:overload @:protected private function getDF() : javax.activation.ActivationDataFlavor;
	
	/**
	* Return the DataFlavors for this <code>DataContentHandler</code>.
	*
	* @return The DataFlavors
	*/
	@:overload @:public public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Return the Transfer Data of type DataFlavor from InputStream.
	*
	* @param df The DataFlavor
	* @param ds The DataSource corresponding to the data
	* @return String object
	*/
	@:overload @:public public function getTransferData(df : java.awt.datatransfer.DataFlavor, ds : javax.activation.DataSource) : Dynamic;
	
	@:overload @:public public function getContent(ds : javax.activation.DataSource) : Dynamic;
	
	/**
	* Write the object to the output stream, using the specified MIME type.
	*/
	@:overload @:public public function writeTo(obj : Dynamic, type : String, os : java.io.OutputStream) : Void;
	
	
}
