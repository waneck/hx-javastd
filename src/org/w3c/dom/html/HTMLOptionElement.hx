package org.w3c.dom.html;
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
* PURPOSE. See W3C License http://www.w3.org/Consortium/Legal/ for more
* details.
*/
/**
*  A selectable choice. See the  OPTION element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLOptionElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Returns the <code>FORM</code> element containing this control. Returns
	* <code>null</code> if this control is not within the context of a form.
	*/
	@:overload @:public public function getForm() : org.w3c.dom.html.HTMLFormElement;
	
	/**
	*  Represents the value of the HTML selected attribute. The value of this
	* attribute does not change if the state of the corresponding form
	* control, in an interactive user agent, changes. Changing
	* <code>defaultSelected</code> , however, resets the state of the form
	* control. See the  selected attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getDefaultSelected() : Bool;
	
	@:overload @:public public function setDefaultSelected(defaultSelected : Bool) : Void;
	
	/**
	*  The text contained within the option element.
	*/
	@:overload @:public public function getText() : String;
	
	/**
	*  The index of this <code>OPTION</code> in its parent <code>SELECT</code>
	*  , starting from 0.
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	*  The control is unavailable in this context. See the  disabled
	* attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getDisabled() : Bool;
	
	@:overload @:public public function setDisabled(disabled : Bool) : Void;
	
	/**
	*  Option label for use in hierarchical menus. See the  label attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getLabel() : String;
	
	@:overload @:public public function setLabel(label : String) : Void;
	
	/**
	*  Represents the current state of the corresponding form control, in an
	* interactive user agent. Changing this attribute changes the state of
	* the form control, but does not change the value of the HTML selected
	* attribute of the element.
	*/
	@:overload @:public public function getSelected() : Bool;
	
	@:overload @:public public function setSelected(selected : Bool) : Void;
	
	/**
	*  The current form control value. See the  value attribute definition in
	* HTML 4.0.
	*/
	@:overload @:public public function getValue() : String;
	
	@:overload @:public public function setValue(value : String) : Void;
	
	
}
