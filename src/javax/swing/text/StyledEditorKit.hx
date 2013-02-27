package javax.swing.text;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class StyledEditorKit extends javax.swing.text.DefaultEditorKit
{
	/**
	* Creates a new EditorKit used for styled documents.
	*/
	@:overload public function new() : Void;
	
	/**
	* Gets the input attributes for the pane.  When
	* the caret moves and there is no selection, the
	* input attributes are automatically mutated to
	* reflect the character attributes of the current
	* caret location.  The styled editing actions
	* use the input attributes to carry out their
	* actions.
	*
	* @return the attribute set
	*/
	@:overload override public function getInputAttributes() : javax.swing.text.MutableAttributeSet;
	
	/**
	* Fetches the element representing the current
	* run of character attributes for the caret.
	*
	* @return the element
	*/
	@:overload public function getCharacterAttributeRun() : javax.swing.text.Element;
	
	/**
	* Fetches the command list for the editor.  This is
	* the list of commands supported by the superclass
	* augmented by the collection of commands defined
	* locally for style operations.
	*
	* @return the command list
	*/
	@:overload override public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Creates an uninitialized text storage model
	* that is appropriate for this type of editor.
	*
	* @return the model
	*/
	@:overload override public function createDefaultDocument() : javax.swing.text.Document;
	
	/**
	* Called when the kit is being installed into
	* a JEditorPane.
	*
	* @param c the JEditorPane
	*/
	@:overload override public function install(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Called when the kit is being removed from the
	* JEditorPane.  This is used to unregister any
	* listeners that were attached.
	*
	* @param c the JEditorPane
	*/
	@:overload override public function deinstall(c : javax.swing.JEditorPane) : Void;
	
	/**
	* Fetches a factory that is suitable for producing
	* views of any models that are produced by this
	* kit.  This is implemented to return View implementations
	* for the following kinds of elements:
	* <ul>
	* <li>AbstractDocument.ContentElementName
	* <li>AbstractDocument.ParagraphElementName
	* <li>AbstractDocument.SectionElementName
	* <li>StyleConstants.ComponentElementName
	* <li>StyleConstants.IconElementName
	* </ul>
	*
	* @return the factory
	*/
	@:overload override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Creates a copy of the editor kit.
	*
	* @return the copy
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* Copies the key/values in <code>element</code>s AttributeSet into
	* <code>set</code>. This does not copy component, icon, or element
	* names attributes. Subclasses may wish to refine what is and what
	* isn't copied here. But be sure to first remove all the attributes that
	* are in <code>set</code>.<p>
	* This is called anytime the caret moves over a different location.
	*
	*/
	@:overload private function createInputAttributes(element : javax.swing.text.Element, set : javax.swing.text.MutableAttributeSet) : Void;
	
	
}
/**
* Tracks caret movement and keeps the input attributes set
* to reflect the current set of attribute definitions at the
* caret position.
* <p>This implements PropertyChangeListener to update the
* input attributes when the Document changes, as if the Document
* changes the attributes will almost certainly change.
*/
@:native('javax$swing$text$StyledEditorKit$AttributeTracker') @:internal extern class StyledEditorKit_AttributeTracker implements javax.swing.event.CaretListener implements java.beans.PropertyChangeListener implements java.io.Serializable
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function caretUpdate(e : javax.swing.event.CaretEvent) : Void;
	
	
}
@:native('javax$swing$text$StyledEditorKit$StyledViewFactory') @:internal extern class StyledEditorKit_StyledViewFactory implements javax.swing.text.ViewFactory
{
	@:overload public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	
}
/**
* An action that assumes it's being fired on a JEditorPane
* with a StyledEditorKit (or subclass) installed.  This has
* some convenience methods for causing character or paragraph
* level attribute changes.  The convenience methods will
* throw an IllegalArgumentException if the assumption of
* a StyledDocument, a JEditorPane, or a StyledEditorKit
* fail to be true.
* <p>
* The component that gets acted upon by the action
* will be the source of the ActionEvent if the source
* can be narrowed to a JEditorPane type.  If the source
* can't be narrowed, the most recently focused text
* component is changed.  If neither of these are the
* case, the action cannot be performed.
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
@:native('javax$swing$text$StyledEditorKit$StyledTextAction') extern class StyledEditorKit_StyledTextAction extends javax.swing.text.TextAction
{
	/**
	* Creates a new StyledTextAction from a string action name.
	*
	* @param nm the name of the action
	*/
	@:overload public function new(nm : String) : Void;
	
	/**
	* Gets the target editor for an action.
	*
	* @param e the action event
	* @return the editor
	*/
	@:overload @:final private function getEditor(e : java.awt.event.ActionEvent) : javax.swing.JEditorPane;
	
	/**
	* Gets the document associated with an editor pane.
	*
	* @param e the editor
	* @return the document
	* @exception IllegalArgumentException for the wrong document type
	*/
	@:overload @:final private function getStyledDocument(e : javax.swing.JEditorPane) : javax.swing.text.StyledDocument;
	
	/**
	* Gets the editor kit associated with an editor pane.
	*
	* @param e the editor pane
	* @return the kit
	* @exception IllegalArgumentException for the wrong document type
	*/
	@:overload @:final private function getStyledEditorKit(e : javax.swing.JEditorPane) : StyledEditorKit;
	
	/**
	* Applies the given attributes to character
	* content.  If there is a selection, the attributes
	* are applied to the selection range.  If there
	* is no selection, the attributes are applied to
	* the input attribute set which defines the attributes
	* for any new text that gets inserted.
	*
	* @param editor the editor
	* @param attr the attributes
	* @param replace   if true, then replace the existing attributes first
	*/
	@:overload @:final private function setCharacterAttributes(editor : javax.swing.JEditorPane, attr : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Applies the given attributes to paragraphs.  If
	* there is a selection, the attributes are applied
	* to the paragraphs that intersect the selection.
	* if there is no selection, the attributes are applied
	* to the paragraph at the current caret position.
	*
	* @param editor the editor
	* @param attr the attributes
	* @param replace   if true, replace the existing attributes first
	*/
	@:overload @:final private function setParagraphAttributes(editor : javax.swing.JEditorPane, attr : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	
}
/**
* An action to set the font family in the associated
* JEditorPane.  This will use the family specified as
* the command string on the ActionEvent if there is one,
* otherwise the family that was initialized with will be used.
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
@:native('javax$swing$text$StyledEditorKit$FontFamilyAction') extern class StyledEditorKit_FontFamilyAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Creates a new FontFamilyAction.
	*
	* @param nm the action name
	* @param family the font family
	*/
	@:overload public function new(nm : String, family : String) : Void;
	
	/**
	* Sets the font family.
	*
	* @param e the event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to set the font size in the associated
* JEditorPane.  This will use the size specified as
* the command string on the ActionEvent if there is one,
* otherwise the size that was initialized with will be used.
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
@:native('javax$swing$text$StyledEditorKit$FontSizeAction') extern class StyledEditorKit_FontSizeAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Creates a new FontSizeAction.
	*
	* @param nm the action name
	* @param size the font size
	*/
	@:overload public function new(nm : String, size : Int) : Void;
	
	/**
	* Sets the font size.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to set foreground color.  This sets the
* <code>StyleConstants.Foreground</code> attribute for the
* currently selected range of the target JEditorPane.
* This is done by calling
* <code>StyledDocument.setCharacterAttributes</code>
* on the styled document associated with the target
* JEditorPane.
* <p>
* If the target text component is specified as the
* source of the ActionEvent and there is a command string,
* the command string will be interpreted as the foreground
* color.  It will be interpreted by called
* <code>Color.decode</code>, and should therefore be
* legal input for that method.
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
@:native('javax$swing$text$StyledEditorKit$ForegroundAction') extern class StyledEditorKit_ForegroundAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Creates a new ForegroundAction.
	*
	* @param nm the action name
	* @param fg the foreground color
	*/
	@:overload public function new(nm : String, fg : java.awt.Color) : Void;
	
	/**
	* Sets the foreground color.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to set paragraph alignment.  This sets the
* <code>StyleConstants.Alignment</code> attribute for the
* currently selected range of the target JEditorPane.
* This is done by calling
* <code>StyledDocument.setParagraphAttributes</code>
* on the styled document associated with the target
* JEditorPane.
* <p>
* If the target text component is specified as the
* source of the ActionEvent and there is a command string,
* the command string will be interpreted as an integer
* that should be one of the legal values for the
* <code>StyleConstants.Alignment</code> attribute.
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
@:native('javax$swing$text$StyledEditorKit$AlignmentAction') extern class StyledEditorKit_AlignmentAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Creates a new AlignmentAction.
	*
	* @param nm the action name
	* @param a the alignment >= 0
	*/
	@:overload public function new(nm : String, a : Int) : Void;
	
	/**
	* Sets the alignment.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to toggle the bold attribute.
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
@:native('javax$swing$text$StyledEditorKit$BoldAction') extern class StyledEditorKit_BoldAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Constructs a new BoldAction.
	*/
	@:overload public function new() : Void;
	
	/**
	* Toggles the bold attribute.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to toggle the italic attribute.
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
@:native('javax$swing$text$StyledEditorKit$ItalicAction') extern class StyledEditorKit_ItalicAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Constructs a new ItalicAction.
	*/
	@:overload public function new() : Void;
	
	/**
	* Toggles the italic attribute.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* An action to toggle the underline attribute.
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
@:native('javax$swing$text$StyledEditorKit$UnderlineAction') extern class StyledEditorKit_UnderlineAction extends StyledEditorKit_StyledTextAction
{
	/**
	* Constructs a new UnderlineAction.
	*/
	@:overload public function new() : Void;
	
	/**
	* Toggles the Underline attribute.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* StyledInsertBreakAction has similar behavior to that of
* <code>DefaultEditorKit.InsertBreakAction</code>. That is when
* its <code>actionPerformed</code> method is invoked, a newline
* is inserted. Beyond that, this will reset the input attributes to
* what they were before the newline was inserted.
*/
@:native('javax$swing$text$StyledEditorKit$StyledInsertBreakAction') @:internal extern class StyledEditorKit_StyledInsertBreakAction extends StyledEditorKit_StyledTextAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
