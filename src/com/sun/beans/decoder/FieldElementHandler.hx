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
@:internal extern class FieldElementHandler extends com.sun.beans.decoder.AccessorElementHandler
{
	/**
	* Parses attributes of the element.
	* The following atributes are supported:
	* <dl>
	* <dt>name
	* <dd>the field name
	* <dt>class
	* <dd>the type is used for static fields only
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
	* Returns the context of the field.
	* The context of the static field is the class object.
	* The context of the non-static field is the value of the parent element.
	*
	* @return the context of the field
	*/
	@:overload @:protected override private function getContextBean() : Dynamic;
	
	/**
	* Returns the value of the field with specified {@code name}.
	*
	* @param name  the name of the field
	* @return the value of the specified field
	*/
	@:overload @:protected override private function getValue(name : String) : Dynamic;
	
	/**
	* Sets the new value for the field with specified {@code name}.
	*
	* @param name   the name of the field
	* @param value  the new value for the specified field
	*/
	@:overload @:protected override private function setValue(name : String, value : Dynamic) : Void;
	
	
}
