package javax.swing.text;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ElementIterator implements java.lang.Cloneable
{
	/**
	* Creates a new ElementIterator. The
	* root element is taken to get the
	* default root element of the document.
	*
	* @param document a Document.
	*/
	@:overload public function new(document : javax.swing.text.Document) : Void;
	
	/**
	* Creates a new ElementIterator.
	*
	* @param root the root Element.
	*/
	@:overload public function new(root : javax.swing.text.Element) : Void;
	
	/**
	* Clones the ElementIterator.
	*
	* @return a cloned ElementIterator Object.
	*/
	@:overload @:synchronized public function clone() : Dynamic;
	
	/**
	* Fetches the first element.
	*
	* @return an Element.
	*/
	@:overload public function first() : javax.swing.text.Element;
	
	/**
	* Fetches the current depth of element tree.
	*
	* @return the depth.
	*/
	@:overload public function depth() : Int;
	
	/**
	* Fetches the current Element.
	*
	* @return element on top of the stack or
	*          <code>null</code> if the root element is <code>null</code>
	*/
	@:overload public function current() : javax.swing.text.Element;
	
	/**
	* Fetches the next Element. The strategy
	* used to locate the next element is
	* a depth-first search.
	*
	* @return the next element or <code>null</code>
	*          at the end of the list.
	*/
	@:overload public function next() : javax.swing.text.Element;
	
	/**
	* Fetches the previous Element. If howver the current
	* element is the last element, or the current element
	* is null, then null is returned.
	*
	* @return previous <code>Element</code> if available
	*
	*/
	@:overload public function previous() : javax.swing.text.Element;
	
	
}
/**
* The StackItem class stores the element
* as well as a child index.  If the
* index is -1, then the element represented
* on the stack is the element itself.
* Otherwise, the index functions as as index
* into the vector of children of the element.
* In this case, the item on the stack
* represents the "index"th child of the element
*
*/
@:native('javax$swing$text$ElementIterator$StackItem') @:internal extern class ElementIterator_StackItem implements java.lang.Cloneable
{
	@:overload private function clone() : Dynamic;
	
	
}
