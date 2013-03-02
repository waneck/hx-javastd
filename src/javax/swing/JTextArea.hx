package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JTextArea extends javax.swing.text.JTextComponent
{
	/**
	* Constructs a new TextArea.  A default model is set, the initial string
	* is null, and rows/columns are set to 0.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new TextArea with the specified text displayed.
	* A default model is created and rows/columns are set to 0.
	*
	* @param text the text to be displayed, or null
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Constructs a new empty TextArea with the specified number of
	* rows and columns.  A default model is created, and the initial
	* string is null.
	*
	* @param rows the number of rows >= 0
	* @param columns the number of columns >= 0
	* @exception IllegalArgumentException if the rows or columns
	*  arguments are negative.
	*/
	@:overload public function new(rows : Int, columns : Int) : Void;
	
	/**
	* Constructs a new TextArea with the specified text and number
	* of rows and columns.  A default model is created.
	*
	* @param text the text to be displayed, or null
	* @param rows the number of rows >= 0
	* @param columns the number of columns >= 0
	* @exception IllegalArgumentException if the rows or columns
	*  arguments are negative.
	*/
	@:overload public function new(text : String, rows : Int, columns : Int) : Void;
	
	/**
	* Constructs a new JTextArea with the given document model, and defaults
	* for all of the other arguments (null, 0, 0).
	*
	* @param doc  the model to use
	*/
	@:overload public function new(doc : javax.swing.text.Document) : Void;
	
	/**
	* Constructs a new JTextArea with the specified number of rows
	* and columns, and the given model.  All of the constructors
	* feed through this constructor.
	*
	* @param doc the model to use, or create a default one if null
	* @param text the text to be displayed, null if none
	* @param rows the number of rows >= 0
	* @param columns the number of columns >= 0
	* @exception IllegalArgumentException if the rows or columns
	*  arguments are negative.
	*/
	@:overload public function new(doc : javax.swing.text.Document, text : String, rows : Int, columns : Int) : Void;
	
	/**
	* Returns the class ID for the UI.
	*
	* @return the ID ("TextAreaUI")
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload public function getUIClassID() : String;
	
	/**
	* Creates the default implementation of the model
	* to be used at construction if one isn't explicitly
	* given.  A new instance of PlainDocument is returned.
	*
	* @return the default document model
	*/
	@:overload private function createDefaultModel() : javax.swing.text.Document;
	
	/**
	* Sets the number of characters to expand tabs to.
	* This will be multiplied by the maximum advance for
	* variable width fonts.  A PropertyChange event ("tabSize") is fired
	* when the tab size changes.
	*
	* @param size number of characters to expand to
	* @see #getTabSize
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: the number of characters to expand tabs to
	*/
	@:overload public function setTabSize(size : Int) : Void;
	
	/**
	* Gets the number of characters used to expand tabs.  If the document is
	* null or doesn't have a tab setting, return a default of 8.
	*
	* @return the number of characters
	*/
	@:overload public function getTabSize() : Int;
	
	/**
	* Sets the line-wrapping policy of the text area.  If set
	* to true the lines will be wrapped if they are too long
	* to fit within the allocated width.  If set to false,
	* the lines will always be unwrapped.  A <code>PropertyChange</code>
	* event ("lineWrap") is fired when the policy is changed.
	* By default this property is false.
	*
	* @param wrap indicates if lines should be wrapped
	* @see #getLineWrap
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: should lines be wrapped
	*/
	@:overload public function setLineWrap(wrap : Bool) : Void;
	
	/**
	* Gets the line-wrapping policy of the text area.  If set
	* to true the lines will be wrapped if they are too long
	* to fit within the allocated width.  If set to false,
	* the lines will always be unwrapped.
	*
	* @return if lines will be wrapped
	*/
	@:overload public function getLineWrap() : Bool;
	
	/**
	* Sets the style of wrapping used if the text area is wrapping
	* lines.  If set to true the lines will be wrapped at word
	* boundaries (whitespace) if they are too long
	* to fit within the allocated width.  If set to false,
	* the lines will be wrapped at character boundaries.
	* By default this property is false.
	*
	* @param word indicates if word boundaries should be used
	*   for line wrapping
	* @see #getWrapStyleWord
	* @beaninfo
	*   preferred: false
	*       bound: true
	* description: should wrapping occur at word boundaries
	*/
	@:overload public function setWrapStyleWord(word : Bool) : Void;
	
	/**
	* Gets the style of wrapping used if the text area is wrapping
	* lines.  If set to true the lines will be wrapped at word
	* boundaries (ie whitespace) if they are too long
	* to fit within the allocated width.  If set to false,
	* the lines will be wrapped at character boundaries.
	*
	* @return if the wrap style should be word boundaries
	*  instead of character boundaries
	* @see #setWrapStyleWord
	*/
	@:overload public function getWrapStyleWord() : Bool;
	
	/**
	* Translates an offset into the components text to a
	* line number.
	*
	* @param offset the offset >= 0
	* @return the line number >= 0
	* @exception BadLocationException thrown if the offset is
	*   less than zero or greater than the document length.
	*/
	@:overload public function getLineOfOffset(offset : Int) : Int;
	
	/**
	* Determines the number of lines contained in the area.
	*
	* @return the number of lines > 0
	*/
	@:overload public function getLineCount() : Int;
	
	/**
	* Determines the offset of the start of the given line.
	*
	* @param line  the line number to translate >= 0
	* @return the offset >= 0
	* @exception BadLocationException thrown if the line is
	* less than zero or greater or equal to the number of
	* lines contained in the document (as reported by
	* getLineCount).
	*/
	@:overload public function getLineStartOffset(line : Int) : Int;
	
	/**
	* Determines the offset of the end of the given line.
	*
	* @param line  the line >= 0
	* @return the offset >= 0
	* @exception BadLocationException Thrown if the line is
	* less than zero or greater or equal to the number of
	* lines contained in the document (as reported by
	* getLineCount).
	*/
	@:overload public function getLineEndOffset(line : Int) : Int;
	
	/**
	* Inserts the specified text at the specified position.  Does nothing
	* if the model is null or if the text is null or empty.
	*
	* @param str the text to insert
	* @param pos the position at which to insert >= 0
	* @exception IllegalArgumentException  if pos is an
	*  invalid position in the model
	* @see TextComponent#setText
	* @see #replaceRange
	*/
	@:overload public function insert(str : String, pos : Int) : Void;
	
	/**
	* Appends the given text to the end of the document.  Does nothing if
	* the model is null or the string is null or empty.
	*
	* @param str the text to insert
	* @see #insert
	*/
	@:overload public function append(str : String) : Void;
	
	/**
	* Replaces text from the indicated start to end position with the
	* new text specified.  Does nothing if the model is null.  Simply
	* does a delete if the new string is null or empty.
	*
	* @param str the text to use as the replacement
	* @param start the start position >= 0
	* @param end the end position >= start
	* @exception IllegalArgumentException  if part of the range is an
	*  invalid position in the model
	* @see #insert
	* @see #replaceRange
	*/
	@:overload public function replaceRange(str : String, start : Int, end : Int) : Void;
	
	/**
	* Returns the number of rows in the TextArea.
	*
	* @return the number of rows >= 0
	*/
	@:overload public function getRows() : Int;
	
	/**
	* Sets the number of rows for this TextArea.  Calls invalidate() after
	* setting the new value.
	*
	* @param rows the number of rows >= 0
	* @exception IllegalArgumentException if rows is less than 0
	* @see #getRows
	* @beaninfo
	* description: the number of rows preferred for display
	*/
	@:overload public function setRows(rows : Int) : Void;
	
	/**
	* Defines the meaning of the height of a row.  This defaults to
	* the height of the font.
	*
	* @return the height >= 1
	*/
	@:overload private function getRowHeight() : Int;
	
	/**
	* Returns the number of columns in the TextArea.
	*
	* @return number of columns >= 0
	*/
	@:overload public function getColumns() : Int;
	
	/**
	* Sets the number of columns for this TextArea.  Does an invalidate()
	* after setting the new value.
	*
	* @param columns the number of columns >= 0
	* @exception IllegalArgumentException if columns is less than 0
	* @see #getColumns
	* @beaninfo
	* description: the number of columns preferred for display
	*/
	@:overload public function setColumns(columns : Int) : Void;
	
	/**
	* Gets column width.
	* The meaning of what a column is can be considered a fairly weak
	* notion for some fonts.  This method is used to define the width
	* of a column.  By default this is defined to be the width of the
	* character <em>m</em> for the font used.  This method can be
	* redefined to be some alternative amount.
	*
	* @return the column width >= 1
	*/
	@:overload private function getColumnWidth() : Int;
	
	/**
	* Returns the preferred size of the TextArea.  This is the
	* maximum of the size needed to display the text and the
	* size requested for the viewport.
	*
	* @return the size
	*/
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* Sets the current font.  This removes cached row height and column
	* width so the new font will be reflected, and calls revalidate().
	*
	* @param f the font to use as the current font
	*/
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Returns a string representation of this JTextArea. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JTextArea.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Returns true if a viewport should always force the width of this
	* Scrollable to match the width of the viewport.  This is implemented
	* to return true if the line wrapping policy is true, and false
	* if lines are not being wrapped.
	*
	* @return true if a viewport should force the Scrollables width
	* to match its own.
	*/
	@:overload override public function getScrollableTracksViewportWidth() : Bool;
	
	/**
	* Returns the preferred size of the viewport if this component
	* is embedded in a JScrollPane.  This uses the desired column
	* and row settings if they have been set, otherwise the superclass
	* behavior is used.
	*
	* @return The preferredSize of a JViewport whose view is this Scrollable.
	* @see JViewport#getPreferredSize
	*/
	@:overload override public function getPreferredScrollableViewportSize() : java.awt.Dimension;
	
	/**
	* Components that display logical rows or columns should compute
	* the scroll increment that will completely expose one new row
	* or column, depending on the value of orientation.  This is implemented
	* to use the values returned by the <code>getRowHeight</code> and
	* <code>getColumnWidth</code> methods.
	* <p>
	* Scrolling containers, like JScrollPane, will use this method
	* each time the user requests a unit scroll.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation Either SwingConstants.VERTICAL or
	*   SwingConstants.HORIZONTAL.
	* @param direction Less than zero to scroll up/left,
	*   greater than zero for down/right.
	* @return The "unit" increment for scrolling in the specified direction
	* @exception IllegalArgumentException for an invalid orientation
	* @see JScrollBar#setUnitIncrement
	* @see #getRowHeight
	* @see #getColumnWidth
	*/
	@:overload override public function getScrollableUnitIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Gets the AccessibleContext associated with this JTextArea.
	* For JTextAreas, the AccessibleContext takes the form of an
	* AccessibleJTextArea.
	* A new AccessibleJTextArea instance is created if necessary.
	*
	* @return an AccessibleJTextArea that serves as the
	*         AccessibleContext of this JTextArea
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTextArea</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to text area user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JTextArea$AccessibleJTextArea') extern class JTextArea_AccessibleJTextArea extends javax.swing.text.JTextComponent.JTextComponent_AccessibleJTextComponent
{
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleStateSet describing the states
	* of the object
	* @see AccessibleStateSet
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
