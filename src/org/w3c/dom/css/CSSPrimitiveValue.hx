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
extern interface CSSPrimitiveValue extends org.w3c.dom.css.CSSValue
{
	/**
	* The type of the value as defined by the constants specified above.
	*/
	@:overload @:public public function getPrimitiveType() : java.StdTypes.Int16;
	
	/**
	*  A method to set the float value with a specified unit. If the property
	* attached with this value can not accept the specified unit or the
	* float value, the value will be unchanged and a
	* <code>DOMException</code> will be raised.
	* @param unitType  A unit code as defined above. The unit code can only
	*   be a float unit type (i.e. <code>CSS_NUMBER</code>,
	*   <code>CSS_PERCENTAGE</code>, <code>CSS_EMS</code>,
	*   <code>CSS_EXS</code>, <code>CSS_PX</code>, <code>CSS_CM</code>,
	*   <code>CSS_MM</code>, <code>CSS_IN</code>, <code>CSS_PT</code>,
	*   <code>CSS_PC</code>, <code>CSS_DEG</code>, <code>CSS_RAD</code>,
	*   <code>CSS_GRAD</code>, <code>CSS_MS</code>, <code>CSS_S</code>,
	*   <code>CSS_HZ</code>, <code>CSS_KHZ</code>,
	*   <code>CSS_DIMENSION</code>).
	* @param floatValue  The new float value.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the attached property doesn't support
	*   the float value or the unit type.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setFloatValue(unitType : java.StdTypes.Int16, floatValue : Single) : Void;
	
	/**
	*  This method is used to get a float value in a specified unit. If this
	* CSS value doesn't contain a float value or can't be converted into
	* the specified unit, a <code>DOMException</code> is raised.
	* @param unitType  A unit code to get the float value. The unit code can
	*   only be a float unit type (i.e. <code>CSS_NUMBER</code>,
	*   <code>CSS_PERCENTAGE</code>, <code>CSS_EMS</code>,
	*   <code>CSS_EXS</code>, <code>CSS_PX</code>, <code>CSS_CM</code>,
	*   <code>CSS_MM</code>, <code>CSS_IN</code>, <code>CSS_PT</code>,
	*   <code>CSS_PC</code>, <code>CSS_DEG</code>, <code>CSS_RAD</code>,
	*   <code>CSS_GRAD</code>, <code>CSS_MS</code>, <code>CSS_S</code>,
	*   <code>CSS_HZ</code>, <code>CSS_KHZ</code>,
	*   <code>CSS_DIMENSION</code>).
	* @return  The float value in the specified unit.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a float
	*   value or if the float value can't be converted into the specified
	*   unit.
	*/
	@:overload @:public public function getFloatValue(unitType : java.StdTypes.Int16) : Single;
	
	/**
	*  A method to set the string value with the specified unit. If the
	* property attached to this value can't accept the specified unit or
	* the string value, the value will be unchanged and a
	* <code>DOMException</code> will be raised.
	* @param stringType  A string code as defined above. The string code can
	*   only be a string unit type (i.e. <code>CSS_STRING</code>,
	*   <code>CSS_URI</code>, <code>CSS_IDENT</code>, and
	*   <code>CSS_ATTR</code>).
	* @param stringValue  The new string value.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a string
	*   value or if the string value can't be converted into the specified
	*   unit.
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this property is readonly.
	*/
	@:overload @:public public function setStringValue(stringType : java.StdTypes.Int16, stringValue : String) : Void;
	
	/**
	*  This method is used to get the string value. If the CSS value doesn't
	* contain a string value, a <code>DOMException</code> is raised.  Some
	* properties (like 'font-family' or 'voice-family') convert a
	* whitespace separated list of idents to a string.
	* @return  The string value in the current unit. The current
	*   <code>primitiveType</code> can only be a string unit type (i.e.
	*   <code>CSS_STRING</code>, <code>CSS_URI</code>,
	*   <code>CSS_IDENT</code> and <code>CSS_ATTR</code>).
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a string
	*   value.
	*/
	@:overload @:public public function getStringValue() : String;
	
	/**
	*  This method is used to get the Counter value. If this CSS value
	* doesn't contain a counter value, a <code>DOMException</code> is
	* raised. Modification to the corresponding style property can be
	* achieved using the <code>Counter</code> interface.
	* @return The Counter value.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a
	*   Counter value (e.g. this is not <code>CSS_COUNTER</code>).
	*/
	@:overload @:public public function getCounterValue() : org.w3c.dom.css.Counter;
	
	/**
	*  This method is used to get the Rect value. If this CSS value doesn't
	* contain a rect value, a <code>DOMException</code> is raised.
	* Modification to the corresponding style property can be achieved
	* using the <code>Rect</code> interface.
	* @return The Rect value.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the CSS value doesn't contain a Rect
	*   value. (e.g. this is not <code>CSS_RECT</code>).
	*/
	@:overload @:public public function getRectValue() : org.w3c.dom.css.Rect;
	
	/**
	*  This method is used to get the RGB color. If this CSS value doesn't
	* contain a RGB color value, a <code>DOMException</code> is raised.
	* Modification to the corresponding style property can be achieved
	* using the <code>RGBColor</code> interface.
	* @return the RGB color value.
	* @exception DOMException
	*    INVALID_ACCESS_ERR: Raised if the attached property can't return a
	*   RGB color value (e.g. this is not <code>CSS_RGBCOLOR</code>).
	*/
	@:overload @:public public function getRGBColorValue() : org.w3c.dom.css.RGBColor;
	
	
}
