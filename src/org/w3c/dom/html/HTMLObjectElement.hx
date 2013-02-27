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
extern interface HTMLObjectElement extends org.w3c.dom.html.HTMLElement
{
	/**
	*  Returns the <code>FORM</code> element containing this control. Returns
	* <code>null</code> if this control is not within the context of a form.
	*/
	@:overload public function getForm() : org.w3c.dom.html.HTMLFormElement;
	
	/**
	*  Applet class file. See the <code>code</code> attribute for
	* HTMLAppletElement.
	*/
	@:overload public function getCode() : String;
	
	@:overload public function setCode(code : String) : Void;
	
	/**
	*  Aligns this object (vertically or horizontally)  with respect to its
	* surrounding text. See the  align attribute definition in HTML 4.0.
	* This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getAlign() : String;
	
	@:overload public function setAlign(align : String) : Void;
	
	/**
	*  Space-separated list of archives. See the  archive attribute definition
	*  in HTML 4.0.
	*/
	@:overload public function getArchive() : String;
	
	@:overload public function setArchive(archive : String) : Void;
	
	/**
	*  Width of border around the object. See the  border attribute definition
	*  in HTML 4.0. This attribute is deprecated in HTML 4.0.
	*/
	@:overload public function getBorder() : String;
	
	@:overload public function setBorder(border : String) : Void;
	
	/**
	*  Base URI for <code>classid</code> , <code>data</code> , and
	* <code>archive</code> attributes. See the  codebase attribute definition
	*  in HTML 4.0.
	*/
	@:overload public function getCodeBase() : String;
	
	@:overload public function setCodeBase(codeBase : String) : Void;
	
	/**
	*  Content type for data downloaded via <code>classid</code> attribute.
	* See the  codetype attribute definition in HTML 4.0.
	*/
	@:overload public function getCodeType() : String;
	
	@:overload public function setCodeType(codeType : String) : Void;
	
	/**
	*  A URI specifying the location of the object's data.  See the  data
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getData() : String;
	
	@:overload public function setData(data : String) : Void;
	
	/**
	*  Declare (for future reference), but do not instantiate, this object.
	* See the  declare attribute definition in HTML 4.0.
	*/
	@:overload public function getDeclare() : Bool;
	
	@:overload public function setDeclare(declare : Bool) : Void;
	
	/**
	*  Override height. See the  height attribute definition in HTML 4.0.
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
	*  Form control or object name when submitted with a form. See the  name
	* attribute definition in HTML 4.0.
	*/
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	/**
	*  Message to render while loading the object. See the  standby attribute
	* definition in HTML 4.0.
	*/
	@:overload public function getStandby() : String;
	
	@:overload public function setStandby(standby : String) : Void;
	
	/**
	*  Index that represents the element's position in the tabbing order. See
	* the  tabindex attribute definition in HTML 4.0.
	*/
	@:overload public function getTabIndex() : Int;
	
	@:overload public function setTabIndex(tabIndex : Int) : Void;
	
	/**
	*  Content type for data downloaded via <code>data</code> attribute. See
	* the  type attribute definition in HTML 4.0.
	*/
	@:overload public function getType() : String;
	
	@:overload public function setType(type : String) : Void;
	
	/**
	*  Use client-side image map. See the  usemap attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getUseMap() : String;
	
	@:overload public function setUseMap(useMap : String) : Void;
	
	/**
	*  Vertical space above and below this image, applet, or object. See the
	* vspace attribute definition in HTML 4.0. This attribute is deprecated
	* in HTML 4.0.
	*/
	@:overload public function getVspace() : String;
	
	@:overload public function setVspace(vspace : String) : Void;
	
	/**
	*  Override width. See the  width attribute definition in HTML 4.0.
	*/
	@:overload public function getWidth() : String;
	
	@:overload public function setWidth(width : String) : Void;
	
	/**
	*  The document this object contains, if there is any and it is
	* available, or <code>null</code> otherwise.
	* @since DOM Level 2
	*/
	@:overload public function getContentDocument() : org.w3c.dom.Document;
	
	
}
