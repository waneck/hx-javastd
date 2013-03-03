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
@:internal extern class ObjectElementHandler extends com.sun.beans.decoder.NewElementHandler
{
	/**
	* Parses attributes of the element.
	* The following atributes are supported:
	* <dl>
	* <dt>class
	* <dd>the type is used for static methods and fields
	* <dt>method
	* <dd>the method name
	* <dt>property
	* <dd>the property name
	* <dt>index
	* <dd>the property index
	* <dt>field
	* <dd>the field name
	* <dt>idref
	* <dd>the identifier to refer to the variable
	* <dt>id
	* <dd>the identifier of the variable that is intended to store the result
	* </dl>
	*
	* @param name   the attribute name
	* @param value  the attribute value
	*/
	@:overload @:public @:final override public function addAttribute(name : String, value : String) : Void;
	
	/**
	* Calculates the value of this element
	* if the field attribute or the idref attribute is set.
	*/
	@:overload @:public @:final override public function startElement() : Void;
	
	/**
	* Tests whether the value of this element can be used
	* as an argument of the element that contained in this one.
	*
	* @return {@code true} if the value of this element can be used
	*         as an argument of the element that contained in this one,
	*         {@code false} otherwise
	*/
	@:overload @:protected override private function isArgument() : Bool;
	
	/**
	* Creates the value of this element.
	*
	* @param type  the base class
	* @param args  the array of arguments
	* @return the value of this element
	* @throws Exception if calculation is failed
	*/
	@:overload @:protected @:final private function getValueObject(type : Class<Dynamic>, args : java.NativeArray<Dynamic>) : com.sun.beans.decoder.ValueObject;
	
	
}
