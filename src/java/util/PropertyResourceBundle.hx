package java.util;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*/
extern class PropertyResourceBundle extends java.util.ResourceBundle
{
	/**
	* Creates a property resource bundle from an {@link java.io.InputStream
	* InputStream}.  The property file read with this constructor
	* must be encoded in ISO-8859-1.
	*
	* @param stream an InputStream that represents a property file
	*        to read from.
	* @throws IOException if an I/O error occurs
	* @throws NullPointerException if <code>stream</code> is null
	*/
	@:overload public function new(stream : java.io.InputStream) : Void;
	
	/**
	* Creates a property resource bundle from a {@link java.io.Reader
	* Reader}.  Unlike the constructor
	* {@link #PropertyResourceBundle(java.io.InputStream) PropertyResourceBundle(InputStream)},
	* there is no limitation as to the encoding of the input property file.
	*
	* @param reader a Reader that represents a property file to
	*        read from.
	* @throws IOException if an I/O error occurs
	* @throws NullPointerException if <code>reader</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload public function new(reader : java.io.Reader) : Void;
	
	@:overload override public function handleGetObject(key : String) : Dynamic;
	
	/**
	* Returns an <code>Enumeration</code> of the keys contained in
	* this <code>ResourceBundle</code> and its parent bundles.
	*
	* @return an <code>Enumeration</code> of the keys contained in
	*         this <code>ResourceBundle</code> and its parent bundles.
	* @see #keySet()
	*/
	@:overload override public function getKeys() : java.util.Enumeration<String>;
	
	/**
	* Returns a <code>Set</code> of the keys contained
	* <em>only</em> in this <code>ResourceBundle</code>.
	*
	* @return a <code>Set</code> of the keys contained only in this
	*         <code>ResourceBundle</code>
	* @since 1.6
	* @see #keySet()
	*/
	@:require(java6) @:overload override private function handleKeySet() : java.util.Set<String>;
	
	
}
