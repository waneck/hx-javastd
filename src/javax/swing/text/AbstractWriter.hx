package javax.swing.text;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractWriter
{
	/**
	* How the text packages models newlines.
	* @see #getLineSeparator
	*/
	private static var NEWLINE(default, null) : java.StdTypes.Char16;
	
	/**
	* Creates a new AbstractWriter.
	* Initializes the ElementIterator with the default
	* root of the document.
	*
	* @param w a Writer.
	* @param doc a Document
	*/
	@:overload private function new(w : java.io.Writer, doc : javax.swing.text.Document) : Void;
	
	/**
	* Creates a new AbstractWriter.
	* Initializes the ElementIterator with the
	* element passed in.
	*
	* @param w a Writer
	* @param doc an Element
	* @param pos The location in the document to fetch the
	*   content.
	* @param len The amount to write out.
	*/
	@:overload private function new(w : java.io.Writer, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	/**
	* Creates a new AbstractWriter.
	* Initializes the ElementIterator with the
	* element passed in.
	*
	* @param w a Writer
	* @param root an Element
	*/
	@:overload private function new(w : java.io.Writer, root : javax.swing.text.Element) : Void;
	
	/**
	* Creates a new AbstractWriter.
	* Initializes the ElementIterator with the
	* element passed in.
	*
	* @param w a Writer
	* @param root an Element
	* @param pos The location in the document to fetch the
	*   content.
	* @param len The amount to write out.
	*/
	@:overload private function new(w : java.io.Writer, root : javax.swing.text.Element, pos : Int, len : Int) : Void;
	
	/**
	* Returns the first offset to be output.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getStartOffset() : Int;
	
	/**
	* Returns the last offset to be output.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getEndOffset() : Int;
	
	/**
	* Fetches the ElementIterator.
	*
	* @return the ElementIterator.
	*/
	@:overload private function getElementIterator() : javax.swing.text.ElementIterator;
	
	/**
	* Returns the Writer that is used to output the content.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getWriter() : java.io.Writer;
	
	/**
	* Fetches the document.
	*
	* @return the Document.
	*/
	@:overload private function getDocument() : javax.swing.text.Document;
	
	/**
	* This method determines whether the current element
	* is in the range specified.  When no range is specified,
	* the range is initialized to be the entire document.
	* inRange() returns true if the range specified intersects
	* with the element's range.
	*
	* @param  next an Element.
	* @return boolean that indicates whether the element
	*         is in the range.
	*/
	@:overload private function inRange(next : javax.swing.text.Element) : Bool;
	
	/**
	* This abstract method needs to be implemented
	* by subclasses.  Its responsibility is to
	* iterate over the elements and use the write()
	* methods to generate output in the desired format.
	*/
	@:overload @:abstract private function write() : Void;
	
	/**
	* Returns the text associated with the element.
	* The assumption here is that the element is a
	* leaf element.  Throws a BadLocationException
	* when encountered.
	*
	* @param     elem an <code>Element</code>
	* @exception BadLocationException if pos represents an invalid
	*            location within the document
	* @return    the text as a <code>String</code>
	*/
	@:overload private function getText(elem : javax.swing.text.Element) : String;
	
	/**
	* Writes out text.  If a range is specified when the constructor
	* is invoked, then only the appropriate range of text is written
	* out.
	*
	* @param     elem an Element.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*            location within the document.
	*/
	@:overload private function text(elem : javax.swing.text.Element) : Void;
	
	/**
	* Enables subclasses to set the number of characters they
	* want written per line.   The default is 100.
	*
	* @param l the maximum line length.
	*/
	@:overload private function setLineLength(l : Int) : Void;
	
	/**
	* Returns the maximum line length.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getLineLength() : Int;
	
	/**
	* Sets the current line length.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function setCurrentLineLength(length : Int) : Void;
	
	/**
	* Returns the current line length.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getCurrentLineLength() : Int;
	
	/**
	* Returns true if the current line should be considered empty. This
	* is true when <code>getCurrentLineLength</code> == 0 ||
	* <code>indent</code> has been invoked on an empty line.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function isLineEmpty() : Bool;
	
	/**
	* Sets whether or not lines can be wrapped. This can be toggled
	* during the writing of lines. For example, outputting HTML might
	* set this to false when outputting a quoted string.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function setCanWrapLines(newValue : Bool) : Void;
	
	/**
	* Returns whether or not the lines can be wrapped. If this is false
	* no lineSeparator's will be output.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getCanWrapLines() : Bool;
	
	/**
	* Enables subclasses to specify how many spaces an indent
	* maps to. When indentation takes place, the indent level
	* is multiplied by this mapping.  The default is 2.
	*
	* @param space an int representing the space to indent mapping.
	*/
	@:overload private function setIndentSpace(space : Int) : Void;
	
	/**
	* Returns the amount of space to indent.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getIndentSpace() : Int;
	
	/**
	* Sets the String used to reprsent newlines. This is initialized
	* in the constructor from either the Document, or the System property
	* line.separator.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function setLineSeparator(value : String) : Void;
	
	/**
	* Returns the string used to represent newlines.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getLineSeparator() : String;
	
	/**
	* Increments the indent level. If indenting would cause
	* <code>getIndentSpace()</code> *<code>getIndentLevel()</code> to be >
	* than <code>getLineLength()</code> this will not cause an indent.
	*/
	@:overload private function incrIndent() : Void;
	
	/**
	* Decrements the indent level.
	*/
	@:overload private function decrIndent() : Void;
	
	/**
	* Returns the current indentation level. That is, the number of times
	* <code>incrIndent</code> has been invoked minus the number of times
	* <code>decrIndent</code> has been invoked.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function getIndentLevel() : Int;
	
	/**
	* Does indentation. The number of spaces written
	* out is indent level times the space to map mapping. If the current
	* line is empty, this will not make it so that the current line is
	* still considered empty.
	*
	* @exception IOException on any I/O error
	*/
	@:overload private function indent() : Void;
	
	/**
	* Writes out a character. This is implemented to invoke
	* the <code>write</code> method that takes a char[].
	*
	* @param     ch a char.
	* @exception IOException on any I/O error
	*/
	@:overload private function write(ch : java.StdTypes.Char16) : Void;
	
	/**
	* Writes out a string. This is implemented to invoke the
	* <code>write</code> method that takes a char[].
	*
	* @param     content a String.
	* @exception IOException on any I/O error
	*/
	@:overload private function write(content : String) : Void;
	
	/**
	* Writes the line separator. This invokes <code>output</code> directly
	* as well as setting the <code>lineLength</code> to 0.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function writeLineSeparator() : Void;
	
	/**
	* All write methods call into this one. If <code>getCanWrapLines()</code>
	* returns false, this will call <code>output</code> with each sequence
	* of <code>chars</code> that doesn't contain a NEWLINE, followed
	* by a call to <code>writeLineSeparator</code>. On the other hand,
	* if <code>getCanWrapLines()</code> returns true, this will split the
	* string, as necessary, so <code>getLineLength</code> is honored.
	* The only exception is if the current string contains no whitespace,
	* and won't fit in which case the line length will exceed
	* <code>getLineLength</code>.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function write(chars : java.NativeArray<java.StdTypes.Char16>, startIndex : Int, length : Int) : Void;
	
	/**
	* Writes out the set of attributes as " <name>=<value>"
	* pairs. It throws an IOException when encountered.
	*
	* @param     attr an AttributeSet.
	* @exception IOException on any I/O error
	*/
	@:overload private function writeAttributes(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* The last stop in writing out content. All the write methods eventually
	* make it to this method, which invokes <code>write</code> on the
	* Writer.
	* <p>This method also updates the line length based on
	* <code>length</code>. If this is invoked to output a newline, the
	* current line length will need to be reset as will no longer be
	* valid. If it is up to the caller to do this. Use
	* <code>writeLineSeparator</code> to write out a newline, which will
	* property update the current line length.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload private function output(content : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
