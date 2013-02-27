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
*  The <code>FORM</code> element encompasses behavior similar to a collection
* and an element. It provides direct access to the contained input elements
* as well as the attributes of the form element. See the  FORM element
* definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLFormElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Returns a collection of all control elements in the form.
	*/
	@:overload public function getElements() : org.w3c.dom.html.HTMLCollection;
	
	/**
	*  The number of form controls in the form.
	*/
	@:overload public function getLength() : Int;
	
	/**
	*  Names the form.
	*/
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	/**
	*  List of character sets supported by the server. See the
	* accept-charset attribute definition in HTML 4.0.
	*/
	@:overload public function getAcceptCharset() : String;
	
	@:overload public function setAcceptCharset(acceptCharset : String) : Void;
	
	/**
	*  Server-side form handler. See the  action attribute definition in HTML
	* 4.0.
	*/
	@:overload public function getAction() : String;
	
	@:overload public function setAction(action : String) : Void;
	
	/**
	*  The content type of the submitted form,  generally
	* "application/x-www-form-urlencoded".  See the  enctype attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getEnctype() : String;
	
	@:overload public function setEnctype(enctype : String) : Void;
	
	/**
	*  HTTP method used to submit form. See the  method attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getMethod() : String;
	
	@:overload public function setMethod(method : String) : Void;
	
	/**
	*  Frame to render the resource in. See the  target attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getTarget() : String;
	
	@:overload public function setTarget(target : String) : Void;
	
	/**
	*  Submits the form. It performs the same action as a  submit button.
	*/
	@:overload public function submit() : Void;
	
	/**
	*  Restores a form element's default values. It performs  the same action
	* as a reset button.
	*/
	@:overload public function reset() : Void;
	
	
}
