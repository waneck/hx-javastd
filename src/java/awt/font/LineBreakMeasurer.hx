package java.awt.font;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class LineBreakMeasurer
{
	/**
	* Constructs a <code>LineBreakMeasurer</code> for the specified text.
	*
	* @param text the text for which this <code>LineBreakMeasurer</code>
	*       produces <code>TextLayout</code> objects; the text must contain
	*       at least one character; if the text available through
	*       <code>iter</code> changes, further calls to this
	*       <code>LineBreakMeasurer</code> instance are undefined (except,
	*       in some cases, when <code>insertChar</code> or
	*       <code>deleteChar</code> are invoked afterward - see below)
	* @param frc contains information about a graphics device which is
	*       needed to measure the text correctly;
	*       text measurements can vary slightly depending on the
	*       device resolution, and attributes such as antialiasing; this
	*       parameter does not specify a translation between the
	*       <code>LineBreakMeasurer</code> and user space
	* @see LineBreakMeasurer#insertChar
	* @see LineBreakMeasurer#deleteChar
	*/
	@:overload public function new(text : java.text.AttributedCharacterIterator, frc : java.awt.font.FontRenderContext) : Void;
	
	/**
	* Constructs a <code>LineBreakMeasurer</code> for the specified text.
	*
	* @param text the text for which this <code>LineBreakMeasurer</code>
	*     produces <code>TextLayout</code> objects; the text must contain
	*     at least one character; if the text available through
	*     <code>iter</code> changes, further calls to this
	*     <code>LineBreakMeasurer</code> instance are undefined (except,
	*     in some cases, when <code>insertChar</code> or
	*     <code>deleteChar</code> are invoked afterward - see below)
	* @param breakIter the {@link BreakIterator} which defines line
	*     breaks
	* @param frc contains information about a graphics device which is
	*       needed to measure the text correctly;
	*       text measurements can vary slightly depending on the
	*       device resolution, and attributes such as antialiasing; this
	*       parameter does not specify a translation between the
	*       <code>LineBreakMeasurer</code> and user space
	* @throws IllegalArgumentException if the text has less than one character
	* @see LineBreakMeasurer#insertChar
	* @see LineBreakMeasurer#deleteChar
	*/
	@:overload public function new(text : java.text.AttributedCharacterIterator, breakIter : java.text.BreakIterator, frc : java.awt.font.FontRenderContext) : Void;
	
	/**
	* Returns the position at the end of the next layout.  Does NOT
	* update the current position of this <code>LineBreakMeasurer</code>.
	*
	* @param wrappingWidth the maximum visible advance permitted for
	*    the text in the next layout
	* @return an offset in the text representing the limit of the
	*    next <code>TextLayout</code>.
	*/
	@:overload public function nextOffset(wrappingWidth : Single) : Int;
	
	/**
	* Returns the position at the end of the next layout.  Does NOT
	* update the current position of this <code>LineBreakMeasurer</code>.
	*
	* @param wrappingWidth the maximum visible advance permitted for
	*    the text in the next layout
	* @param offsetLimit the first character that can not be included
	*    in the next layout, even if the text after the limit would fit
	*    within the wrapping width; <code>offsetLimit</code> must be
	*    greater than the current position
	* @param requireNextWord if <code>true</code>, the current position
	*    that is returned if the entire next word does not fit within
	*    <code>wrappingWidth</code>; if <code>false</code>, the offset
	*    returned is at least one greater than the current position
	* @return an offset in the text representing the limit of the
	*    next <code>TextLayout</code>
	*/
	@:overload public function nextOffset(wrappingWidth : Single, offsetLimit : Int, requireNextWord : Bool) : Int;
	
	/**
	* Returns the next layout, and updates the current position.
	*
	* @param wrappingWidth the maximum visible advance permitted for
	*     the text in the next layout
	* @return a <code>TextLayout</code>, beginning at the current
	*     position, which represents the next line fitting within
	*     <code>wrappingWidth</code>
	*/
	@:overload public function nextLayout(wrappingWidth : Single) : java.awt.font.TextLayout;
	
	/**
	* Returns the next layout, and updates the current position.
	*
	* @param wrappingWidth the maximum visible advance permitted
	*    for the text in the next layout
	* @param offsetLimit the first character that can not be
	*    included in the next layout, even if the text after the limit
	*    would fit within the wrapping width; <code>offsetLimit</code>
	*    must be greater than the current position
	* @param requireNextWord if <code>true</code>, and if the entire word
	*    at the current position does not fit within the wrapping width,
	*    <code>null</code> is returned. If <code>false</code>, a valid
	*    layout is returned that includes at least the character at the
	*    current position
	* @return a <code>TextLayout</code>, beginning at the current
	*    position, that represents the next line fitting within
	*    <code>wrappingWidth</code>.  If the current position is at the end
	*    of the text used by this <code>LineBreakMeasurer</code>,
	*    <code>null</code> is returned
	*/
	@:overload public function nextLayout(wrappingWidth : Single, offsetLimit : Int, requireNextWord : Bool) : java.awt.font.TextLayout;
	
	/**
	* Returns the current position of this <code>LineBreakMeasurer</code>.
	*
	* @return the current position of this <code>LineBreakMeasurer</code>
	* @see #setPosition
	*/
	@:overload public function getPosition() : Int;
	
	/**
	* Sets the current position of this <code>LineBreakMeasurer</code>.
	*
	* @param newPosition the current position of this
	*    <code>LineBreakMeasurer</code>; the position should be within the
	*    text used to construct this <code>LineBreakMeasurer</code> (or in
	*    the text most recently passed to <code>insertChar</code>
	*    or <code>deleteChar</code>
	* @see #getPosition
	*/
	@:overload public function setPosition(newPosition : Int) : Void;
	
	/**
	* Updates this <code>LineBreakMeasurer</code> after a single
	* character is inserted into the text, and sets the current
	* position to the beginning of the paragraph.
	*
	* @param newParagraph the text after the insertion
	* @param insertPos the position in the text at which the character
	*    is inserted
	* @throws IndexOutOfBoundsException if <code>insertPos</code> is less
	*         than the start of <code>newParagraph</code> or greater than
	*         or equal to the end of <code>newParagraph</code>
	* @throws NullPointerException if <code>newParagraph</code> is
	*         <code>null</code>
	* @see #deleteChar
	*/
	@:overload public function insertChar(newParagraph : java.text.AttributedCharacterIterator, insertPos : Int) : Void;
	
	/**
	* Updates this <code>LineBreakMeasurer</code> after a single
	* character is deleted from the text, and sets the current
	* position to the beginning of the paragraph.
	* @param newParagraph the text after the deletion
	* @param deletePos the position in the text at which the character
	*    is deleted
	* @throws IndexOutOfBoundsException if <code>deletePos</code> is
	*         less than the start of <code>newParagraph</code> or greater
	*         than the end of <code>newParagraph</code>
	* @throws NullPointerException if <code>newParagraph</code> is
	*         <code>null</code>
	* @see #insertChar
	*/
	@:overload public function deleteChar(newParagraph : java.text.AttributedCharacterIterator, deletePos : Int) : Void;
	
	
}
