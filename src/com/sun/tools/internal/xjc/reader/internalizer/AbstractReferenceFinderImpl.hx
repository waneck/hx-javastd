package com.sun.tools.internal.xjc.reader.internalizer;
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
extern class AbstractReferenceFinderImpl extends org.xml.sax.helpers.XMLFilterImpl
{
	/**
	* XMLFilter that finds references to other schema files from
	* SAX events.
	*
	* This implementation is a base implementation for typical case
	* where we just need to look for a particular attribute which
	* contains an URL to another schema file.
	*
	* @author
	*  Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
	*/
	private var parent(default, null) : com.sun.tools.internal.xjc.reader.internalizer.DOMForest;
	
	@:overload private function new(_parent : com.sun.tools.internal.xjc.reader.internalizer.DOMForest) : Void;
	
	/**
	* IF the given element contains a reference to an external resource,
	* return its URL.
	*
	* @param nsURI
	*      Namespace URI of the current element
	* @param localName
	*      Local name of the current element
	* @return
	*      It's OK to return a relative URL.
	*/
	@:overload @:abstract private function findExternalResource(nsURI : String, localName : String, atts : org.xml.sax.Attributes) : String;
	
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	
}
