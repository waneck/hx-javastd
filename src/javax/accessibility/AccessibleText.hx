package javax.accessibility;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
* <P>The AccessibleText interface should be implemented by all
* classes that present textual information on the display.  This interface
* provides the standard mechanism for an assistive technology to access
* that text via its content, attributes, and spatial location.
* Applications can determine if an object supports the AccessibleText
* interface by first obtaining its AccessibleContext (see {@link Accessible})
* and then calling the {@link AccessibleContext#getAccessibleText} method of
* AccessibleContext.  If the return value is not null, the object supports this
* interface.
*
* @see Accessible
* @see Accessible#getAccessibleContext
* @see AccessibleContext
* @see AccessibleContext#getAccessibleText
*
* @author      Peter Korn
*/
extern interface AccessibleText
{
	/**
	* Given a point in local coordinates, return the zero-based index
	* of the character under that Point.  If the point is invalid,
	* this method returns -1.
	*
	* @param p the Point in local coordinates
	* @return the zero-based index of the character under Point p; if
	* Point is invalid return -1.
	*/
	@:overload @:public public function getIndexAtPoint(p : java.awt.Point) : Int;
	
	/**
	* Determines the bounding box of the character at the given
	* index into the string.  The bounds are returned in local
	* coordinates.  If the index is invalid an empty rectangle is returned.
	*
	* @param i the index into the String
	* @return the screen coordinates of the character's bounding box,
	* if index is invalid return an empty rectangle.
	*/
	@:overload @:public public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	/**
	* Returns the number of characters (valid indicies)
	*
	* @return the number of characters
	*/
	@:overload @:public public function getCharCount() : Int;
	
	/**
	* Returns the zero-based offset of the caret.
	*
	* Note: That to the right of the caret will have the same index
	* value as the offset (the caret is between two characters).
	* @return the zero-based offset of the caret.
	*/
	@:overload @:public public function getCaretPosition() : Int;
	
	/**
	* Returns the String at a given index.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence
	*/
	@:overload @:public public function getAtIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String after a given index.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence
	*/
	@:overload @:public public function getAfterIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String before a given index.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence
	*/
	@:overload @:public public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the AttributeSet for a given character at a given index
	*
	* @param i the zero-based index into the text
	* @return the AttributeSet of the character
	*/
	@:overload @:public public function getCharacterAttribute(i : Int) : javax.swing.text.AttributeSet;
	
	/**
	* Returns the start offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into the text of the start of the selection
	*/
	@:overload @:public public function getSelectionStart() : Int;
	
	/**
	* Returns the end offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	*
	* @return the index into teh text of the end of the selection
	*/
	@:overload @:public public function getSelectionEnd() : Int;
	
	/**
	* Returns the portion of the text that is selected.
	*
	* @return the String portion of the text that is selected
	*/
	@:overload @:public public function getSelectedText() : String;
	
	
}
