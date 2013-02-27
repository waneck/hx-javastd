package org.w3c.dom.css;
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
extern interface CSSImportRule extends org.w3c.dom.css.CSSRule
{
	/**
	*  The location of the style sheet to be imported. The attribute will not
	* contain the <code>"url(...)"</code> specifier around the URI.
	*/
	@:overload public function getHref() : String;
	
	/**
	*  A list of media types for which this style sheet may be used.
	*/
	@:overload public function getMedia() : org.w3c.dom.stylesheets.MediaList;
	
	/**
	* The style sheet referred to by this rule, if it has been loaded. The
	* value of this attribute is <code>null</code> if the style sheet has
	* not yet been loaded or if it will not be loaded (e.g. if the style
	* sheet is for a media type not supported by the user agent).
	*/
	@:overload public function getStyleSheet() : org.w3c.dom.css.CSSStyleSheet;
	
	
}
