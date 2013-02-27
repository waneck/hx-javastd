package org.xml.sax.ext;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// Attributes2.java - extended Attributes
//// http://www.saxproject.org
//// Public Domain: no warranty.
//// $Id: Attributes2.java,v 1.2 2004/11/03 22:49:07 jsuttor Exp $
extern interface Attributes2 extends org.xml.sax.Attributes
{
	/**
	* Returns false unless the attribute was declared in the DTD.
	* This helps distinguish two kinds of attributes that SAX reports
	* as CDATA:  ones that were declared (and hence are usually valid),
	* and those that were not (and which are never valid).
	*
	* @param index The attribute index (zero-based).
	* @return true if the attribute was declared in the DTD,
	*          false otherwise.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not identify an attribute.
	*/
	@:overload public function isDeclared(index : Int) : Bool;
	
	/**
	* Returns false unless the attribute was declared in the DTD.
	* This helps distinguish two kinds of attributes that SAX reports
	* as CDATA:  ones that were declared (and hence are usually valid),
	* and those that were not (and which are never valid).
	*
	* @param qName The XML qualified (prefixed) name.
	* @return true if the attribute was declared in the DTD,
	*          false otherwise.
	* @exception java.lang.IllegalArgumentException When the
	*            supplied name does not identify an attribute.
	*/
	@:overload public function isDeclared(qName : String) : Bool;
	
	/**
	* Returns false unless the attribute was declared in the DTD.
	* This helps distinguish two kinds of attributes that SAX reports
	* as CDATA:  ones that were declared (and hence are usually valid),
	* and those that were not (and which are never valid).
	*
	* <p>Remember that since DTDs do not "understand" namespaces, the
	* namespace URI associated with an attribute may not have come from
	* the DTD.  The declaration will have applied to the attribute's
	* <em>qName</em>.
	*
	* @param uri The Namespace URI, or the empty string if
	*        the name has no Namespace URI.
	* @param localName The attribute's local name.
	* @return true if the attribute was declared in the DTD,
	*          false otherwise.
	* @exception java.lang.IllegalArgumentException When the
	*            supplied names do not identify an attribute.
	*/
	@:overload public function isDeclared(uri : String, localName : String) : Bool;
	
	/**
	* Returns true unless the attribute value was provided
	* by DTD defaulting.
	*
	* @param index The attribute index (zero-based).
	* @return true if the value was found in the XML text,
	*          false if the value was provided by DTD defaulting.
	* @exception java.lang.ArrayIndexOutOfBoundsException When the
	*            supplied index does not identify an attribute.
	*/
	@:overload public function isSpecified(index : Int) : Bool;
	
	/**
	* Returns true unless the attribute value was provided
	* by DTD defaulting.
	*
	* <p>Remember that since DTDs do not "understand" namespaces, the
	* namespace URI associated with an attribute may not have come from
	* the DTD.  The declaration will have applied to the attribute's
	* <em>qName</em>.
	*
	* @param uri The Namespace URI, or the empty string if
	*        the name has no Namespace URI.
	* @param localName The attribute's local name.
	* @return true if the value was found in the XML text,
	*          false if the value was provided by DTD defaulting.
	* @exception java.lang.IllegalArgumentException When the
	*            supplied names do not identify an attribute.
	*/
	@:overload public function isSpecified(uri : String, localName : String) : Bool;
	
	/**
	* Returns true unless the attribute value was provided
	* by DTD defaulting.
	*
	* @param qName The XML qualified (prefixed) name.
	* @return true if the value was found in the XML text,
	*          false if the value was provided by DTD defaulting.
	* @exception java.lang.IllegalArgumentException When the
	*            supplied name does not identify an attribute.
	*/
	@:overload public function isSpecified(qName : String) : Bool;
	
	
}
