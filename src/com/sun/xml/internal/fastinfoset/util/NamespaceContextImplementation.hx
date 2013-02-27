package com.sun.xml.internal.fastinfoset.util;
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
extern class NamespaceContextImplementation implements javax.xml.namespace.NamespaceContext
{
	@:overload public function new() : Void;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function getNonDefaultPrefix(namespaceURI : String) : String;
	
	@:overload public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	@:overload public function getPrefix(index : Int) : String;
	
	@:overload public function getNamespaceURI(index : Int) : String;
	
	@:overload public function getCurrentContextStartIndex() : Int;
	
	@:overload public function getCurrentContextEndIndex() : Int;
	
	@:overload public function isCurrentContextEmpty() : Bool;
	
	@:overload public function declarePrefix(prefix : String, namespaceURI : String) : Void;
	
	@:overload public function pushContext() : Void;
	
	@:overload public function popContext() : Void;
	
	@:overload public function reset() : Void;
	
	
}
