package javax.swing.text;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
/**
* Interface to describe a structural piece of a document.  It
* is intended to capture the spirit of an SGML element.
*
* @author  Timothy Prinzing
*/
extern interface Element
{
	/**
	* Fetches the document associated with this element.
	*
	* @return the document
	*/
	@:overload @:public public function getDocument() : javax.swing.text.Document;
	
	/**
	* Fetches the parent element.  If the element is a root level
	* element returns <code>null</code>.
	*
	* @return the parent element
	*/
	@:overload @:public public function getParentElement() : javax.swing.text.Element;
	
	/**
	* Fetches the name of the element.  If the element is used to
	* represent some type of structure, this would be the type
	* name.
	*
	* @return the element name
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Fetches the collection of attributes this element contains.
	*
	* @return the attributes for the element
	*/
	@:overload @:public public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Fetches the offset from the beginning of the document
	* that this element begins at.  If this element has
	* children, this will be the offset of the first child.
	* As a document position, there is an implied forward bias.
	*
	* @return the starting offset >= 0 and < getEndOffset();
	* @see Document
	* @see AbstractDocument
	*/
	@:overload @:public public function getStartOffset() : Int;
	
	/**
	* Fetches the offset from the beginning of the document
	* that this element ends at.  If this element has
	* children, this will be the end offset of the last child.
	* As a document position, there is an implied backward bias.
	* <p>
	* All the default <code>Document</code> implementations
	* descend from <code>AbstractDocument</code>.
	* <code>AbstractDocument</code> models an implied break at the end of
	* the document. As a result of this, it is possible for this to
	* return a value greater than the length of the document.
	*
	* @return the ending offset > getStartOffset() and
	*     <= getDocument().getLength() + 1
	* @see Document
	* @see AbstractDocument
	*/
	@:overload @:public public function getEndOffset() : Int;
	
	/**
	* Gets the child element index closest to the given offset.
	* The offset is specified relative to the beginning of the
	* document.  Returns <code>-1</code> if the
	* <code>Element</code> is a leaf, otherwise returns
	* the index of the <code>Element</code> that best represents
	* the given location.  Returns <code>0</code> if the location
	* is less than the start offset. Returns
	* <code>getElementCount() - 1</code> if the location is
	* greater than or equal to the end offset.
	*
	* @param offset the specified offset >= 0
	* @return the element index >= 0
	*/
	@:overload @:public public function getElementIndex(offset : Int) : Int;
	
	/**
	* Gets the number of child elements contained by this element.
	* If this element is a leaf, a count of zero is returned.
	*
	* @return the number of child elements >= 0
	*/
	@:overload @:public public function getElementCount() : Int;
	
	/**
	* Fetches the child element at the given index.
	*
	* @param index the specified index >= 0
	* @return the child element
	*/
	@:overload @:public public function getElement(index : Int) : javax.swing.text.Element;
	
	/**
	* Is this element a leaf element? An element that
	* <i>may</i> have children, even if it currently
	* has no children, would return <code>false</code>.
	*
	* @return true if a leaf element else false
	*/
	@:overload @:public public function isLeaf() : Bool;
	
	
}
