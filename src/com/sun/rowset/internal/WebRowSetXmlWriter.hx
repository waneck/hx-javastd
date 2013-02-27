package com.sun.rowset.internal;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of the <code>XmlWriter</code> interface, which writes a
* <code>WebRowSet</code> object to an output stream as an XML document.
*/
extern class WebRowSetXmlWriter implements javax.sql.rowset.spi.XmlWriter implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Writes the given <code>WebRowSet</code> object as an XML document
	* using the given <code>java.io.Writer</code> object. The XML document
	* will include the <code>WebRowSet</code> object's data, metadata, and
	* properties.  If a data value has been updated, that information is also
	* included.
	* <P>
	* This method is called by the <code>XmlWriter</code> object that is
	* referenced in the calling <code>WebRowSet</code> object's
	* <code>xmlWriter</code> field.  The <code>XmlWriter.writeXML</code>
	* method passes to this method the arguments that were supplied to it.
	*
	* @param caller the <code>WebRowSet</code> object to be written; must
	*        be a rowset for which this <code>WebRowSetXmlWriter</code> object
	*        is the writer
	* @param wrt the <code>java.io.Writer</code> object to which
	*        <code>caller</code> will be written
	* @exception SQLException if a database access error occurs or
	*            this <code>WebRowSetXmlWriter</code> object is not the writer
	*            for the given rowset
	* @see XmlWriter#writeXML
	*/
	@:overload public function writeXML(caller : javax.sql.rowset.WebRowSet, wrt : java.io.Writer) : Void;
	
	/**
	* Writes the given <code>WebRowSet</code> object as an XML document
	* using the given <code>java.io.OutputStream</code> object. The XML document
	* will include the <code>WebRowSet</code> object's data, metadata, and
	* properties.  If a data value has been updated, that information is also
	* included.
	* <P>
	* Using stream is a faster way than using <code>java.io.Writer<code/>
	*
	* This method is called by the <code>XmlWriter</code> object that is
	* referenced in the calling <code>WebRowSet</code> object's
	* <code>xmlWriter</code> field.  The <code>XmlWriter.writeXML</code>
	* method passes to this method the arguments that were supplied to it.
	*
	* @param caller the <code>WebRowSet</code> object to be written; must
	*        be a rowset for which this <code>WebRowSetXmlWriter</code> object
	*        is the writer
	* @param oStream the <code>java.io.OutputStream</code> object to which
	*        <code>caller</code> will be written
	* @throws SQLException if a database access error occurs or
	*            this <code>WebRowSetXmlWriter</code> object is not the writer
	*            for the given rowset
	* @see XmlWriter#writeXML
	*/
	@:overload public function writeXML(caller : javax.sql.rowset.WebRowSet, oStream : java.io.OutputStream) : Void;
	
	/**
	* Purely for code coverage purposes..
	*/
	@:overload public function writeData(caller : javax.sql.RowSetInternal) : Bool;
	
	
}
