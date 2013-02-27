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
extern interface HTMLCollection
{
	/**
	*  This attribute specifies the length or  size of the list.
	*/
	@:overload public function getLength() : Int;
	
	/**
	*  This method retrieves a node specified by ordinal index. Nodes are
	* numbered in tree order (depth-first traversal order).
	* @param index  The index of the node to be fetched. The index origin is
	*   0.
	* @return  The <code>Node</code> at the corresponding position upon
	*   success. A value of <code>null</code> is returned if the index is
	*   out of range.
	*/
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	*  This method retrieves a <code>Node</code> using a name. It first
	* searches for a <code>Node</code> with a matching <code>id</code>
	* attribute. If it doesn't find one, it then searches for a
	* <code>Node</code> with a matching <code>name</code> attribute, but
	* only on those elements that are allowed a name attribute.
	* @param name  The name of the <code>Node</code> to be fetched.
	* @return  The <code>Node</code> with a <code>name</code> or
	*   <code>id</code> attribute whose value corresponds to the specified
	*   string. Upon failure (e.g., no node with this name exists), returns
	*   <code>null</code> .
	*/
	@:overload public function namedItem(name : String) : org.w3c.dom.Node;
	
	
}