package org.w3c.dom.stylesheets;
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
* PURPOSE.
* See W3C License http://www.w3.org/Consortium/Legal/ for more details.
*/
extern interface StyleSheet
{
	/**
	*  This specifies the style sheet language for this style sheet. The
	* style sheet language is specified as a content type (e.g.
	* "text/css"). The content type is often specified in the
	* <code>ownerNode</code>. Also see the type attribute definition for
	* the <code>LINK</code> element in HTML 4.0, and the type
	* pseudo-attribute for the XML style sheet processing instruction.
	*/
	@:overload public function getType() : String;
	
	/**
	*  <code>false</code> if the style sheet is applied to the document.
	* <code>true</code> if it is not. Modifying this attribute may cause a
	* new resolution of style for the document. A stylesheet only applies
	* if both an appropriate medium definition is present and the disabled
	* attribute is false. So, if the media doesn't apply to the current
	* user agent, the <code>disabled</code> attribute is ignored.
	*/
	@:overload public function getDisabled() : Bool;
	
	/**
	*  <code>false</code> if the style sheet is applied to the document.
	* <code>true</code> if it is not. Modifying this attribute may cause a
	* new resolution of style for the document. A stylesheet only applies
	* if both an appropriate medium definition is present and the disabled
	* attribute is false. So, if the media doesn't apply to the current
	* user agent, the <code>disabled</code> attribute is ignored.
	*/
	@:overload public function setDisabled(disabled : Bool) : Void;
	
	/**
	*  The node that associates this style sheet with the document. For HTML,
	* this may be the corresponding <code>LINK</code> or <code>STYLE</code>
	* element. For XML, it may be the linking processing instruction. For
	* style sheets that are included by other style sheets, the value of
	* this attribute is <code>null</code>.
	*/
	@:overload public function getOwnerNode() : org.w3c.dom.Node;
	
	/**
	*  For style sheet languages that support the concept of style sheet
	* inclusion, this attribute represents the including style sheet, if
	* one exists. If the style sheet is a top-level style sheet, or the
	* style sheet language does not support inclusion, the value of this
	* attribute is <code>null</code>.
	*/
	@:overload public function getParentStyleSheet() : StyleSheet;
	
	/**
	*  If the style sheet is a linked style sheet, the value of its attribute
	* is its location. For inline style sheets, the value of this attribute
	* is <code>null</code>. See the href attribute definition for the
	* <code>LINK</code> element in HTML 4.0, and the href pseudo-attribute
	* for the XML style sheet processing instruction.
	*/
	@:overload public function getHref() : String;
	
	/**
	*  The advisory title. The title is often specified in the
	* <code>ownerNode</code>. See the title attribute definition for the
	* <code>LINK</code> element in HTML 4.0, and the title pseudo-attribute
	* for the XML style sheet processing instruction.
	*/
	@:overload public function getTitle() : String;
	
	/**
	*  The intended destination media for style information. The media is
	* often specified in the <code>ownerNode</code>. If no media has been
	* specified, the <code>MediaList</code> will be empty. See the media
	* attribute definition for the <code>LINK</code> element in HTML 4.0,
	* and the media pseudo-attribute for the XML style sheet processing
	* instruction . Modifying the media list may cause a change to the
	* attribute <code>disabled</code>.
	*/
	@:overload public function getMedia() : org.w3c.dom.stylesheets.MediaList;
	
	
}
