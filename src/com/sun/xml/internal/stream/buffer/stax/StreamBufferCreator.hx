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
@:internal extern class StreamBufferCreator extends com.sun.xml.internal.stream.buffer.AbstractCreator
{
	@:protected private var attributeValuePrefixes : java.util.List<String>;
	
	@:overload @:protected private function storeQualifiedName(item : Int, prefix : String, uri : String, localName : String) : Void;
	
	@:overload @:protected @:final private function storeNamespaceAttribute(prefix : String, uri : String) : Void;
	
	@:overload @:protected @:final private function storeAttribute(prefix : String, uri : String, localName : String, type : String, value : String) : Void;
	
	@:overload @:public @:final public function getAttributeValuePrefixes() : java.util.List<Dynamic>;
	
	@:overload @:protected @:final private function storeProcessingInstruction(target : String, data : String) : Void;
	
	@:overload @:public @:final public function isCheckAttributeValue() : Bool;
	
	@:overload @:public @:final public function setCheckAttributeValue(value : Bool) : Void;
	
	
}
