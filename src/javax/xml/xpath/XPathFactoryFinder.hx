package javax.xml.xpath;
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
@:internal extern class XPathFactoryFinder
{
	/**
	* <p>Constructor that specifies <code>ClassLoader</code> to use
	* to find <code>XPathFactory</code>.</p>
	*
	* @param loader
	*      to be used to load resource, {@link XPathFactory}, and
	*      {@link SchemaFactoryLoader} implementations during
	*      the resolution process.
	*      If this parameter is null, the default system class loader
	*      will be used.
	*/
	@:overload public function new(loader : java.lang.ClassLoader) : Void;
	
	/**
	* <p>Creates a new {@link XPathFactory} object for the specified
	* schema language.</p>
	*
	* @param uri
	*       Identifies the underlying object model.
	*
	* @return <code>null</code> if the callee fails to create one.
	*
	* @throws NullPointerException
	*      If the parameter is null.
	*/
	@:overload public function newFactory(uri : String) : javax.xml.xpath.XPathFactory;
	
	
}
/** Iterator that lazily computes one value and returns it. */
@:native('javax$xml$xpath$XPathFactoryFinder$SingleIterator') @:internal extern class XPathFactoryFinder_SingleIterator implements java.util.Iterator<Dynamic>
{
	@:overload @:final public function remove() : Void;
	
	@:overload @:final public function hasNext() : Bool;
	
	@:overload @:final public function next() : Dynamic;
	
	@:overload @:abstract private function value() : Dynamic;
	
	
}
