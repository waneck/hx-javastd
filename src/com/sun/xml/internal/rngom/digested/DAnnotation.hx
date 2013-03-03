package com.sun.xml.internal.rngom.digested;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
extern class DAnnotation
{
	/**
	* Gets the attribute of a given name.
	*
	* @param nsUri
	*      can be empty but must not be null.
	* @return
	*      null if no such attribute is found.
	*/
	@:overload @:public public function getAttribute(nsUri : String, localName : String) : com.sun.xml.internal.rngom.digested.DAnnotation.DAnnotation_Attribute;
	
	@:overload @:public public function getAttribute(n : javax.xml.namespace.QName) : com.sun.xml.internal.rngom.digested.DAnnotation.DAnnotation_Attribute;
	
	/**
	* Gets the read-only view of all the attributes.
	*
	* @return
	*      can be empty but never null.
	*      the returned map is read-only.
	*/
	@:overload @:public public function getAttributes() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.rngom.digested.DAnnotation.DAnnotation_Attribute>;
	
	/**
	* Gets the read-only view of all the child elements of this annotation.
	*
	* @return
	*      can be empty but never null.
	*      the returned list is read-only.
	*/
	@:overload @:public public function getChildren() : java.util.List<org.w3c.dom.Element>;
	
	
}
/**
* Attribute.
*/
@:native('com$sun$xml$internal$rngom$digested$DAnnotation$Attribute') extern class DAnnotation_Attribute
{
	@:overload @:public public function new(ns : String, localName : String, prefix : String) : Void;
	
	@:overload @:public public function new(ns : String, localName : String, prefix : String, value : String, loc : org.xml.sax.Locator) : Void;
	
	/**
	* Gets the namespace URI of this attribute.
	*
	* @return
	*      can be empty (to represent the default namespace), but never null.
	*/
	@:overload @:public public function getNs() : String;
	
	/**
	* Gets the local name of this attribute.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public public function getLocalName() : String;
	
	/**
	* Gets the prefix of thie attribute.
	*
	* @return
	*      null if this attribute didn't have a prefix.
	*/
	@:overload @:public public function getPrefix() : String;
	
	/**
	* Gets the attribute value.
	*
	* @return
	*      never null.
	*/
	@:overload @:public public function getValue() : String;
	
	/**
	* Gets the location in the source schema file where this annotation was present.
	*
	* @return
	*      never null.
	*/
	@:overload @:public public function getLoc() : org.xml.sax.Locator;
	
	
}
