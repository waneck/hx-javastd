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
extern interface HTMLElement extends org.w3c.dom.Element
{
	/**
	*  The element's identifier. See the  id attribute definition in HTML 4.0.
	*/
	@:overload public function getId() : String;
	
	@:overload public function setId(id : String) : Void;
	
	/**
	*  The element's advisory title. See the  title attribute definition in
	* HTML 4.0.
	*/
	@:overload public function getTitle() : String;
	
	@:overload public function setTitle(title : String) : Void;
	
	/**
	*  Language code defined in RFC 1766. See the  lang attribute definition
	* in HTML 4.0.
	*/
	@:overload public function getLang() : String;
	
	@:overload public function setLang(lang : String) : Void;
	
	/**
	*  Specifies the base direction of directionally neutral text and the
	* directionality of tables. See the  dir attribute definition in HTML
	* 4.0.
	*/
	@:overload public function getDir() : String;
	
	@:overload public function setDir(dir : String) : Void;
	
	/**
	*  The class attribute of the element. This attribute has been renamed
	* due to conflicts with the "class" keyword exposed by many languages.
	* See the  class attribute definition in HTML 4.0.
	*/
	@:overload public function getClassName() : String;
	
	@:overload public function setClassName(className : String) : Void;
	
	
}
