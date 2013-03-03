package com.sun.beans.decoder;
/*
* Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PropertyElementHandler extends com.sun.beans.decoder.AccessorElementHandler
{
	/**
	* Parses attributes of the element.
	* The following atributes are supported:
	* <dl>
	* <dt>name
	* <dd>the property name
	* <dt>index
	* <dd>the property index
	* <dt>id
	* <dd>the identifier of the variable that is intended to store the result
	* </dl>
	*
	* @param name   the attribute name
	* @param value  the attribute value
	*/
	@:overload @:public override public function addAttribute(name : String, value : String) : Void;
	
	/**
	* Tests whether the value of this element can be used
	* as an argument of the element that contained in this one.
	*
	* @return {@code true} if the value of this element should be used
	*         as an argument of the element that contained in this one,
	*         {@code false} otherwise
	*/
	@:overload @:protected override private function isArgument() : Bool;
	
	/**
	* Returns the value of the property with specified {@code name}.
	*
	* @param name  the name of the property
	* @return the value of the specified property
	*/
	@:overload @:protected override private function getValue(name : String) : Dynamic;
	
	/**
	* Sets the new value for the property with specified {@code name}.
	*
	* @param name   the name of the property
	* @param value  the new value for the specified property
	*/
	@:overload @:protected override private function setValue(name : String, value : Dynamic) : Void;
	
	
}
