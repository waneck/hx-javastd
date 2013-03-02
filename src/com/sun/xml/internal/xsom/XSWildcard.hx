package com.sun.xml.internal.xsom;
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
extern interface XSWildcard extends com.sun.xml.internal.xsom.XSComponent extends com.sun.xml.internal.xsom.XSTerm
{
	/**
	* Gets the processing mode.
	*
	* @return
	*      Either LAX, STRICT, or SKIP.
	*/
	@:overload public function getMode() : Int;
	
	/**
	* Returns true if the specified namespace URI is valid
	* wrt this wildcard.
	*
	* @param namespaceURI
	*      Use the empty string to test the default no-namespace.
	*/
	@:overload public function acceptsNamespace(namespaceURI : String) : Bool;
	
	/** Visitor support. */
	@:overload public function visit(visitor : com.sun.xml.internal.xsom.visitor.XSWildcardVisitor) : Void;
	
	@:overload public function apply<T>(_function : com.sun.xml.internal.xsom.visitor.XSWildcardFunction<T>) : T;
	
	
}
/**
* <code>##any</code> wildcard.
*/
@:native('com$sun$xml$internal$xsom$XSWildcard$Any') @:internal extern interface XSWildcard_Any extends com.sun.xml.internal.xsom.XSWildcard
{
	
}
/**
* <code>##other</code> wildcard.
*/
@:native('com$sun$xml$internal$xsom$XSWildcard$Other') @:internal extern interface XSWildcard_Other extends com.sun.xml.internal.xsom.XSWildcard
{
	/**
	* Gets the namespace URI excluded from this wildcard.
	*/
	@:overload public function getOtherNamespace() : String;
	
	
}
/**
* Wildcard of a set of namespace URIs.
*/
@:native('com$sun$xml$internal$xsom$XSWildcard$Union') @:internal extern interface XSWildcard_Union extends com.sun.xml.internal.xsom.XSWildcard
{
	/**
	* Short for <code>getNamespaces().iterator()</code>
	*/
	@:overload public function iterateNamespaces() : java.util.Iterator<String>;
	
	/**
	* Read-only list of namespace URIs.
	*/
	@:overload public function getNamespaces() : java.util.Collection<String>;
	
	
}
