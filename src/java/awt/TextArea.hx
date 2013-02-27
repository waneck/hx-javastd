package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A <code>TextArea</code> object is a multi-line region
* that displays text. It can be set to allow editing or
* to be read-only.
* <p>
* The following image shows the appearance of a text area:
* <p>
* <img src="doc-files/TextArea-1.gif" alt="A TextArea showing the word 'Hello!'"
* ALIGN=center HSPACE=10 VSPACE=7>
* <p>
* This text area could be created by the following line of code:
* <p>
* <hr><blockquote><pre>
* new TextArea("Hello", 5, 40);
* </pre></blockquote><hr>
* <p>
* @author      Sami Shaio
* @since       JDK1.0
*/
@:require(java0) extern class TextArea extends java.awt.TextComponent
{
	/**
	* Create and display both vertical and horizontal scrollbars.
	* @since JDK1.1
	*/
	@:require(java1) public static var SCROLLBARS_BOTH(default, null) : Int;
	
	/**
	* Create and display vertical scrollbar only.
	* @since JDK1.1
	*/
	@:require(java1) public static var SCROLLBARS_VERTICAL_ONLY(default, null) : Int;
	
	/**
	* Create and display horizontal scrollbar only.
	* @since JDK1.1
	*/
	@:require(java1) public static var SCROLLBARS_HORIZONTAL_ONLY(default, null) : Int;
	
	/**
	* Do not create or display any scrollbars for the text area.
	* @since JDK1.1
	*/
	@:require(java1) public static var SCROLLBARS_NONE(default, null) : Int;
	
	/**
	* Constructs a new text area with the empty string as text.
	* This text area is created with scrollbar visibility equal to
	* {@link #SCROLLBARS_BOTH}, so both vertical and horizontal
	* scrollbars will be visible for this text area.
	* @exception HeadlessException if
	*    <code>GraphicsEnvironment.isHeadless</code> returns true
	* @see java.awt.GraphicsEnvironment#isHeadless()
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new text area with the specified text.
	* This text area is created with scrollbar visibility equal to
	* {@link #SCROLLBARS_BOTH}, so both vertical and horizontal
	* scrollbars will be visible for this text area.
	* @param      text       the text to be displayed; if
	*             <code>text</code> is <code>null</code>, the empty
	*             string <code>""</code> will be displayed
	* @exception HeadlessException if
	*        <code>GraphicsEnvironment.isHeadless</code> returns true
	* @see java.awt.GraphicsEnvironment#isHeadless()
	*/
	@:overload public function new(text : String) : Void;
	
	/**
	* Constructs a new text area with the specified number of
	* rows and columns and the empty string as text.
	* A column is an approximate average character
	* width that is platform-dependent.  The text area is created with
	* scrollbar visibility equal to {@link #SCROLLBARS_BOTH}, so both
	* vertical and horizontal scrollbars will be visible for this
	* text area.
	* @param rows the number of rows
	* @param columns the number of columns
	* @exception HeadlessException if
	*     <code>GraphicsEnvironment.isHeadless</code> returns true
	* @see java.awt.GraphicsEnvironment#isHeadless()
	*/
	@:overload public function new(rows : Int, columns : Int) : Void;
	
	/**
	* Constructs a new text area with the specified text,
	* and with the specified number of rows and columns.
	* A column is an approximate average character
	* width that is platform-dependent.  The text area is created with
	* scrollbar visibility equal to {@link #SCROLLBARS_BOTH}, so both
	* vertical and horizontal scrollbars will be visible for this
	* text area.
	* @param      text       the text to be displayed; if
	*             <code>text</code> is <code>null</code>, the empty
	*             string <code>""</code> will be displayed
	* @param     rows      the number of rows
	* @param     columns   the number of columns
	* @exception HeadlessException if
	*   <code>GraphicsEnvironment.isHeadless</code> returns true
	* @see java.awt.GraphicsEnvironment#isHeadless()
	*/
	@:overload public function new(text : String, rows : Int, columns : Int) : Void;
	
	/**
	* Constructs a new text area with the specified text,
	* and with the rows, columns, and scroll bar visibility
	* as specified.  All <code>TextArea</code> constructors defer to
	* this one.
	* <p>
	* The <code>TextArea</code> class defines several constants
	* that can be supplied as values for the
	* <code>scrollbars</code> argument:
	* <ul>
	* <li><code>SCROLLBARS_BOTH</code>,
	* <li><code>SCROLLBARS_VERTICAL_ONLY</code>,
	* <li><code>SCROLLBARS_HORIZONTAL_ONLY</code>,
	* <li><code>SCROLLBARS_NONE</code>.
	* </ul>
	* Any other value for the
	* <code>scrollbars</code> argument is invalid and will result in
	* this text area being created with scrollbar visibility equal to
	* the default value of {@link #SCROLLBARS_BOTH}.
	* @param      text       the text to be displayed; if
	*             <code>text</code> is <code>null</code>, the empty
	*             string <code>""</code> will be displayed
	* @param      rows       the number of rows; if
	*             <code>rows</code> is less than <code>0</code>,
	*             <code>rows</code> is set to <code>0</code>
	* @param      columns    the number of columns; if
	*             <code>columns</code> is less than <code>0</code>,
	*             <code>columns</code> is set to <code>0</code>
	* @param      scrollbars  a constant that determines what
	*             scrollbars are created to view the text area
	* @since      JDK1.1
	* @exception HeadlessException if
	*    <code>GraphicsEnvironment.isHeadless</code> returns true
	* @see java.awt.GraphicsEnvironment#isHeadless()
	*/
	@:require(java1) @:overload public function new(text : String, rows : Int, columns : Int, scrollbars : Int) : Void;
	
	/**
	* Creates the <code>TextArea</code>'s peer.  The peer allows us to modify
	* the appearance of the <code>TextArea</code> without changing any of its
	* functionality.
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* Inserts the specified text at the specified position
	* in this text area.
	* <p>Note that passing <code>null</code> or inconsistent
	* parameters is invalid and will result in unspecified
	* behavior.
	*
	* @param      str the non-<code>null</code> text to insert
	* @param      pos the position at which to insert
	* @see        java.awt.TextComponent#setText
	* @see        java.awt.TextArea#replaceRange
	* @see        java.awt.TextArea#append
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function insert(str : String, pos : Int) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>insert(String, int)</code>.
	*/
	@:overload @:synchronized public function insertText(str : String, pos : Int) : Void;
	
	/**
	* Appends the given text to the text area's current text.
	* <p>Note that passing <code>null</code> or inconsistent
	* parameters is invalid and will result in unspecified
	* behavior.
	*
	* @param     str the non-<code>null</code> text to append
	* @see       java.awt.TextArea#insert
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function append(str : String) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>append(String)</code>.
	*/
	@:overload @:synchronized public function appendText(str : String) : Void;
	
	/**
	* Replaces text between the indicated start and end positions
	* with the specified replacement text.  The text at the end
	* position will not be replaced.  The text at the start
	* position will be replaced (unless the start position is the
	* same as the end position).
	* The text position is zero-based.  The inserted substring may be
	* of a different length than the text it replaces.
	* <p>Note that passing <code>null</code> or inconsistent
	* parameters is invalid and will result in unspecified
	* behavior.
	*
	* @param     str      the non-<code>null</code> text to use as
	*                     the replacement
	* @param     start    the start position
	* @param     end      the end position
	* @see       java.awt.TextArea#insert
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function replaceRange(str : String, start : Int, end : Int) : Void;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>replaceRange(String, int, int)</code>.
	*/
	@:overload @:synchronized public function replaceText(str : String, start : Int, end : Int) : Void;
	
	/**
	* Returns the number of rows in the text area.
	* @return    the number of rows in the text area
	* @see       #setRows(int)
	* @see       #getColumns()
	* @since     JDK1
	*/
	@:overload public function getRows() : Int;
	
	/**
	* Sets the number of rows for this text area.
	* @param       rows   the number of rows
	* @see         #getRows()
	* @see         #setColumns(int)
	* @exception   IllegalArgumentException   if the value
	*                 supplied for <code>rows</code>
	*                 is less than <code>0</code>
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function setRows(rows : Int) : Void;
	
	/**
	* Returns the number of columns in this text area.
	* @return    the number of columns in the text area
	* @see       #setColumns(int)
	* @see       #getRows()
	*/
	@:overload public function getColumns() : Int;
	
	/**
	* Sets the number of columns for this text area.
	* @param       columns   the number of columns
	* @see         #getColumns()
	* @see         #setRows(int)
	* @exception   IllegalArgumentException   if the value
	*                 supplied for <code>columns</code>
	*                 is less than <code>0</code>
	* @since       JDK1.1
	*/
	@:require(java1) @:overload public function setColumns(columns : Int) : Void;
	
	/**
	* Returns an enumerated value that indicates which scroll bars
	* the text area uses.
	* <p>
	* The <code>TextArea</code> class defines four integer constants
	* that are used to specify which scroll bars are available.
	* <code>TextArea</code> has one constructor that gives the
	* application discretion over scroll bars.
	*
	* @return     an integer that indicates which scroll bars are used
	* @see        java.awt.TextArea#SCROLLBARS_BOTH
	* @see        java.awt.TextArea#SCROLLBARS_VERTICAL_ONLY
	* @see        java.awt.TextArea#SCROLLBARS_HORIZONTAL_ONLY
	* @see        java.awt.TextArea#SCROLLBARS_NONE
	* @see        java.awt.TextArea#TextArea(java.lang.String, int, int, int)
	* @since      JDK1.1
	*/
	@:require(java1) @:overload public function getScrollbarVisibility() : Int;
	
	/**
	* Determines the preferred size of a text area with the specified
	* number of rows and columns.
	* @param     rows   the number of rows
	* @param     columns   the number of columns
	* @return    the preferred dimensions required to display
	*                       the text area with the specified
	*                       number of rows and columns
	* @see       java.awt.Component#getPreferredSize
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function getPreferredSize(rows : Int, columns : Int) : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getPreferredSize(int, int)</code>.
	*/
	@:overload public function preferredSize(rows : Int, columns : Int) : java.awt.Dimension;
	
	/**
	* Determines the preferred size of this text area.
	* @return    the preferred dimensions needed for this text area
	* @see       java.awt.Component#getPreferredSize
	* @since     JDK1.1
	*/
	@:require(java1) @:overload override public function getPreferredSize() : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getPreferredSize()</code>.
	*/
	@:overload override public function preferredSize() : java.awt.Dimension;
	
	/**
	* Determines the minimum size of a text area with the specified
	* number of rows and columns.
	* @param     rows   the number of rows
	* @param     columns   the number of columns
	* @return    the minimum dimensions required to display
	*                       the text area with the specified
	*                       number of rows and columns
	* @see       java.awt.Component#getMinimumSize
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function getMinimumSize(rows : Int, columns : Int) : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getMinimumSize(int, int)</code>.
	*/
	@:overload public function minimumSize(rows : Int, columns : Int) : java.awt.Dimension;
	
	/**
	* Determines the minimum size of this text area.
	* @return    the preferred dimensions needed for this text area
	* @see       java.awt.Component#getPreferredSize
	* @since     JDK1.1
	*/
	@:require(java1) @:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* @deprecated As of JDK version 1.1,
	* replaced by <code>getMinimumSize()</code>.
	*/
	@:overload override public function minimumSize() : java.awt.Dimension;
	
	/**
	* Returns a string representing the state of this <code>TextArea</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not be
	* <code>null</code>.
	*
	* @return      the parameter string of this text area
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Returns the <code>AccessibleContext</code> associated with
	* this <code>TextArea</code>. For text areas, the
	* <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleAWTTextArea</code>.
	* A new <code>AccessibleAWTTextArea</code> instance is created if necessary.
	*
	* @return an <code>AccessibleAWTTextArea</code> that serves as the
	*         <code>AccessibleContext</code> of this <code>TextArea</code>
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>TextArea</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to text area user-interface elements.
* @since 1.3
*/
@:require(java3) @:native('java$awt$TextArea$AccessibleAWTTextArea') extern class TextArea_AccessibleAWTTextArea extends AccessibleAWTTextComponent
{
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleStateSet describing the states
	* of the object
	* @see AccessibleStateSet
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	
}
