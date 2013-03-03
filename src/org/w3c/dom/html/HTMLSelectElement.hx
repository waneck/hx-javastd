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
extern interface HTMLSelectElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  The type of this form control. This is the string "select-multiple"
	* when the multiple attribute is <code>true</code> and the string
	* "select-one" when <code>false</code> .
	*/
	@:overload @:public public function getType() : String;
	
	/**
	*  The ordinal index of the selected option, starting from 0. The value
	* -1 is returned if no element is selected. If multiple options are
	* selected, the index of the first selected option is returned.
	*/
	@:overload @:public public function getSelectedIndex() : Int;
	
	@:overload @:public public function setSelectedIndex(selectedIndex : Int) : Void;
	
	/**
	*  The current form control value.
	*/
	@:overload @:public public function getValue() : String;
	
	@:overload @:public public function setValue(value : String) : Void;
	
	/**
	*  The number of options in this <code>SELECT</code> .
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	*  Returns the <code>FORM</code> element containing this control. Returns
	* <code>null</code> if this control is not within the context of a form.
	*/
	@:overload @:public public function getForm() : org.w3c.dom.html.HTMLFormElement;
	
	/**
	*  The collection of <code>OPTION</code> elements contained by this
	* element.
	*/
	@:overload @:public public function getOptions() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  The control is unavailable in this context. See the  disabled
	* attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getDisabled() : Bool;
	
	@:overload @:public public function setDisabled(disabled : Bool) : Void;
	
	/**
	*  If true, multiple <code>OPTION</code> elements may  be selected in
	* this <code>SELECT</code> . See the  multiple attribute definition in
	* HTML 4.0.
	*/
	@:overload @:public public function getMultiple() : Bool;
	
	@:overload @:public public function setMultiple(multiple : Bool) : Void;
	
	/**
	*  Form control or object name when submitted with a form. See the  name
	* attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	/**
	*  Number of visible rows. See the  size attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function setSize(size : Int) : Void;
	
	/**
	*  Index that represents the element's position in the tabbing order. See
	* the  tabindex attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getTabIndex() : Int;
	
	@:overload @:public public function setTabIndex(tabIndex : Int) : Void;
	
	/**
	*  Add a new element to the collection of <code>OPTION</code> elements
	* for this <code>SELECT</code> . This method is the equivalent of the
	* <code>appendChild</code> method of the <code>Node</code> interface if
	* the <code>before</code> parameter is <code>null</code> . It is
	* equivalent to the <code>insertBefore</code> method on the parent of
	* <code>before</code> in all other cases.
	* @param element  The element to add.
	* @param before  The element to insert before, or <code>null</code> for
	*   the tail of the list.
	* @exception DOMException
	*    NOT_FOUND_ERR: Raised if <code>before</code> is not a descendant of
	*   the <code>SELECT</code> element.
	*/
	@:overload @:public public function add(element : org.w3c.dom.html.HTMLElement, before : org.w3c.dom.html.HTMLElement) : Void;
	
	/**
	*  Remove an element from the collection of <code>OPTION</code> elements
	* for this <code>SELECT</code> . Does nothing if no element has the given
	*  index.
	* @param index  The index of the item to remove, starting from 0.
	*/
	@:overload @:public public function remove(index : Int) : Void;
	
	/**
	*  Removes keyboard focus from this element.
	*/
	@:overload @:public public function blur() : Void;
	
	/**
	*  Gives keyboard focus to this element.
	*/
	@:overload @:public public function focus() : Void;
	
	
}
