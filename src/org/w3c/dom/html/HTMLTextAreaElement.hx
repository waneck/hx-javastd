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
*  Multi-line text field. See the  TEXTAREA element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLTextAreaElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Represents the contents of the element. The value of this attribute
	* does not change if the contents of the corresponding form control, in
	* an interactive user agent, changes. Changing this attribute, however,
	* resets the contents of the form control.
	*/
	@:overload public function getDefaultValue() : String;
	
	@:overload public function setDefaultValue(defaultValue : String) : Void;
	
	/**
	*  Returns the <code>FORM</code> element containing this control. Returns
	* <code>null</code> if this control is not within the context of a form.
	*/
	@:overload public function getForm() : org.w3c.dom.html.HTMLFormElement;
	
	/**
	*  A single character access key to give access to the form control. See
	* the  accesskey attribute definition in HTML 4.0.
	*/
	@:overload public function getAccessKey() : String;
	
	@:overload public function setAccessKey(accessKey : String) : Void;
	
	/**
	*  Width of control (in characters). See the  cols attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getCols() : Int;
	
	@:overload public function setCols(cols : Int) : Void;
	
	/**
	*  The control is unavailable in this context. See the  disabled
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getDisabled() : Bool;
	
	@:overload public function setDisabled(disabled : Bool) : Void;
	
	/**
	*  Form control or object name when submitted with a form. See the  name
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	/**
	*  This control is read-only. See the  readonly attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getReadOnly() : Bool;
	
	@:overload public function setReadOnly(readOnly : Bool) : Void;
	
	/**
	*  Number of text rows. See the  rows attribute definition in HTML 4.0.
	*/
	@:overload public function getRows() : Int;
	
	@:overload public function setRows(rows : Int) : Void;
	
	/**
	*  Index that represents the element's position in the tabbing order. See
	* the  tabindex attribute definition in HTML 4.0.
	*/
	@:overload public function getTabIndex() : Int;
	
	@:overload public function setTabIndex(tabIndex : Int) : Void;
	
	/**
	*  The type of this form control. This the string "textarea".
	*/
	@:overload public function getType() : String;
	
	/**
	*  Represents the current contents of the corresponding form control, in
	* an interactive user agent. Changing this attribute changes the
	* contents of the form control, but does not change the contents of the
	* element. If the entirety of the data can not fit into a single
	* <code>DOMString</code> , the implementation may truncate the data.
	*/
	@:overload public function getValue() : String;
	
	@:overload public function setValue(value : String) : Void;
	
	/**
	*  Removes keyboard focus from this element.
	*/
	@:overload public function blur() : Void;
	
	/**
	*  Gives keyboard focus to this element.
	*/
	@:overload public function focus() : Void;
	
	/**
	*  Select the contents of the <code>TEXTAREA</code> .
	*/
	@:overload public function select() : Void;
	
	
}
