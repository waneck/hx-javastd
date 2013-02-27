package javax.xml.crypto.dsig;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* ===========================================================================
*
* (C) Copyright IBM Corp. 2003 All Rights Reserved.
*
* ===========================================================================
*/
/*
* $Id: XMLObject.java,v 1.5 2005/05/10 16:03:48 mullan Exp $
*/
extern interface XMLObject extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns an {@link java.util.Collections#unmodifiableList unmodifiable
	* list} of {@link XMLStructure}s contained in this <code>XMLObject</code>,
	* which represent elements from any namespace.
	*
	*<p>If there is a public subclass representing the type of
	* <code>XMLStructure</code>, it is returned as an instance of that class
	* (ex: a <code>SignatureProperties</code> element would be returned
	* as an instance of {@link javax.xml.crypto.dsig.SignatureProperties}).
	*
	* @return an unmodifiable list of <code>XMLStructure</code>s (may be empty
	*    but never <code>null</code>)
	*/
	@:overload public function getContent() : java.util.List<Dynamic>;
	
	/**
	* Returns the Id of this <code>XMLObject</code>.
	*
	* @return the Id (or <code>null</code> if not specified)
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns the mime type of this <code>XMLObject</code>. The
	* mime type is an optional attribute which describes the data within this
	* <code>XMLObject</code> (independent of its encoding).
	*
	* @return the mime type (or <code>null</code> if not specified)
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* Returns the encoding URI of this <code>XMLObject</code>. The encoding
	* URI identifies the method by which the object is encoded.
	*
	* @return the encoding URI (or <code>null</code> if not specified)
	*/
	@:overload public function getEncoding() : String;
	
	
}
