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
@:internal extern class StartTag extends com.sun.xml.internal.txw2.Content implements com.sun.xml.internal.txw2.NamespaceResolver
{
	@:overload @:public public function new(owner : com.sun.xml.internal.txw2.ContainerElement, uri : String, localName : String) : Void;
	
	@:overload @:public public function new(document : com.sun.xml.internal.txw2.Document, uri : String, localName : String) : Void;
	
	@:overload @:public public function addAttribute(nsUri : String, localName : String, arg : Dynamic) : Void;
	
	/**
	* Declares a new namespace URI on this tag.
	*
	* @param uri
	*      namespace URI to be bound. Can be empty, but must not be null.
	* @param prefix
	*      If non-null and non-empty, this prefix is bound to the URI
	*      on this element. If empty, then the runtime will still try to
	*      use the URI as the default namespace, but it may fail to do so
	*      because of the constraints in the XML.
	*      <p>
	*      If this parameter is null, the runtime will allocate an unique prefix.
	* @param requirePrefix
	*      Used only when the prefix parameter is null. If true, this indicates
	*      that the non-empty prefix must be assigned to this URI. If false,
	*      then this URI might be used as the default namespace.
	*      <p>
	*      Normally you just need to set it to false.
	*/
	@:overload @:public public function addNamespaceDecl(uri : String, prefix : String, requirePrefix : Bool) : com.sun.xml.internal.txw2.NamespaceDecl;
	
	@:overload @:public override public function written() : Void;
	
	@:overload @:public public function getPrefix(nsUri : String) : String;
	
	
}
