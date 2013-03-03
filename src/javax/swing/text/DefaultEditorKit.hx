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
extern class DefaultEditorKit extends javax.swing.text.EditorKit
{
	/**
	* default constructor for DefaultEditorKit
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Gets the MIME type of the data that this
	* kit represents support for.  The default
	* is <code>text/plain</code>.
	*
	* @return the type
	*/
	@:overload @:public override public function getContentType() : String;
	
	/**
	* Fetches a factory that is suitable for producing
	* views of any models that are produced by this
	* kit.  The default is to have the UI produce the
	* factory, so this method has no implementation.
	*
	* @return the view factory
	*/
	@:overload @:public override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Fetches the set of commands that can be used
	* on a text component that is using a model and
	* view produced by this kit.
	*
	* @return the command list
	*/
	@:overload @:public override public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Fetches a caret that can navigate through views
	* produced by the associated ViewFactory.
	*
	* @return the caret
	*/
	@:overload @:public override public function createCaret() : javax.swing.text.Caret;
	
	/**
	* Creates an uninitialized text storage model (PlainDocument)
	* that is appropriate for this type of editor.
	*
	* @return the model
	*/
	@:overload @:public override public function createDefaultDocument() : javax.swing.text.Document;
	
	/**
	* Inserts content from the given stream which is expected
	* to be in a format appropriate for this kind of content
	* handler.
	*
	* @param in  The stream to read from
	* @param doc The destination for the insertion.
	* @param pos The location in the document to place the
	*   content >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public override public function read(_in : java.io.InputStream, doc : javax.swing.text.Document, pos : Int) : Void;
	
	/**
	* Writes content from a document to the given stream
	* in a format appropriate for this kind of content handler.
	*
	* @param out The stream to write to
	* @param doc The source for the write.
	* @param pos The location in the document to fetch the
	*   content >= 0.
	* @param len The amount to write out >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public override public function write(out : java.io.OutputStream, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	/**
	* Inserts content from the given stream, which will be
	* treated as plain text.
	*
	* @param in  The stream to read from
	* @param doc The destination for the insertion.
	* @param pos The location in the document to place the
	*   content >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos represents an invalid
	*   location within the document.
	*/
	@:overload @:public override public function read(_in : java.io.Reader, doc : javax.swing.text.Document, pos : Int) : Void;
	
	/**
	* Writes content from a document to the given stream
	* as plain text.
	*
	* @param out  The stream to write to
	* @param doc The source for the write.
	* @param pos The location in the document to fetch the
	*   content from >= 0.
	* @param len The amount to write out >= 0.
	* @exception IOException on any I/O error
	* @exception BadLocationException if pos is not within 0 and
	*   the length of the document.
	*/
	@:overload @:public override public function write(out : java.io.Writer, doc : javax.swing.text.Document, pos : Int, len : Int) : Void;
	
	/**
	* When reading a document if a CRLF is encountered a property
	* with this name is added and the value will be "\r\n".
	*/
	@:public @:static @:final public static var EndOfLineStringProperty(default, null) : String;
	
	/**
	* Name of the action to place content into the associated
	* document.  If there is a selection, it is removed before
	* the new content is added.
	* @see #getActions
	*/
	@:public @:static @:final public static var insertContentAction(default, null) : String;
	
	/**
	* Name of the action to place a line/paragraph break into
	* the document.  If there is a selection, it is removed before
	* the break is added.
	* @see #getActions
	*/
	@:public @:static @:final public static var insertBreakAction(default, null) : String;
	
	/**
	* Name of the action to place a tab character into
	* the document.  If there is a selection, it is removed before
	* the tab is added.
	* @see #getActions
	*/
	@:public @:static @:final public static var insertTabAction(default, null) : String;
	
	/**
	* Name of the action to delete the character of content that
	* precedes the current caret position.
	* @see #getActions
	*/
	@:public @:static @:final public static var deletePrevCharAction(default, null) : String;
	
	/**
	* Name of the action to delete the character of content that
	* follows the current caret position.
	* @see #getActions
	*/
	@:public @:static @:final public static var deleteNextCharAction(default, null) : String;
	
	/**
	* Name of the action to delete the word that
	* follows the beginning of the selection.
	* @see #getActions
	* @see JTextComponent#getSelectionStart
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var deleteNextWordAction(default, null) : String;
	
	/**
	* Name of the action to delete the word that
	* precedes the beginning of the selection.
	* @see #getActions
	* @see JTextComponent#getSelectionStart
	* @since 1.6
	*/
	@:require(java6) @:public @:static @:final public static var deletePrevWordAction(default, null) : String;
	
	/**
	* Name of the action to set the editor into read-only
	* mode.
	* @see #getActions
	*/
	@:public @:static @:final public static var readOnlyAction(default, null) : String;
	
	/**
	* Name of the action to set the editor into writeable
	* mode.
	* @see #getActions
	*/
	@:public @:static @:final public static var writableAction(default, null) : String;
	
	/**
	* Name of the action to cut the selected region
	* and place the contents into the system clipboard.
	* @see JTextComponent#cut
	* @see #getActions
	*/
	@:public @:static @:final public static var cutAction(default, null) : String;
	
	/**
	* Name of the action to copy the selected region
	* and place the contents into the system clipboard.
	* @see JTextComponent#copy
	* @see #getActions
	*/
	@:public @:static @:final public static var copyAction(default, null) : String;
	
	/**
	* Name of the action to paste the contents of the
	* system clipboard into the selected region, or before the
	* caret if nothing is selected.
	* @see JTextComponent#paste
	* @see #getActions
	*/
	@:public @:static @:final public static var pasteAction(default, null) : String;
	
	/**
	* Name of the action to create a beep.
	* @see #getActions
	*/
	@:public @:static @:final public static var beepAction(default, null) : String;
	
	/**
	* Name of the action to page up vertically.
	* @see #getActions
	*/
	@:public @:static @:final public static var pageUpAction(default, null) : String;
	
	/**
	* Name of the action to page down vertically.
	* @see #getActions
	*/
	@:public @:static @:final public static var pageDownAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically forward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var forwardAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically backward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var backwardAction(default, null) : String;
	
	/**
	* Name of the Action for extending the selection
	* by moving the caret logically forward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionForwardAction(default, null) : String;
	
	/**
	* Name of the Action for extending the selection
	* by moving the caret logically backward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionBackwardAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically upward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var upAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically downward one position.
	* @see #getActions
	*/
	@:public @:static @:final public static var downAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically upward one position, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionUpAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* logically downward one position, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionDownAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a word.
	* @see #getActions
	*/
	@:public @:static @:final public static var beginWordAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* to the end of a word.
	* @see #getActions
	*/
	@:public @:static @:final public static var endWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a word, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionBeginWordAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* to the end of a word, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionEndWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret to the
	* beginning of the previous word.
	* @see #getActions
	*/
	@:public @:static @:final public static var previousWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret to the
	* beginning of the next word.
	* @see #getActions
	*/
	@:public @:static @:final public static var nextWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the selection to the
	* beginning of the previous word, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionPreviousWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the selection to the
	* beginning of the next word, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionNextWordAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a line.
	* @see #getActions
	*/
	@:public @:static @:final public static var beginLineAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the end of a line.
	* @see #getActions
	*/
	@:public @:static @:final public static var endLineAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a line, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionBeginLineAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the end of a line, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionEndLineAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a paragraph.
	* @see #getActions
	*/
	@:public @:static @:final public static var beginParagraphAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the end of a paragraph.
	* @see #getActions
	*/
	@:public @:static @:final public static var endParagraphAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of a paragraph, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionBeginParagraphAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the end of a paragraph, extending the selection.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionEndParagraphAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of the document.
	* @see #getActions
	*/
	@:public @:static @:final public static var beginAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the end of the document.
	* @see #getActions
	*/
	@:public @:static @:final public static var endAction(default, null) : String;
	
	/**
	* Name of the <code>Action</code> for moving the caret
	* to the beginning of the document.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionBeginAction(default, null) : String;
	
	/**
	* Name of the Action for moving the caret
	* to the end of the document.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectionEndAction(default, null) : String;
	
	/**
	* Name of the Action for selecting a word around the caret.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectWordAction(default, null) : String;
	
	/**
	* Name of the Action for selecting a line around the caret.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectLineAction(default, null) : String;
	
	/**
	* Name of the Action for selecting a paragraph around the caret.
	* @see #getActions
	*/
	@:public @:static @:final public static var selectParagraphAction(default, null) : String;
	
	/**
	* Name of the Action for selecting the entire document
	* @see #getActions
	*/
	@:public @:static @:final public static var selectAllAction(default, null) : String;
	
	/**
	* Name of the action that is executed by default if
	* a <em>key typed event</em> is received and there
	* is no keymap entry.
	* @see #getActions
	*/
	@:public @:static @:final public static var defaultKeyTypedAction(default, null) : String;
	
	
}
/**
* The action that is executed by default if
* a <em>key typed event</em> is received and there
* is no keymap entry.  There is a variation across
* different VM's in what gets sent as a <em>key typed</em>
* event, and this action tries to filter out the undesired
* events.  This filters the control characters and those
* with the ALT modifier.  It allows Control-Alt sequences
* through as these form legitimate unicode characters on
* some PC keyboards.
* <p>
* If the event doesn't get filtered, it will try to insert
* content into the text editor.  The content is fetched
* from the command string of the ActionEvent.  The text
* entry is done through the <code>replaceSelection</code>
* method on the target text component.  This is the
* action that will be fired for most text entry tasks.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#defaultKeyTypedAction
* @see DefaultEditorKit#getActions
* @see Keymap#setDefaultAction
* @see Keymap#getDefaultAction
*/
@:native('javax$swing$text$DefaultEditorKit$DefaultKeyTypedAction') extern class DefaultEditorKit_DefaultKeyTypedAction extends javax.swing.text.TextAction
{
	/**
	* Creates this object with the appropriate identifier.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Places content into the associated document.
* If there is a selection, it is removed before
* the new content is added.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#insertContentAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$InsertContentAction') extern class DefaultEditorKit_InsertContentAction extends javax.swing.text.TextAction
{
	/**
	* Creates this object with the appropriate identifier.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Places a line/paragraph break into the document.
* If there is a selection, it is removed before
* the break is added.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#insertBreakAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$InsertBreakAction') extern class DefaultEditorKit_InsertBreakAction extends javax.swing.text.TextAction
{
	/**
	* Creates this object with the appropriate identifier.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Places a tab character into the document. If there
* is a selection, it is removed before the tab is added.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#insertTabAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$InsertTabAction') extern class DefaultEditorKit_InsertTabAction extends javax.swing.text.TextAction
{
	/**
	* Creates this object with the appropriate identifier.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Deletes the character of content that precedes the
* current caret position.
* @see DefaultEditorKit#deletePrevCharAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$DeletePrevCharAction') @:internal extern class DefaultEditorKit_DeletePrevCharAction extends javax.swing.text.TextAction
{
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Deletes the character of content that follows the
* current caret position.
* @see DefaultEditorKit#deleteNextCharAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$DeleteNextCharAction') @:internal extern class DefaultEditorKit_DeleteNextCharAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Deletes the word that precedes/follows the beginning of the selection.
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$DeleteWordAction') @:internal extern class DefaultEditorKit_DeleteWordAction extends javax.swing.text.TextAction
{
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Sets the editor into read-only mode.
* @see DefaultEditorKit#readOnlyAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$ReadOnlyAction') @:internal extern class DefaultEditorKit_ReadOnlyAction extends javax.swing.text.TextAction
{
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Sets the editor into writeable mode.
* @see DefaultEditorKit#writableAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$WritableAction') @:internal extern class DefaultEditorKit_WritableAction extends javax.swing.text.TextAction
{
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Cuts the selected region and place its contents
* into the system clipboard.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#cutAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$CutAction') extern class DefaultEditorKit_CutAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Copies the selected region and place its contents
* into the system clipboard.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#copyAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$CopyAction') extern class DefaultEditorKit_CopyAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Pastes the contents of the system clipboard into the
* selected region, or before the caret if nothing is
* selected.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#pasteAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$PasteAction') extern class DefaultEditorKit_PasteAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Creates a beep.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see DefaultEditorKit#beepAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$BeepAction') extern class DefaultEditorKit_BeepAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new() : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Scrolls up/down vertically.  The select version of this action extends
* the selection, instead of simply moving the caret.
*
* @see DefaultEditorKit#pageUpAction
* @see DefaultEditorKit#pageDownAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$VerticalPageAction') @:internal extern class DefaultEditorKit_VerticalPageAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new(nm : String, direction : Int, select : Bool) : Void;
	
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Pages one view to the left or right.
*/
@:native('javax$swing$text$DefaultEditorKit$PageAction') @:internal extern class DefaultEditorKit_PageAction extends javax.swing.text.TextAction
{
	/** Create this object with the appropriate identifier. */
	@:overload @:public public function new(nm : String, left : Bool, select : Bool) : Void;
	
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$text$DefaultEditorKit$DumpModelAction') @:internal extern class DefaultEditorKit_DumpModelAction extends javax.swing.text.TextAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Action to move the selection by way of the
* getNextVisualPositionFrom method. Constructor indicates direction
* to use.
*/
@:native('javax$swing$text$DefaultEditorKit$NextVisualPositionAction') @:internal extern class DefaultEditorKit_NextVisualPositionAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the beginning of the word.
* @see DefaultEditorKit#beginWordAction
* @see DefaultEditorKit#selectBeginWordAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$BeginWordAction') @:internal extern class DefaultEditorKit_BeginWordAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the end of the word.
* @see DefaultEditorKit#endWordAction
* @see DefaultEditorKit#selectEndWordAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$EndWordAction') @:internal extern class DefaultEditorKit_EndWordAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the beginning of the previous word.
* @see DefaultEditorKit#previousWordAction
* @see DefaultEditorKit#selectPreviousWordAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$PreviousWordAction') @:internal extern class DefaultEditorKit_PreviousWordAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the next of the word.
* @see DefaultEditorKit#nextWordAction
* @see DefaultEditorKit#selectNextWordAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$NextWordAction') @:internal extern class DefaultEditorKit_NextWordAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the beginning of the line.
* @see DefaultEditorKit#beginLineAction
* @see DefaultEditorKit#selectBeginLineAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$BeginLineAction') @:internal extern class DefaultEditorKit_BeginLineAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the end of the line.
* @see DefaultEditorKit#endLineAction
* @see DefaultEditorKit#selectEndLineAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$EndLineAction') @:internal extern class DefaultEditorKit_EndLineAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the beginning of the paragraph.
* @see DefaultEditorKit#beginParagraphAction
* @see DefaultEditorKit#selectBeginParagraphAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$BeginParagraphAction') @:internal extern class DefaultEditorKit_BeginParagraphAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Position the caret to the end of the paragraph.
* @see DefaultEditorKit#endParagraphAction
* @see DefaultEditorKit#selectEndParagraphAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$EndParagraphAction') @:internal extern class DefaultEditorKit_EndParagraphAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Move the caret to the beginning of the document.
* @see DefaultEditorKit#beginAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$BeginAction') @:internal extern class DefaultEditorKit_BeginAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Move the caret to the end of the document.
* @see DefaultEditorKit#endAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$EndAction') @:internal extern class DefaultEditorKit_EndAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Select the word around the caret
* @see DefaultEditorKit#endAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$SelectWordAction') @:internal extern class DefaultEditorKit_SelectWordAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Select the line around the caret
* @see DefaultEditorKit#endAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$SelectLineAction') @:internal extern class DefaultEditorKit_SelectLineAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Select the paragraph around the caret
* @see DefaultEditorKit#endAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$SelectParagraphAction') @:internal extern class DefaultEditorKit_SelectParagraphAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Select the entire document
* @see DefaultEditorKit#endAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$SelectAllAction') @:internal extern class DefaultEditorKit_SelectAllAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Remove the selection, if any.
* @see DefaultEditorKit#unselectAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$UnselectAction') @:internal extern class DefaultEditorKit_UnselectAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/*
* Toggles the ComponentOrientation of the text component.
* @see DefaultEditorKit#toggleComponentOrientationAction
* @see DefaultEditorKit#getActions
*/
@:native('javax$swing$text$DefaultEditorKit$ToggleComponentOrientationAction') @:internal extern class DefaultEditorKit_ToggleComponentOrientationAction extends javax.swing.text.TextAction
{
	/** The operation to perform when this action is triggered. */
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
