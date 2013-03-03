package com.sun.beans.decoder;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ArrayElementHandler extends com.sun.beans.decoder.NewElementHandler
{
	/**
	* Parses attributes of the element.
	* The following atributes are supported:
	* <dl>
	* <dt>length
	* <dd>the array length
	* <dt>class
	* <dd>the type of object for instantiation
	* <dt>id
	* <dd>the identifier of the variable that is intended to store the result
	* </dl>
	*
	* @param name   the attribute name
	* @param value  the attribute value
	*/
	@:overload @:public override public function addAttribute(name : String, value : String) : Void;
	
	/**
	* Calculates the value of this element
	* if the lentgh attribute is set.
	*/
	@:overload @:public override public function startElement() : Void;
	
	/**
	* Creates an instance of the array.
	*
	* @param type  the base class
	* @param args  the array of arguments
	* @return the value of this element
	*/
	@:overload @:protected private function getValueObject(type : Class<Dynamic>, args : java.NativeArray<Dynamic>) : com.sun.beans.decoder.ValueObject;
	
	
}
