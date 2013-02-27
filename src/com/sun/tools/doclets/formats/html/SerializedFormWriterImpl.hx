package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Generate the Serialized Form Information Page.
*
* @author Atul M Dambalkar
*/
extern class SerializedFormWriterImpl extends com.sun.tools.doclets.formats.html.SubWriterHolderWriter implements com.sun.tools.doclets.internal.toolkit.SerializedFormWriter
{
	/**
	* @throws IOException
	* @throws DocletAbortException
	*/
	@:overload public function new() : Void;
	
	/**
	* Writes the given header.
	*
	* @param header the header to write.
	*/
	@:overload public function writeHeader(header : String) : Void;
	
	/**
	* Get the given header.
	*
	* @param header the header to write
	* @return the body content tree
	*/
	@:overload public function getHeader(header : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serialized form summaries header.
	*
	* @return the serialized form summary header tree
	*/
	@:overload public function getSerializedSummariesHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the package serialized form header.
	*
	* @return the package serialized form header tree
	*/
	@:overload public function getPackageSerializedHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the given package header.
	*
	* @param packageName the package header to write
	* @return a content tree for the package header
	*/
	@:overload public function getPackageHeader(packageName : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serialized class header.
	*
	* @return a content tree for the serialized class header
	*/
	@:overload public function getClassSerializedHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serializable class heading.
	*
	* @param classDoc the class being processed
	* @return a content tree for the class header
	*/
	@:overload public function getClassHeader(classDoc : com.sun.javadoc.ClassDoc) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serial UID info header.
	*
	* @return a content tree for the serial uid info header
	*/
	@:overload public function getSerialUIDInfoHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Adds the serial UID info.
	*
	* @param header the header that will show up before the UID.
	* @param serialUID the serial UID to print.
	* @param serialUidTree the serial UID content tree to which the serial UID
	*                      content will be added
	*/
	@:overload public function addSerialUIDInfo(header : String, serialUID : String, serialUidTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the class serialize content header.
	*
	* @return a content tree for the class serialize content header
	*/
	@:overload public function getClassContentHeader() : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get the serialized content tree section.
	*
	* @param serializedTreeContent the serialized content tree to be added
	* @return a div content tree
	*/
	@:overload public function getSerializedContent(serializedTreeContent : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Add the footer.
	*
	* @param serializedTree the serialized tree to be added
	*/
	@:overload public function addFooter(serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function printDocument(serializedTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Return an instance of a SerialFieldWriter.
	*
	* @return an instance of a SerialFieldWriter.
	*/
	@:overload public function getSerialFieldWriter(classDoc : com.sun.javadoc.ClassDoc) : SerialFieldWriter;
	
	/**
	* Return an instance of a SerialMethodWriter.
	*
	* @return an instance of a SerialMethodWriter.
	*/
	@:overload public function getSerialMethodWriter(classDoc : com.sun.javadoc.ClassDoc) : SerialMethodWriter;
	
	
}
