package java.awt.font;
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
/*
* (C) Copyright Taligent, Inc. 1996 - 1997, All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998, All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by Taligent, Inc., a wholly-owned subsidiary
* of IBM. These materials are provided under terms of a License
* Agreement between Taligent and Sun. This technology is protected
* by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class TextMeasurer implements java.lang.Cloneable
{
	/**
	* Constructs a <code>TextMeasurer</code> from the source text.
	* The source text should be a single entire paragraph.
	* @param text the source paragraph.  Cannot be null.
	* @param frc the information about a graphics device which is needed
	*       to measure the text correctly.  Cannot be null.
	*/
	@:overload public function new(text : java.text.AttributedCharacterIterator, frc : java.awt.font.FontRenderContext) : Void;
	
	@:overload private function clone() : Dynamic;
	
	/**
	* Returns the index of the first character which will not fit on
	* on a line beginning at <code>start</code> and possible
	* measuring up to <code>maxAdvance</code> in graphical width.
	*
	* @param start the character index at which to start measuring.
	*  <code>start</code> is an absolute index, not relative to the
	*  start of the paragraph
	* @param maxAdvance the graphical width in which the line must fit
	* @return the index after the last character that will fit
	*  on a line beginning at <code>start</code>, which is not longer
	*  than <code>maxAdvance</code> in graphical width
	* @throws IllegalArgumentException if <code>start</code> is
	*          less than the beginning of the paragraph.
	*/
	@:overload public function getLineBreakIndex(start : Int, maxAdvance : Single) : Int;
	
	/**
	* Returns the graphical width of a line beginning at <code>start</code>
	* and including characters up to <code>limit</code>.
	* <code>start</code> and <code>limit</code> are absolute indices,
	* not relative to the start of the paragraph.
	*
	* @param start the character index at which to start measuring
	* @param limit the character index at which to stop measuring
	* @return the graphical width of a line beginning at <code>start</code>
	*   and including characters up to <code>limit</code>
	* @throws IndexOutOfBoundsException if <code>limit</code> is less
	*         than <code>start</code>
	* @throws IllegalArgumentException if <code>start</code> or
	*          <code>limit</code> is not between the beginning of
	*          the paragraph and the end of the paragraph.
	*/
	@:overload public function getAdvanceBetween(start : Int, limit : Int) : Single;
	
	/**
	* Returns a <code>TextLayout</code> on the given character range.
	*
	* @param start the index of the first character
	* @param limit the index after the last character.  Must be greater
	*   than <code>start</code>
	* @return a <code>TextLayout</code> for the characters beginning at
	*  <code>start</code> up to (but not including) <code>limit</code>
	* @throws IndexOutOfBoundsException if <code>limit</code> is less
	*         than <code>start</code>
	* @throws IllegalArgumentException if <code>start</code> or
	*          <code>limit</code> is not between the beginning of
	*          the paragraph and the end of the paragraph.
	*/
	@:overload public function getLayout(start : Int, limit : Int) : java.awt.font.TextLayout;
	
	/**
	* Updates the <code>TextMeasurer</code> after a single character has
	* been inserted
	* into the paragraph currently represented by this
	* <code>TextMeasurer</code>.  After this call, this
	* <code>TextMeasurer</code> is equivalent to a new
	* <code>TextMeasurer</code> created from the text;  however, it will
	* usually be more efficient to update an existing
	* <code>TextMeasurer</code> than to create a new one from scratch.
	*
	* @param newParagraph the text of the paragraph after performing
	* the insertion.  Cannot be null.
	* @param insertPos the position in the text where the character was
	* inserted.  Must not be less than the start of
	* <code>newParagraph</code>, and must be less than the end of
	* <code>newParagraph</code>.
	* @throws IndexOutOfBoundsException if <code>insertPos</code> is less
	*         than the start of <code>newParagraph</code> or greater than
	*         or equal to the end of <code>newParagraph</code>
	* @throws NullPointerException if <code>newParagraph</code> is
	*         <code>null</code>
	*/
	@:overload public function insertChar(newParagraph : java.text.AttributedCharacterIterator, insertPos : Int) : Void;
	
	/**
	* Updates the <code>TextMeasurer</code> after a single character has
	* been deleted
	* from the paragraph currently represented by this
	* <code>TextMeasurer</code>.  After this call, this
	* <code>TextMeasurer</code> is equivalent to a new <code>TextMeasurer</code>
	* created from the text;  however, it will usually be more efficient
	* to update an existing <code>TextMeasurer</code> than to create a new one
	* from scratch.
	*
	* @param newParagraph the text of the paragraph after performing
	* the deletion.  Cannot be null.
	* @param deletePos the position in the text where the character was removed.
	* Must not be less than
	* the start of <code>newParagraph</code>, and must not be greater than the
	* end of <code>newParagraph</code>.
	* @throws IndexOutOfBoundsException if <code>deletePos</code> is
	*         less than the start of <code>newParagraph</code> or greater
	*         than the end of <code>newParagraph</code>
	* @throws NullPointerException if <code>newParagraph</code> is
	*         <code>null</code>
	*/
	@:overload public function deleteChar(newParagraph : java.text.AttributedCharacterIterator, deletePos : Int) : Void;
	
	
}
