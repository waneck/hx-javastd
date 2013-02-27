package com.sun.xml.internal.txw2;
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
extern class TXW
{
	/**
	* Creates a new {@link TypedXmlWriter} to write a new instance of a document.
	*
	* @param rootElement
	*      The {@link TypedXmlWriter} interface that declares the content model of the root element.
	*      This interface must have {@link XmlElement} annotation on it to designate the tag name
	*      of the root element.
	* @param out
	*      The target of the writing.
	*/
	@:overload public static function create<T : com.sun.xml.internal.txw2.TypedXmlWriter>(rootElement : Class<T>, out : com.sun.xml.internal.txw2.output.XmlSerializer) : T;
	
	/**
	* Creates a new {@link TypedXmlWriter} to write a new instance of a document.
	*
	* <p>
	* Similar to the other method, but this version allows the caller to set the
	* tag name at the run-time.
	*
	* @param tagName
	*      The tag name of the root document.
	*
	* @see #create(Class,XmlSerializer)
	*/
	@:overload public static function create<T : com.sun.xml.internal.txw2.TypedXmlWriter>(tagName : javax.xml.namespace.QName, rootElement : Class<T>, out : com.sun.xml.internal.txw2.output.XmlSerializer) : T;
	
	
}
