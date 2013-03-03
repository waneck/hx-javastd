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
@:internal extern class ContainerElement implements java.lang.reflect.InvocationHandler implements com.sun.xml.internal.txw2.TypedXmlWriter
{
	@:overload @:public public function new(document : com.sun.xml.internal.txw2.Document, parent : com.sun.xml.internal.txw2.ContainerElement, nsUri : String, localName : String) : Void;
	
	@:overload @:public public function getDocument() : com.sun.xml.internal.txw2.Document;
	
	@:overload @:public public function block() : Void;
	
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public public function commit() : Void;
	
	@:overload @:public public function commit(includingAllPredecessors : Bool) : Void;
	
	@:overload @:public public function _attribute(localName : String, value : Dynamic) : Void;
	
	@:overload @:public public function _attribute(nsUri : String, localName : String, value : Dynamic) : Void;
	
	@:overload @:public public function _attribute(attributeName : javax.xml.namespace.QName, value : Dynamic) : Void;
	
	@:overload @:public public function _namespace(uri : String) : Void;
	
	@:overload @:public public function _namespace(uri : String, prefix : String) : Void;
	
	@:overload @:public public function _namespace(uri : String, requirePrefix : Bool) : Void;
	
	@:overload @:public public function _pcdata(value : Dynamic) : Void;
	
	@:overload @:public public function _cdata(value : Dynamic) : Void;
	
	@:overload @:public public function _comment(value : Dynamic) : Void;
	
	@:overload @:public public function _element<T : com.sun.xml.internal.txw2.TypedXmlWriter>(localName : String, contentModel : Class<T>) : T;
	
	@:overload @:public public function _element<T : com.sun.xml.internal.txw2.TypedXmlWriter>(tagName : javax.xml.namespace.QName, contentModel : Class<T>) : T;
	
	@:overload @:public public function _element<T : com.sun.xml.internal.txw2.TypedXmlWriter>(contentModel : Class<T>) : T;
	
	@:overload @:public public function _cast<T : com.sun.xml.internal.txw2.TypedXmlWriter>(facadeType : Class<T>) : T;
	
	@:overload @:public public function _element<T : com.sun.xml.internal.txw2.TypedXmlWriter>(nsUri : String, localName : String, contentModel : Class<T>) : T;
	
	
}
