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
*  Script statements. See the  SCRIPT element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLScriptElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  The script content of the element.
	*/
	@:overload public function getText() : String;
	
	@:overload public function setText(text : String) : Void;
	
	/**
	*  Reserved for future use.
	*/
	@:overload public function getHtmlFor() : String;
	
	@:overload public function setHtmlFor(htmlFor : String) : Void;
	
	/**
	*  Reserved for future use.
	*/
	@:overload public function getEvent() : String;
	
	@:overload public function setEvent(event : String) : Void;
	
	/**
	*  The character encoding of the linked resource. See the  charset
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getCharset() : String;
	
	@:overload public function setCharset(charset : String) : Void;
	
	/**
	*  Indicates that the user agent can defer processing of the script.  See
	* the  defer attribute definition in HTML 4.0.
	*/
	@:overload public function getDefer() : Bool;
	
	@:overload public function setDefer(defer : Bool) : Void;
	
	/**
	*  URI designating an external script. See the  src attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getSrc() : String;
	
	@:overload public function setSrc(src : String) : Void;
	
	/**
	*  The content type of the script language. See the  type attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getType() : String;
	
	@:overload public function setType(type : String) : Void;
	
	
}
