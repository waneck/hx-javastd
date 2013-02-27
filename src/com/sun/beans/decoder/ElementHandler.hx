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
/**
* The base class for element handlers.
*
* @since 1.7
*
* @author Sergey A. Malenkov
*
* @see DocumentHandler
*/
@:require(java7) extern class ElementHandler
{
	/**
	* Returns the document handler that creates this element handler.
	*
	* @return the owner document handler
	*/
	@:overload @:final public function getOwner() : com.sun.beans.decoder.DocumentHandler;
	
	/**
	* Returns the element handler that contains this one.
	*
	* @return the parent element handler
	*/
	@:overload @:final public function getParent() : ElementHandler;
	
	/**
	* Returns the value of the variable with specified identifier.
	*
	* @param id  the identifier
	* @return the value of the variable
	*/
	@:overload @:final private function getVariable(id : String) : Dynamic;
	
	/**
	* Returns the value of the parent element.
	*
	* @return the value of the parent element
	*/
	@:overload private function getContextBean() : Dynamic;
	
	/**
	* Parses attributes of the element.
	* By default, the following atribute is supported:
	* <dl>
	* <dt>id
	* <dd>the identifier of the variable that is intended to store the result
	* </dl>
	*
	* @param name   the attribute name
	* @param value  the attribute value
	*/
	@:overload public function addAttribute(name : String, value : String) : Void;
	
	/**
	* This method is called before parsing of the element's body.
	* All attributes are parsed at this point.
	* By default, do nothing.
	*/
	@:overload public function startElement() : Void;
	
	/**
	* This method is called after parsing of the element's body.
	* By default, it calculates the value of this element.
	* The following tasks are executing for any non-void value:
	* <ol>
	* <li>If the {@code id} attribute is set
	* the value of the variable with the specified identifier
	* is set to the value of this element.</li>
	* <li>This element is used as an argument of parent element if it is possible.</li>
	* </ol>
	*
	* @see #isArgument
	*/
	@:overload public function endElement() : Void;
	
	/**
	* Adds the character that contained in this element.
	* By default, only whitespaces are acceptable.
	*
	* @param ch  the character
	*/
	@:overload public function addCharacter(ch : java.StdTypes.Char16) : Void;
	
	/**
	* Adds the argument that is used to calculate the value of this element.
	* By default, no arguments are acceptable.
	*
	* @param argument  the value of the element that contained in this one
	*/
	@:overload private function addArgument(argument : Dynamic) : Void;
	
	/**
	* Tests whether the value of this element can be used
	* as an argument of the element that contained in this one.
	*
	* @return {@code true} if the value of this element can be used
	*         as an argument of the element that contained in this one,
	*         {@code false} otherwise
	*/
	@:overload private function isArgument() : Bool;
	
	/**
	* Returns the value of this element.
	*
	* @return the value of this element
	*/
	@:overload @:abstract private function getValueObject() : com.sun.beans.decoder.ValueObject;
	
	
}
