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
*  An embedded Java applet. See the  APPLET element definition in HTML 4.0.
* This element is deprecated in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLAppletElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Aligns this object (vertically or horizontally)  with respect to its
	* surrounding text. See the  align attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getAlign() : String;
	
	@:overload public function setAlign(align : String) : Void;
	
	/**
	*  Alternate text for user agents not rendering the normal content of
	* this element. See the  alt attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getAlt() : String;
	
	@:overload public function setAlt(alt : String) : Void;
	
	/**
	*  Comma-separated archive list. See the  archive attribute definition in
	* HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getArchive() : String;
	
	@:overload public function setArchive(archive : String) : Void;
	
	/**
	*  Applet class file.  See the  code attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getCode() : String;
	
	@:overload public function setCode(code : String) : Void;
	
	/**
	*  Optional base URI for applet. See the  codebase attribute definition
	* in HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getCodeBase() : String;
	
	@:overload public function setCodeBase(codeBase : String) : Void;
	
	/**
	*  Override height. See the  height attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getHeight() : String;
	
	@:overload public function setHeight(height : String) : Void;
	
	/**
	*  Horizontal space to the left and right of this image, applet, or
	* object. See the  hspace attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getHspace() : String;
	
	@:overload public function setHspace(hspace : String) : Void;
	
	/**
	*  The name of the applet. See the  name attribute definition in HTML
	* 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	/**
	*  Serialized applet file. See the  object attribute definition in HTML
	* 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getObject() : String;
	
	@:overload public function setObject(object : String) : Void;
	
	/**
	*  Vertical space above and below this image, applet, or object. See the
	* vspace attribute definition in HTML 4.0. This attribute is deprecated
	* in HTML 4.0.
	*/
	@:overload public function getVspace() : String;
	
	@:overload public function setVspace(vspace : String) : Void;
	
	/**
	*  Override width. See the  width attribute definition in HTML 4.0. This
	* attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getWidth() : String;
	
	@:overload public function setWidth(width : String) : Void;
	
	
}
