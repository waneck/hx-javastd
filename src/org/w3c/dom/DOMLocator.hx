package org.w3c.dom;
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
* Copyright (c) 2004 World Wide Web Consortium,
*
* (Massachusetts Institute of Technology, European Research Consortium for
* Informatics and Mathematics, Keio University). All Rights Reserved. This
* work is distributed under the W3C(r) Software License [1] in the hope that
* it will be useful, but WITHOUT ANY WARRANTY; without even the implied
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*
* [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231
*/
/**
* <code>DOMLocator</code> is an interface that describes a location (e.g.
* where an error occurred).
* <p>See also the <a href='http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407'>Document Object Model (DOM) Level 3 Core Specification</a>.
* @since DOM Level 3
*/
extern interface DOMLocator
{
	/**
	* The line number this locator is pointing to, or <code>-1</code> if
	* there is no column number available.
	*/
	@:overload public function getLineNumber() : Int;
	
	/**
	* The column number this locator is pointing to, or <code>-1</code> if
	* there is no column number available.
	*/
	@:overload public function getColumnNumber() : Int;
	
	/**
	* The byte offset into the input source this locator is pointing to or
	* <code>-1</code> if there is no byte offset available.
	*/
	@:overload public function getByteOffset() : Int;
	
	/**
	* The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646], offset into the input source this locator is pointing to or
	* <code>-1</code> if there is no UTF-16 offset available.
	*/
	@:overload public function getUtf16Offset() : Int;
	
	/**
	* The node this locator is pointing to, or <code>null</code> if no node
	* is available.
	*/
	@:overload public function getRelatedNode() : org.w3c.dom.Node;
	
	/**
	* The URI this locator is pointing to, or <code>null</code> if no URI is
	* available.
	*/
	@:overload public function getUri() : String;
	
	
}