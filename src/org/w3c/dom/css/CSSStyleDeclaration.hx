package org.w3c.dom.css;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file and, per its terms, should not be removed:
*
* Copyright (c) 2000 World Wide Web Consortium,
* (Massachusetts Institute of Technology, Institut National de
* Recherche en Informatique et en Automatique, Keio University). All
* Rights Reserved. This program is distributed under the W3C's Software
* Intellectual Property License. This program is distributed in the
* hope that it will be useful, but WITHOUT ANY WARRANTY; without even
* the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface CSSStyleDeclaration
{
	/**
	*  The parsable textual representation of the declaration block
	* (excluding the surrounding curly braces). Setting this attribute will
	* result in the parsing of the new value and resetting of all the
	* properties in the declaration block including the removal or addition
	* of properties.
	*/
	@:overload @:public public function getCssText() : String;
	
	/**
	*  The parsable textual representation of the declaration block
	* (excluding the surrounding curly braces). Setting this attribute will
	* result in the parsing of the new value and resetting of all the
	* properties in the declaration block including the removal or addition
	* of properties.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the specified CSS string value has a syntax
	*   error and is unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration is
	*   readonly or a property is readonly.
	*/
	@:overload @:public public function setCssText(cssText : String) : Void;
	
	/**
	*  Used to retrieve the value of a CSS property if it has been explicitly
	* set within this declaration block.
	* @param propertyName  The name of the CSS property. See the CSS
	*   property index.
	* @return  Returns the value of the property if it has been explicitly
	*   set for this declaration block. Returns the empty string if the
	*   property has not been set.
	*/
	@:overload @:public public function getPropertyValue(propertyName : String) : String;
	
	/**
	*  Used to retrieve the object representation of the value of a CSS
	* property if it has been explicitly set within this declaration block.
	* This method returns <code>null</code> if the property is a shorthand
	* property. Shorthand property values can only be accessed and modified
	* as strings, using the <code>getPropertyValue</code> and
	* <code>setProperty</code> methods.
	* @param propertyName  The name of the CSS property. See the CSS
	*   property index.
	* @return  Returns the value of the property if it has been explicitly
	*   set for this declaration block. Returns <code>null</code> if the
	*   property has not been set.
	*/
	@:overload @:public public function getPropertyCSSValue(propertyName : String) : org.w3c.dom.css.CSSValue;
	
	/**
	*  Used to remove a CSS property if it has been explicitly set within
	* this declaration block.
	* @param propertyName  The name of the CSS property. See the CSS
	*   property index.
	* @return  Returns the value of the property if it has been explicitly
	*   set for this declaration block. Returns the empty string if the
	*   property has not been set or the property name does not correspond
	*   to a known CSS property.
	* @exception DOMException
	*   NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration is readonly
	*   or the property is readonly.
	*/
	@:overload @:public public function removeProperty(propertyName : String) : String;
	
	/**
	*  Used to retrieve the priority of a CSS property (e.g. the
	* <code>"important"</code> qualifier) if the priority has been
	* explicitly set in this declaration block.
	* @param propertyName  The name of the CSS property. See the CSS
	*   property index.
	* @return  A string representing the priority (e.g.
	*   <code>"important"</code>) if the property has been explicitly set
	*   in this declaration block and has a priority specified. The empty
	*   string otherwise.
	*/
	@:overload @:public public function getPropertyPriority(propertyName : String) : String;
	
	/**
	*  Used to set a property value and priority within this declaration
	* block. <code>setProperty</code> permits to modify a property or add a
	* new one in the declaration block. Any call to this method may modify
	* the order of properties in the <code>item</code> method.
	* @param propertyName  The name of the CSS property. See the CSS
	*   property index.
	* @param value  The new value of the property.
	* @param priority  The new priority of the property (e.g.
	*   <code>"important"</code>) or the empty string if none.
	* @exception DOMException
	*   SYNTAX_ERR: Raised if the specified value has a syntax error and is
	*   unparsable.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this declaration is
	*   readonly or the property is readonly.
	*/
	@:overload @:public public function setProperty(propertyName : String, value : String, priority : String) : Void;
	
	/**
	*  The number of properties that have been explicitly set in this
	* declaration block. The range of valid indices is 0 to length-1
	* inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	*  Used to retrieve the properties that have been explicitly set in this
	* declaration block. The order of the properties retrieved using this
	* method does not have to be the order in which they were set. This
	* method can be used to iterate over all properties in this declaration
	* block.
	* @param index  Index of the property name to retrieve.
	* @return  The name of the property at this ordinal position. The empty
	*   string if no property exists at this position.
	*/
	@:overload @:public public function item(index : Int) : String;
	
	/**
	*  The CSS rule that contains this declaration block or <code>null</code>
	* if this <code>CSSStyleDeclaration</code> is not attached to a
	* <code>CSSRule</code>.
	*/
	@:overload @:public public function getParentRule() : org.w3c.dom.css.CSSRule;
	
	
}
