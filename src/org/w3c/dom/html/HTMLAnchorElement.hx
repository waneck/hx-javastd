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
*  The anchor element. See the  A element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLAnchorElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  A single character access key to give access to the form control. See
	* the  accesskey attribute definition in HTML 4.0.
	*/
	@:overload public function getAccessKey() : String;
	
	@:overload public function setAccessKey(accessKey : String) : Void;
	
	/**
	*  The character encoding of the linked resource. See the  charset
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getCharset() : String;
	
	@:overload public function setCharset(charset : String) : Void;
	
	/**
	*  Comma-separated list of lengths, defining an active region geometry.
	* See also <code>shape</code> for the shape of the region. See the
	* coords attribute definition in HTML 4.0.
	*/
	@:overload public function getCoords() : String;
	
	@:overload public function setCoords(coords : String) : Void;
	
	/**
	*  The URI of the linked resource. See the  href attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getHref() : String;
	
	@:overload public function setHref(href : String) : Void;
	
	/**
	*  Language code of the linked resource. See the  hreflang attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getHreflang() : String;
	
	@:overload public function setHreflang(hreflang : String) : Void;
	
	/**
	*  Anchor name. See the  name attribute definition in HTML 4.0.
	*/
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	/**
	*  Forward link type. See the  rel attribute definition in HTML 4.0.
	*/
	@:overload public function getRel() : String;
	
	@:overload public function setRel(rel : String) : Void;
	
	/**
	*  Reverse link type. See the  rev attribute definition in HTML 4.0.
	*/
	@:overload public function getRev() : String;
	
	@:overload public function setRev(rev : String) : Void;
	
	/**
	*  The shape of the active area. The coordinates are given by
	* <code>coords</code> . See the  shape attribute definition in HTML 4.0.
	*/
	@:overload public function getShape() : String;
	
	@:overload public function setShape(shape : String) : Void;
	
	/**
	*  Index that represents the element's position in the tabbing order. See
	* the  tabindex attribute definition in HTML 4.0.
	*/
	@:overload public function getTabIndex() : Int;
	
	@:overload public function setTabIndex(tabIndex : Int) : Void;
	
	/**
	*  Frame to render the resource in. See the  target attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getTarget() : String;
	
	@:overload public function setTarget(target : String) : Void;
	
	/**
	*  Advisory content type. See the  type attribute definition in HTML 4.0.
	*/
	@:overload public function getType() : String;
	
	@:overload public function setType(type : String) : Void;
	
	/**
	*  Removes keyboard focus from this element.
	*/
	@:overload public function blur() : Void;
	
	/**
	*  Gives keyboard focus to this element.
	*/
	@:overload public function focus() : Void;
	
	
}
