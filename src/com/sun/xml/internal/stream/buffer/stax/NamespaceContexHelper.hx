package com.sun.xml.internal.stream.buffer.stax;
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
extern class NamespaceContexHelper implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx
{
	/**
	* Create a new NamespaceContexHelper.
	*
	*/
	@:overload public function new() : Void;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding>;
	
	/**
	* Declare a default namespace.
	* <p>
	* @param namespaceURI the namespace URI to declare, may be null.
	*/
	@:overload public function declareDefaultNamespace(namespaceURI : String) : Void;
	
	/**
	* Declare a namespace.
	* <p>
	* The namespace will be declared on the current namespace context.
	* <p>
	* The namespace can be removed by popping the current namespace
	* context, or, if the declaration occured in the root context, by
	* reseting the namespace context.
	* <p>
	* A default namespace can be declared by passing <code>""</code> as
	* the value of the prefix parameter.
	* A namespace may be undeclared by passing <code>null</code> as the
	* value of the namespaceURI parameter.
	* <p>
	* @param prefix the namespace prefix to declare, may not be null.
	* @param namespaceURI the namespace URI to declare, may be null.
	* @throws IllegalArgumentException, if the prefix is null.
	*/
	@:overload public function declareNamespace(prefix : String, namespaceURI : String) : Void;
	
	/**
	* Push a namespace context on the stack.
	*/
	@:overload public function pushContext() : Void;
	
	/**
	* Pop the namespace context off the stack.
	* <p>
	* Namespaces declared within the context (to be popped)
	* will be removed and no longer be in scope.
	*/
	@:overload public function popContext() : Void;
	
	/**
	* Reset namespace contexts.
	* <p>
	* Pop all namespace contexts and reset the root context.
	*/
	@:overload public function resetContexts() : Void;
	
	
}
@:native('com$sun$xml$internal$stream$buffer$stax$NamespaceContexHelper$NamespaceBindingImpl') @:internal extern class NamespaceContexHelper_NamespaceBindingImpl implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding
{
	@:overload public function getPrefix() : String;
	
	@:overload public function getNamespaceURI() : String;
	
	
}
