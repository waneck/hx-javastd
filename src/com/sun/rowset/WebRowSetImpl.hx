package com.sun.rowset;
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
* The standard implementation of the <code>WebRowSet</code> interface. See the interface
* defintion for full behaviour and implementation requirements.
*
* @author Jonathan Bruce, Amit Handa
*/
extern class WebRowSetImpl extends com.sun.rowset.CachedRowSetImpl implements javax.sql.rowset.WebRowSet
{
	/**
	* Constructs a new <code>WebRowSet</code> object initialized with the
	* default values for a <code>CachedRowSet</code> object instance. This
	* provides the <code>RIOptimistic</code> provider to deliver
	* synchronization capabilities to relational datastores and a default
	* <code>WebRowSetXmlReader</code> object and a default
	* <code>WebRowSetXmlWriter</code> object to enable XML output
	* capabilities.
	*
	* @throws SQLException if an error occurs in configuring the default
	* synchronization providers for relational and XML providers.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new <code>WebRowSet</code> object initialized with the the
	* synchronization SPI provider properties as specified in the <code>Hashtable</code>. If
	* this hashtable is empty or is <code>null</code> the default constructor is invoked.
	*
	* @throws SQLException if an error occurs in configuring the specified
	* synchronization providers for the relational and XML providers; or
	* if the Hashtanle is null
	*/
	@:overload @:public public function new(env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	/**
	* Populates this <code>WebRowSet</code> object with the
	* data in the given <code>ResultSet</code> object and writes itself
	* to the given <code>java.io.Writer</code> object in XML format.
	* This includes the rowset's data,  properties, and metadata.
	*
	* @throws SQLException if an error occurs writing out the rowset
	*          contents to XML
	*/
	@:overload @:public public function writeXml(rs : java.sql.ResultSet, writer : java.io.Writer) : Void;
	
	/**
	* Writes this <code>WebRowSet</code> object to the given
	* <code>java.io.Writer</code> object in XML format. This
	* includes the rowset's data,  properties, and metadata.
	*
	* @throws SQLException if an error occurs writing out the rowset
	*          contents to XML
	*/
	@:overload @:public public function writeXml(writer : java.io.Writer) : Void;
	
	/**
	* Reads this <code>WebRowSet</code> object in its XML format.
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload @:public public function readXml(reader : java.io.Reader) : Void;
	
	/**
	* Reads a stream based XML input to populate this <code>WebRowSet</code>
	* object.
	*
	* @throws SQLException if a data source access error occurs
	* @throws IOException if a IO exception occurs
	*/
	@:overload @:public public function readXml(iStream : java.io.InputStream) : Void;
	
	/**
	* Writes this <code>WebRowSet</code> object to the given <code> OutputStream</code>
	* object in XML format.
	* Creates an an output stream of the internal state and contents of a
	* <code>WebRowSet</code> for XML proceessing
	*
	* @throws SQLException if a datasource access error occurs
	* @throws IOException if an IO exception occurs
	*/
	@:overload @:public public function writeXml(oStream : java.io.OutputStream) : Void;
	
	/**
	* Populates this <code>WebRowSet</code> object with the
	* data in the given <code>ResultSet</code> object and writes itself
	* to the given <code>java.io.OutputStream</code> object in XML format.
	* This includes the rowset's data,  properties, and metadata.
	*
	* @throws SQLException if a datasource access error occurs
	* @throws IOException if an IO exception occurs
	*/
	@:overload @:public public function writeXml(rs : java.sql.ResultSet, oStream : java.io.OutputStream) : Void;
	
	
}
