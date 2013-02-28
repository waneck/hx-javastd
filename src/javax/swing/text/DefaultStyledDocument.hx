package javax.swing.text;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultStyledDocument extends javax.swing.text.AbstractDocument implements javax.swing.text.StyledDocument
{
	/**
	* Constructs a styled document.
	*
	* @param c  the container for the content
	* @param styles resources and style definitions which may
	*  be shared across documents
	*/
	@:overload public function new(c : javax.swing.text.AbstractDocument.AbstractDocument_Content, styles : javax.swing.text.StyleContext) : Void;
	
	/**
	* Constructs a styled document with the default content
	* storage implementation and a shared set of styles.
	*
	* @param styles the styles
	*/
	@:overload public function new(styles : javax.swing.text.StyleContext) : Void;
	
	/**
	* Constructs a default styled document.  This buffers
	* input content by a size of <em>BUFFER_SIZE_DEFAULT</em>
	* and has a style context that is scoped by the lifetime
	* of the document and is not shared with other documents.
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the default root element.
	*
	* @return the root
	* @see Document#getDefaultRootElement
	*/
	@:overload override public function getDefaultRootElement() : javax.swing.text.Element;
	
	/**
	* Initialize the document to reflect the given element
	* structure (i.e. the structure reported by the
	* <code>getDefaultRootElement</code> method.  If the
	* document contained any data it will first be removed.
	*/
	@:overload private function create(data : java.NativeArray<DefaultStyledDocument_ElementSpec>) : Void;
	
	/**
	* Inserts new elements in bulk.  This is useful to allow
	* parsing with the document in an unlocked state and
	* prepare an element structure modification.  This method
	* takes an array of tokens that describe how to update an
	* element structure so the time within a write lock can
	* be greatly reduced in an asynchronous update situation.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offset the starting offset >= 0
	* @param data the element data
	* @exception BadLocationException for an invalid starting offset
	*/
	@:overload private function insert(offset : Int, data : java.NativeArray<DefaultStyledDocument_ElementSpec>) : Void;
	
	/**
	* Removes an element from this document.
	*
	* <p>The element is removed from its parent element, as well as
	* the text in the range identified by the element.  If the
	* element isn't associated with the document, {@code
	* IllegalArgumentException} is thrown.</p>
	*
	* <p>As empty branch elements are not allowed in the document, if the
	* element is the sole child, its parent element is removed as well,
	* recursively.  This means that when replacing all the children of a
	* particular element, new children should be added <em>before</em>
	* removing old children.
	*
	* <p>Element removal results in two events being fired, the
	* {@code DocumentEvent} for changes in element structure and {@code
	* UndoableEditEvent} for changes in document content.</p>
	*
	* <p>If the element contains end-of-content mark (the last {@code
	* "\n"} character in document), this character is not removed;
	* instead, preceding leaf element is extended to cover the
	* character.  If the last leaf already ends with {@code "\n",} it is
	* included in content removal.</p>
	*
	* <p>If the element is {@code null,} {@code NullPointerException} is
	* thrown.  If the element structure would become invalid after the removal,
	* for example if the element is the document root element, {@code
	* IllegalArgumentException} is thrown.  If the current element structure is
	* invalid, {@code IllegalStateException} is thrown.</p>
	*
	* @param  elem                      the element to remove
	* @throws NullPointerException      if the element is {@code null}
	* @throws IllegalArgumentException  if the element could not be removed
	* @throws IllegalStateException     if the element structure is invalid
	*
	* @since  1.7
	*/
	@:require(java7) @:overload public function removeElement(elem : javax.swing.text.Element) : Void;
	
	/**
	* Adds a new style into the logical style hierarchy.  Style attributes
	* resolve from bottom up so an attribute specified in a child
	* will override an attribute specified in the parent.
	*
	* @param nm   the name of the style (must be unique within the
	*   collection of named styles).  The name may be null if the style
	*   is unnamed, but the caller is responsible
	*   for managing the reference returned as an unnamed style can't
	*   be fetched by name.  An unnamed style may be useful for things
	*   like character attribute overrides such as found in a style
	*   run.
	* @param parent the parent style.  This may be null if unspecified
	*   attributes need not be resolved in some other style.
	* @return the style
	*/
	@:overload public function addStyle(nm : String, parent : javax.swing.text.Style) : javax.swing.text.Style;
	
	/**
	* Removes a named style previously added to the document.
	*
	* @param nm  the name of the style to remove
	*/
	@:overload public function removeStyle(nm : String) : Void;
	
	/**
	* Fetches a named style previously added.
	*
	* @param nm  the name of the style
	* @return the style
	*/
	@:overload public function getStyle(nm : String) : javax.swing.text.Style;
	
	/**
	* Fetches the list of of style names.
	*
	* @return all the style names
	*/
	@:overload public function getStyleNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Sets the logical style to use for the paragraph at the
	* given position.  If attributes aren't explicitly set
	* for character and paragraph attributes they will resolve
	* through the logical style assigned to the paragraph, which
	* in turn may resolve through some hierarchy completely
	* independent of the element hierarchy in the document.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param pos the offset from the start of the document >= 0
	* @param s  the logical style to assign to the paragraph, null if none
	*/
	@:overload public function setLogicalStyle(pos : Int, s : javax.swing.text.Style) : Void;
	
	/**
	* Fetches the logical style assigned to the paragraph
	* represented by the given position.
	*
	* @param p the location to translate to a paragraph
	*  and determine the logical style assigned >= 0.  This
	*  is an offset from the start of the document.
	* @return the style, null if none
	*/
	@:overload public function getLogicalStyle(p : Int) : javax.swing.text.Style;
	
	/**
	* Sets attributes for some part of the document.
	* A write lock is held by this operation while changes
	* are being made, and a DocumentEvent is sent to the listeners
	* after the change has been successfully completed.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offset the offset in the document >= 0
	* @param length the length >= 0
	* @param s the attributes
	* @param replace true if the previous attributes should be replaced
	*  before setting the new attributes
	*/
	@:overload public function setCharacterAttributes(offset : Int, length : Int, s : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Sets attributes for a paragraph.
	* <p>
	* This method is thread safe, although most Swing methods
	* are not. Please see
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How
	* to Use Threads</A> for more information.
	*
	* @param offset the offset into the paragraph >= 0
	* @param length the number of characters affected >= 0
	* @param s the attributes
	* @param replace whether to replace existing attributes, or merge them
	*/
	@:overload public function setParagraphAttributes(offset : Int, length : Int, s : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Gets the paragraph element at the offset <code>pos</code>.
	* A paragraph consists of at least one child Element, which is usually
	* a leaf.
	*
	* @param pos the starting offset >= 0
	* @return the element
	*/
	@:overload override public function getParagraphElement(pos : Int) : javax.swing.text.Element;
	
	/**
	* Gets a character element based on a position.
	*
	* @param pos the position in the document >= 0
	* @return the element
	*/
	@:overload public function getCharacterElement(pos : Int) : javax.swing.text.Element;
	
	/**
	* Updates document structure as a result of text insertion.  This
	* will happen within a write lock.  This implementation simply
	* parses the inserted content for line breaks and builds up a set
	* of instructions for the element buffer.
	*
	* @param chng a description of the document change
	* @param attr the attributes
	*/
	@:overload private function insertUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent, attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Updates document structure as a result of text removal.
	*
	* @param chng a description of the document change
	*/
	@:overload private function removeUpdate(chng : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Creates the root element to be used to represent the
	* default document structure.
	*
	* @return the element base
	*/
	@:overload private function createDefaultRoot() : javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement;
	
	/**
	* Gets the foreground color from an attribute set.
	*
	* @param attr the attribute set
	* @return the color
	*/
	@:overload public function getForeground(attr : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Gets the background color from an attribute set.
	*
	* @param attr the attribute set
	* @return the color
	*/
	@:overload public function getBackground(attr : javax.swing.text.AttributeSet) : java.awt.Color;
	
	/**
	* Gets the font from an attribute set.
	*
	* @param attr the attribute set
	* @return the font
	*/
	@:overload public function getFont(attr : javax.swing.text.AttributeSet) : java.awt.Font;
	
	/**
	* Called when any of this document's styles have changed.
	* Subclasses may wish to be intelligent about what gets damaged.
	*
	* @param style The Style that has changed.
	*/
	@:overload private function styleChanged(style : javax.swing.text.Style) : Void;
	
	/**
	* Adds a document listener for notification of any changes.
	*
	* @param listener the listener
	* @see Document#addDocumentListener
	*/
	@:overload override public function addDocumentListener(listener : javax.swing.event.DocumentListener) : Void;
	
	/**
	* Removes a document listener.
	*
	* @param listener the listener
	* @see Document#removeDocumentListener
	*/
	@:overload override public function removeDocumentListener(listener : javax.swing.event.DocumentListener) : Void;
	
	/**
	* The default size of the initial content buffer.
	*/
	public static var BUFFER_SIZE_DEFAULT(default, null) : Int;
	
	private var buffer : DefaultStyledDocument_ElementBuffer;
	
	
}
/**
* Default root element for a document... maps out the
* paragraphs/lines contained.
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
@:native('javax$swing$text$DefaultStyledDocument$SectionElement') extern class DefaultStyledDocument_SectionElement extends javax.swing.text.AbstractDocument.AbstractDocument_BranchElement
{
	/**
	* Creates a new SectionElement.
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the name of the element.
	*
	* @return the name
	*/
	@:overload override public function getName() : String;
	
	
}
/**
* Specification for building elements.
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
@:native('javax$swing$text$DefaultStyledDocument$ElementSpec') extern class DefaultStyledDocument_ElementSpec
{
	/**
	* A possible value for getType.  This specifies
	* that this record type is a start tag and
	* represents markup that specifies the start
	* of an element.
	*/
	public static var StartTagType(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getType.  This specifies
	* that this record type is a end tag and
	* represents markup that specifies the end
	* of an element.
	*/
	public static var EndTagType(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getType.  This specifies
	* that this record type represents content.
	*/
	public static var ContentType(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getDirection.  This specifies
	* that the data associated with this record should
	* be joined to what precedes it.
	*/
	public static var JoinPreviousDirection(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getDirection.  This specifies
	* that the data associated with this record should
	* be joined to what follows it.
	*/
	public static var JoinNextDirection(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getDirection.  This specifies
	* that the data associated with this record should
	* be used to originate a new element.  This would be
	* the normal value.
	*/
	public static var OriginateDirection(default, null) : java.StdTypes.Int16;
	
	/**
	* A possible value for getDirection.  This specifies
	* that the data associated with this record should
	* be joined to the fractured element.
	*/
	public static var JoinFractureDirection(default, null) : java.StdTypes.Int16;
	
	/**
	* Constructor useful for markup when the markup will not
	* be stored in the document.
	*
	* @param a the attributes for the element
	* @param type the type of the element (StartTagType, EndTagType,
	*  ContentType)
	*/
	@:overload public function new(a : javax.swing.text.AttributeSet, type : java.StdTypes.Int16) : Void;
	
	/**
	* Constructor for parsing inside the document when
	* the data has already been added, but len information
	* is needed.
	*
	* @param a the attributes for the element
	* @param type the type of the element (StartTagType, EndTagType,
	*  ContentType)
	* @param len the length >= 0
	*/
	@:overload public function new(a : javax.swing.text.AttributeSet, type : java.StdTypes.Int16, len : Int) : Void;
	
	/**
	* Constructor for creating a spec externally for batch
	* input of content and markup into the document.
	*
	* @param a the attributes for the element
	* @param type the type of the element (StartTagType, EndTagType,
	*  ContentType)
	* @param txt the text for the element
	* @param offs the offset into the text >= 0
	* @param len the length of the text >= 0
	*/
	@:overload public function new(a : javax.swing.text.AttributeSet, type : java.StdTypes.Int16, txt : java.NativeArray<java.StdTypes.Char16>, offs : Int, len : Int) : Void;
	
	/**
	* Sets the element type.
	*
	* @param type the type of the element (StartTagType, EndTagType,
	*  ContentType)
	*/
	@:overload public function setType(type : java.StdTypes.Int16) : Void;
	
	/**
	* Gets the element type.
	*
	* @return  the type of the element (StartTagType, EndTagType,
	*  ContentType)
	*/
	@:overload public function getType() : java.StdTypes.Int16;
	
	/**
	* Sets the direction.
	*
	* @param direction the direction (JoinPreviousDirection,
	*   JoinNextDirection)
	*/
	@:overload public function setDirection(direction : java.StdTypes.Int16) : Void;
	
	/**
	* Gets the direction.
	*
	* @return the direction (JoinPreviousDirection, JoinNextDirection)
	*/
	@:overload public function getDirection() : java.StdTypes.Int16;
	
	/**
	* Gets the element attributes.
	*
	* @return the attribute set
	*/
	@:overload public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the array of characters.
	*
	* @return the array
	*/
	@:overload public function getArray() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Gets the starting offset.
	*
	* @return the offset >= 0
	*/
	@:overload public function getOffset() : Int;
	
	/**
	* Gets the length.
	*
	* @return the length >= 0
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Converts the element to a string.
	*
	* @return the string
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Class to manage changes to the element
* hierarchy.
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
@:native('javax$swing$text$DefaultStyledDocument$ElementBuffer') extern class DefaultStyledDocument_ElementBuffer implements java.io.Serializable
{
	/**
	* Creates a new ElementBuffer.
	*
	* @param root the root element
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(root : javax.swing.text.Element) : Void;
	
	/**
	* Gets the root element.
	*
	* @return the root element
	*/
	@:overload public function getRootElement() : javax.swing.text.Element;
	
	/**
	* Inserts new content.
	*
	* @param offset the starting offset >= 0
	* @param length the length >= 0
	* @param data the data to insert
	* @param de the event capturing this edit
	*/
	@:overload public function insert(offset : Int, length : Int, data : java.NativeArray<DefaultStyledDocument_ElementSpec>, de : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Removes content.
	*
	* @param offset the starting offset >= 0
	* @param length the length >= 0
	* @param de the event capturing this edit
	*/
	@:overload public function remove(offset : Int, length : Int, de : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Changes content.
	*
	* @param offset the starting offset >= 0
	* @param length the length >= 0
	* @param de the event capturing this edit
	*/
	@:overload public function change(offset : Int, length : Int, de : javax.swing.text.AbstractDocument.AbstractDocument_DefaultDocumentEvent) : Void;
	
	/**
	* Inserts an update into the document.
	*
	* @param data the elements to insert
	*/
	@:overload private function insertUpdate(data : java.NativeArray<DefaultStyledDocument_ElementSpec>) : Void;
	
	/**
	* Updates the element structure in response to a removal from the
	* associated sequence in the document.  Any elements consumed by the
	* span of the removal are removed.
	*/
	@:overload private function removeUpdate() : Void;
	
	/**
	* Updates the element structure in response to a change in the
	* document.
	*/
	@:overload private function changeUpdate() : Void;
	
	/**
	* Creates a copy of this element, with a different
	* parent.
	*
	* @param parent the parent element
	* @param clonee the element to be cloned
	* @return the copy
	*/
	@:overload public function clone(parent : javax.swing.text.Element, clonee : javax.swing.text.Element) : javax.swing.text.Element;
	
	
}
/*
* Internal record used to hold element change specifications
*/
@:native('javax$swing$text$DefaultStyledDocument$ElementBuffer$ElemChanges') @:internal extern class DefaultStyledDocument_ElementBuffer_ElemChanges
{
	@:overload public function toString() : String;
	
	
}
/**
* An UndoableEdit used to remember AttributeSet changes to an
* Element.
*/
@:native('javax$swing$text$DefaultStyledDocument$AttributeUndoableEdit') extern class DefaultStyledDocument_AttributeUndoableEdit extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload public function new(element : javax.swing.text.Element, newAttributes : javax.swing.text.AttributeSet, isReplacing : Bool) : Void;
	
	/**
	* Redoes a change.
	*
	* @exception CannotRedoException if the change cannot be redone
	*/
	@:overload override public function redo() : Void;
	
	/**
	* Undoes a change.
	*
	* @exception CannotUndoException if the change cannot be undone
	*/
	@:overload override public function undo() : Void;
	
	private var newAttributes : javax.swing.text.AttributeSet;
	
	private var copy : javax.swing.text.AttributeSet;
	
	private var isReplacing : Bool;
	
	private var element : javax.swing.text.Element;
	
	
}
/**
* UndoableEdit for changing the resolve parent of an Element.
*/
@:native('javax$swing$text$DefaultStyledDocument$StyleChangeUndoableEdit') @:internal extern class DefaultStyledDocument_StyleChangeUndoableEdit extends javax.swing.undo.AbstractUndoableEdit
{
	@:overload public function new(element : javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement, newStyle : javax.swing.text.Style) : Void;
	
	/**
	* Redoes a change.
	*
	* @exception CannotRedoException if the change cannot be redone
	*/
	@:overload override public function redo() : Void;
	
	/**
	* Undoes a change.
	*
	* @exception CannotUndoException if the change cannot be undone
	*/
	@:overload override public function undo() : Void;
	
	/** Element to change resolve parent of. */
	private var element : javax.swing.text.AbstractDocument.AbstractDocument_AbstractElement;
	
	/** New style. */
	private var newStyle : javax.swing.text.Style;
	
	/** Old style, before setting newStyle. */
	private var oldStyle : javax.swing.text.AttributeSet;
	
	
}
/**
* Base class for style change handlers with support for stale objects detection.
*/
@:native('javax$swing$text$DefaultStyledDocument$AbstractChangeHandler') @:internal extern class DefaultStyledDocument_AbstractChangeHandler implements javax.swing.event.ChangeListener
{
	/**
	* The ChangeListener wrapper which guards against dead documents.
	*/
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/* This has an implicit reference to the handler object.  */
@:native('javax$swing$text$DefaultStyledDocument$AbstractChangeHandler$DocReference') @:internal extern class DefaultStyledDocument_AbstractChangeHandler_DocReference extends java.lang.ref.WeakReference<DefaultStyledDocument>
{
	
}
/**
* Added to all the Styles. When instances of this receive a
* stateChanged method, styleChanged is invoked.
*/
@:native('javax$swing$text$DefaultStyledDocument$StyleChangeHandler') @:internal extern class DefaultStyledDocument_StyleChangeHandler extends DefaultStyledDocument_AbstractChangeHandler
{
	
}
/**
* Added to the StyleContext. When the StyleContext changes, this invokes
* <code>updateStylesListeningTo</code>.
*/
@:native('javax$swing$text$DefaultStyledDocument$StyleContextChangeHandler') @:internal extern class DefaultStyledDocument_StyleContextChangeHandler extends DefaultStyledDocument_AbstractChangeHandler
{
	
}
/**
* When run this creates a change event for the complete document
* and fires it.
*/
@:native('javax$swing$text$DefaultStyledDocument$ChangeUpdateRunnable') @:internal extern class DefaultStyledDocument_ChangeUpdateRunnable implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
