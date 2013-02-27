package com.sun.xml.internal.fastinfoset.stax.events;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class EndElementEvent extends com.sun.xml.internal.fastinfoset.stax.events.EventBase implements javax.xml.stream.events.EndElement
{
	@:overload public function reset() : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function new(prefix : String, namespaceURI : String, localpart : String) : Void;
	
	@:overload public function new(qname : javax.xml.namespace.QName) : Void;
	
	/**
	* Get the name of this event
	* @return the qualified name of this event
	*/
	@:overload public function getName() : javax.xml.namespace.QName;
	
	@:overload public function setName(qname : javax.xml.namespace.QName) : Void;
	
	/** Returns an Iterator of namespaces that have gone out
	* of scope.  Returns an empty iterator if no namespaces have gone
	* out of scope.
	* @return an Iterator over Namespace interfaces, or an
	* empty iterator
	*/
	@:overload public function getNamespaces() : java.util.Iterator<Dynamic>;
	
	@:overload public function addNamespace(namespace : javax.xml.stream.events.Namespace) : Void;
	
	@:overload public function toString() : String;
	
	
}
