package javax.swing.text;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Utilities
{
	/**
	* Draws the given text, expanding any tabs that are contained
	* using the given tab expansion technique.  This particular
	* implementation renders in a 1.1 style coordinate system
	* where ints are used and 72dpi is assumed.
	*
	* @param s  the source of the text
	* @param x  the X origin >= 0
	* @param y  the Y origin >= 0
	* @param g  the graphics context
	* @param e  how to expand the tabs.  If this value is null,
	*   tabs will be expanded as a space character.
	* @param startOffset starting offset of the text in the document >= 0
	* @return  the X location at the end of the rendered text
	*/
	@:overload @:final public static function drawTabbedText(s : javax.swing.text.Segment, x : Int, y : Int, g : java.awt.Graphics, e : javax.swing.text.TabExpander, startOffset : Int) : Int;
	
	/**
	* Determines the width of the given segment of text taking tabs
	* into consideration.  This is implemented in a 1.1 style coordinate
	* system where ints are used and 72dpi is assumed.
	*
	* @param s  the source of the text
	* @param metrics the font metrics to use for the calculation
	* @param x  the X origin >= 0
	* @param e  how to expand the tabs.  If this value is null,
	*   tabs will be expanded as a space character.
	* @param startOffset starting offset of the text in the document >= 0
	* @return  the width of the text
	*/
	@:overload @:final public static function getTabbedTextWidth(s : javax.swing.text.Segment, metrics : java.awt.FontMetrics, x : Int, e : javax.swing.text.TabExpander, startOffset : Int) : Int;
	
	/**
	* Determines the relative offset into the given text that
	* best represents the given span in the view coordinate
	* system.  This is implemented in a 1.1 style coordinate
	* system where ints are used and 72dpi is assumed.
	*
	* @param s  the source of the text
	* @param metrics the font metrics to use for the calculation
	* @param x0 the starting view location representing the start
	*   of the given text >= 0.
	* @param x  the target view location to translate to an
	*   offset into the text >= 0.
	* @param e  how to expand the tabs.  If this value is null,
	*   tabs will be expanded as a space character.
	* @param startOffset starting offset of the text in the document >= 0
	* @return  the offset into the text >= 0
	*/
	@:overload @:final public static function getTabbedTextOffset(s : javax.swing.text.Segment, metrics : java.awt.FontMetrics, x0 : Int, x : Int, e : javax.swing.text.TabExpander, startOffset : Int) : Int;
	
	@:overload @:final public static function getTabbedTextOffset(s : javax.swing.text.Segment, metrics : java.awt.FontMetrics, x0 : Int, x : Int, e : javax.swing.text.TabExpander, startOffset : Int, round : Bool) : Int;
	
	/**
	* Determine where to break the given text to fit
	* within the given span. This tries to find a word boundary.
	* @param s  the source of the text
	* @param metrics the font metrics to use for the calculation
	* @param x0 the starting view location representing the start
	*   of the given text.
	* @param x  the target view location to translate to an
	*   offset into the text.
	* @param e  how to expand the tabs.  If this value is null,
	*   tabs will be expanded as a space character.
	* @param startOffset starting offset in the document of the text
	* @return  the offset into the given text
	*/
	@:overload @:final public static function getBreakLocation(s : javax.swing.text.Segment, metrics : java.awt.FontMetrics, x0 : Int, x : Int, e : javax.swing.text.TabExpander, startOffset : Int) : Int;
	
	/**
	* Determines the starting row model position of the row that contains
	* the specified model position.  The component given must have a
	* size to compute the result.  If the component doesn't have a size
	* a value of -1 will be returned.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the position >= 0 if the request can be computed, otherwise
	*  a value of -1 will be returned.
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getRowStart(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determines the ending row model position of the row that contains
	* the specified model position.  The component given must have a
	* size to compute the result.  If the component doesn't have a size
	* a value of -1 will be returned.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the position >= 0 if the request can be computed, otherwise
	*  a value of -1 will be returned.
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getRowEnd(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determines the position in the model that is closest to the given
	* view location in the row above.  The component given must have a
	* size to compute the result.  If the component doesn't have a size
	* a value of -1 will be returned.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @param x the X coordinate >= 0
	* @return the position >= 0 if the request can be computed, otherwise
	*  a value of -1 will be returned.
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getPositionAbove(c : javax.swing.text.JTextComponent, offs : Int, x : Int) : Int;
	
	/**
	* Determines the position in the model that is closest to the given
	* view location in the row below.  The component given must have a
	* size to compute the result.  If the component doesn't have a size
	* a value of -1 will be returned.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @param x the X coordinate >= 0
	* @return the position >= 0 if the request can be computed, otherwise
	*  a value of -1 will be returned.
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getPositionBelow(c : javax.swing.text.JTextComponent, offs : Int, x : Int) : Int;
	
	/**
	* Determines the start of a word for the given model location.
	* Uses BreakIterator.getWordInstance() to actually get the words.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the location in the model of the word start >= 0
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getWordStart(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determines the end of a word for the given location.
	* Uses BreakIterator.getWordInstance() to actually get the words.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the location in the model of the word end >= 0
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getWordEnd(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determines the start of the next word for the given location.
	* Uses BreakIterator.getWordInstance() to actually get the words.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the location in the model of the word start >= 0
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getNextWord(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determine the start of the prev word for the given location.
	* Uses BreakIterator.getWordInstance() to actually get the words.
	*
	* @param c the editor
	* @param offs the offset in the document >= 0
	* @return the location in the model of the word start >= 0
	* @exception BadLocationException if the offset is out of range
	*/
	@:overload @:final public static function getPreviousWord(c : javax.swing.text.JTextComponent, offs : Int) : Int;
	
	/**
	* Determines the element to use for a paragraph/line.
	*
	* @param c the editor
	* @param offs the starting offset in the document >= 0
	* @return the element
	*/
	@:overload @:final public static function getParagraphElement(c : javax.swing.text.JTextComponent, offs : Int) : javax.swing.text.Element;
	
	
}
