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
*  Embedded image. See the  IMG element definition in HTML 4.0.
* <p>See also the <a href='http://www.w3.org/TR/2000/CR-DOM-Level-2-20000510'>Document Object Model (DOM) Level 2 Specification</a>.
*/
extern interface HTMLImageElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  URI designating the source of this image, for low-resolution output.
	*/
	@:overload @:public public function getLowSrc() : String;
	
	@:overload @:public public function setLowSrc(lowSrc : String) : Void;
	
	/**
	*  The name of the element (for backwards compatibility).
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	/**
	*  Aligns this object (vertically or horizontally)  with respect to its
	* surrounding text. See the  align attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getAlign() : String;
	
	@:overload @:public public function setAlign(align : String) : Void;
	
	/**
	*  Alternate text for user agents not rendering the normal content of
	* this element. See the  alt attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getAlt() : String;
	
	@:overload @:public public function setAlt(alt : String) : Void;
	
	/**
	*  Width of border around image. See the  border attribute definition in
	* HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getBorder() : String;
	
	@:overload @:public public function setBorder(border : String) : Void;
	
	/**
	*  Override height. See the  height attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getHeight() : String;
	
	@:overload @:public public function setHeight(height : String) : Void;
	
	/**
	*  Horizontal space to the left and right of this image. See the  hspace
	* attribute definition in HTML 4.0. This attribute is deprecated in HTML
	* 4.0.
	*/
	@:overload @:public public function getHspace() : String;
	
	@:overload @:public public function setHspace(hspace : String) : Void;
	
	/**
	*  Use server-side image map. See the  ismap attribute definition in HTML
	* 4.0.
	*/
	@:overload @:public public function getIsMap() : Bool;
	
	@:overload @:public public function setIsMap(isMap : Bool) : Void;
	
	/**
	*  URI designating a long description of this image or frame. See the
	* longdesc attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getLongDesc() : String;
	
	@:overload @:public public function setLongDesc(longDesc : String) : Void;
	
	/**
	*  URI designating the source of this image. See the  src attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getSrc() : String;
	
	@:overload @:public public function setSrc(src : String) : Void;
	
	/**
	*  Use client-side image map. See the  usemap attribute definition in
	* HTML 4.0.
	*/
	@:overload @:public public function getUseMap() : String;
	
	@:overload @:public public function setUseMap(useMap : String) : Void;
	
	/**
	*  Vertical space above and below this image. See the  vspace attribute
	* definition in HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getVspace() : String;
	
	@:overload @:public public function setVspace(vspace : String) : Void;
	
	/**
	*  Override width. See the  width attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getWidth() : String;
	
	@:overload @:public public function setWidth(width : String) : Void;
	
	
}
