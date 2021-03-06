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
extern interface HTMLIFrameElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Aligns this object (vertically or horizontally)  with respect to its
	* surrounding text. See the  align attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload @:public public function getAlign() : String;
	
	@:overload @:public public function setAlign(align : String) : Void;
	
	/**
	*  Request frame borders. See the  frameborder attribute definition in
	* HTML 4.0.
	*/
	@:overload @:public public function getFrameBorder() : String;
	
	@:overload @:public public function setFrameBorder(frameBorder : String) : Void;
	
	/**
	*  Frame height. See the  height attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getHeight() : String;
	
	@:overload @:public public function setHeight(height : String) : Void;
	
	/**
	*  URI designating a long description of this image or frame. See the
	* longdesc attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getLongDesc() : String;
	
	@:overload @:public public function setLongDesc(longDesc : String) : Void;
	
	/**
	*  Frame margin height, in pixels. See the  marginheight attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getMarginHeight() : String;
	
	@:overload @:public public function setMarginHeight(marginHeight : String) : Void;
	
	/**
	*  Frame margin width, in pixels. See the  marginwidth attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getMarginWidth() : String;
	
	@:overload @:public public function setMarginWidth(marginWidth : String) : Void;
	
	/**
	*  The frame name (object of the <code>target</code> attribute). See the
	* name attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	/**
	*  Specify whether or not the frame should have scrollbars. See the
	* scrolling attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getScrolling() : String;
	
	@:overload @:public public function setScrolling(scrolling : String) : Void;
	
	/**
	*  A URI designating the initial frame contents. See the  src attribute
	* definition in HTML 4.0.
	*/
	@:overload @:public public function getSrc() : String;
	
	@:overload @:public public function setSrc(src : String) : Void;
	
	/**
	*  Frame width. See the  width attribute definition in HTML 4.0.
	*/
	@:overload @:public public function getWidth() : String;
	
	@:overload @:public public function setWidth(width : String) : Void;
	
	/**
	*  The document this frame contains, if there is any and it is available,
	* or <code>null</code> otherwise.
	* @since DOM Level 2
	*/
	@:overload @:public public function getContentDocument() : org.w3c.dom.Document;
	
	
}
