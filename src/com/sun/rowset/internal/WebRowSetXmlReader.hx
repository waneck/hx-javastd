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
* An implementation of the <code>XmlReader</code> interface, which
* reads and parses an XML formatted <code>WebRowSet</code> object.
* This implementation uses an <code>org.xml.sax.Parser</code> object
* as its parser.
*/
extern class WebRowSetXmlReader implements javax.sql.rowset.spi.XmlReader implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Parses the given <code>WebRowSet</code> object, getting its input from
	* the given <code>java.io.Reader</code> object.  The parser will send
	* notifications of parse events to the rowset's
	* <code>XmlReaderDocHandler</code>, which will build the rowset as
	* an XML document.
	* <P>
	* This method is called internally by the method
	* <code>WebRowSet.readXml</code>.
	* <P>
	* If a parsing error occurs, the exception thrown will include
	* information for locating the error in the original XML document.
	*
	* @param caller the <code>WebRowSet</code> object to be parsed, whose
	*        <code>xmlReader</code> field must contain a reference to
	*        this <code>XmlReader</code> object
	* @param reader the <code>java.io.Reader</code> object from which
	*        the parser will get its input
	* @exception SQLException if a database access error occurs or
	*            this <code>WebRowSetXmlReader</code> object is not the
	*            reader for the given rowset
	* @see XmlReaderContentHandler
	*/
	@:overload public function readXML(caller : javax.sql.rowset.WebRowSet, reader : java.io.Reader) : Void;
	
	/**
	* Parses the given <code>WebRowSet</code> object, getting its input from
	* the given <code>java.io.InputStream</code> object.  The parser will send
	* notifications of parse events to the rowset's
	* <code>XmlReaderDocHandler</code>, which will build the rowset as
	* an XML document.
	* <P>
	* Using streams is a much faster way than using <code>java.io.Reader</code>
	* <P>
	* This method is called internally by the method
	* <code>WebRowSet.readXml</code>.
	* <P>
	* If a parsing error occurs, the exception thrown will include
	* information for locating the error in the original XML document.
	*
	* @param caller the <code>WebRowSet</code> object to be parsed, whose
	*        <code>xmlReader</code> field must contain a reference to
	*        this <code>XmlReader</code> object
	* @param iStream the <code>java.io.InputStream</code> object from which
	*        the parser will get its input
	* @throws SQLException if a database access error occurs or
	*            this <code>WebRowSetXmlReader</code> object is not the
	*            reader for the given rowset
	* @see XmlReaderContentHandler
	*/
	@:overload public function readXML(caller : javax.sql.rowset.WebRowSet, iStream : java.io.InputStream) : Void;
	
	/**
	* For code coverage purposes only right now
	*
	*/
	@:overload public function readData(caller : javax.sql.RowSetInternal) : Void;
	
	
}
