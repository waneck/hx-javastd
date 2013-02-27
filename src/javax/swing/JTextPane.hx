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
/**
* A text component that can be marked up with attributes that are
* represented graphically.
* You can find how-to information and examples of using text panes in
* <a href="http://java.sun.com/docs/books/tutorial/uiswing/components/text.html">Using Text Components</a>,
* a section in <em>The Java Tutorial.</em>
*
* <p>
* This component models paragraphs
* that are composed of runs of character level attributes.  Each
* paragraph may have a logical style attached to it which contains
* the default attributes to use if not overridden by attributes set
* on the paragraph or character run.  Components and images may
* be embedded in the flow of text.
* <p>
* <dl>
* <dt><b><font size=+1>Newlines</font></b>
* <dd>
* For a discussion on how newlines are handled, see
* <a href="text/DefaultEditorKit.html">DefaultEditorKit</a>.
* </dl>
*
* <p>
* <strong>Warning:</strong> Swing is not thread safe. For more
* information see <a
* href="package-summary.html#threading">Swing's Threading
* Policy</a>.
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
* @beaninfo
*   attribute: isContainer true
* description: A text component that can be marked up with attributes that are graphically represented.
*
* @author  Timothy Prinzing
* @see javax.swing.text.StyledEditorKit
*/
extern class JTextPane extends javax.swing.JEditorPane
{
	/**
	* Creates a new <code>JTextPane</code>.  A new instance of
	* <code>StyledEditorKit</code> is
	* created and set, and the document model set to <code>null</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new <code>JTextPane</code>, with a specified document model.
	* A new instance of <code>javax.swing.text.StyledEditorKit</code>
	*  is created and set.
	*
	* @param doc the document model
	*/
	@:overload public function new(doc : javax.swing.text.StyledDocument) : Void;
	
	/**
	* Returns the class ID for the UI.
	*
	* @return the string "TextPaneUI"
	*
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Associates the editor with a text document.  This
	* must be a <code>StyledDocument</code>.
	*
	* @param doc  the document to display/edit
	* @exception IllegalArgumentException  if <code>doc</code> can't
	*   be narrowed to a <code>StyledDocument</code> which is the
	*   required type of model for this text component
	*/
	@:overload override public function setDocument(doc : javax.swing.text.Document) : Void;
	
	/**
	* Associates the editor with a text document.
	* The currently registered factory is used to build a view for
	* the document, which gets displayed by the editor.
	*
	* @param doc  the document to display/edit
	*/
	@:overload public function setStyledDocument(doc : javax.swing.text.StyledDocument) : Void;
	
	/**
	* Fetches the model associated with the editor.
	*
	* @return the model
	*/
	@:overload public function getStyledDocument() : javax.swing.text.StyledDocument;
	
	/**
	* Replaces the currently selected content with new content
	* represented by the given string.  If there is no selection
	* this amounts to an insert of the given text.  If there
	* is no replacement text this amounts to a removal of the
	* current selection.  The replacement text will have the
	* attributes currently defined for input at the point of
	* insertion.  If the document is not editable, beep and return.
	*
	* @param content  the content to replace the selection with
	*/
	@:overload override public function replaceSelection(content : String) : Void;
	
	/**
	* Inserts a component into the document as a replacement
	* for the currently selected content.  If there is no
	* selection the component is effectively inserted at the
	* current position of the caret.  This is represented in
	* the associated document as an attribute of one character
	* of content.
	* <p>
	* The component given is the actual component used by the
	* JTextPane.  Since components cannot be a child of more than
	* one container, this method should not be used in situations
	* where the model is shared by text components.
	* <p>
	* The component is placed relative to the text baseline
	* according to the value returned by
	* <code>Component.getAlignmentY</code>.  For Swing components
	* this value can be conveniently set using the method
	* <code>JComponent.setAlignmentY</code>.  For example, setting
	* a value of <code>0.75</code> will cause 75 percent of the
	* component to be above the baseline, and 25 percent of the
	* component to be below the baseline.
	*
	* @param c    the component to insert
	*/
	@:overload public function insertComponent(c : java.awt.Component) : Void;
	
	/**
	* Inserts an icon into the document as a replacement
	* for the currently selected content.  If there is no
	* selection the icon is effectively inserted at the
	* current position of the caret.  This is represented in
	* the associated document as an attribute of one character
	* of content.
	*
	* @param g    the icon to insert
	* @see Icon
	*/
	@:overload public function insertIcon(g : javax.swing.Icon) : Void;
	
	/**
	* Adds a new style into the logical style hierarchy.  Style attributes
	* resolve from bottom up so an attribute specified in a child
	* will override an attribute specified in the parent.
	*
	* @param nm   the name of the style (must be unique within the
	*   collection of named styles).  The name may be <code>null</code>
	*   if the style is unnamed, but the caller is responsible
	*   for managing the reference returned as an unnamed style can't
	*   be fetched by name.  An unnamed style may be useful for things
	*   like character attribute overrides such as found in a style
	*   run.
	* @param parent the parent style.  This may be <code>null</code>
	*   if unspecified
	*   attributes need not be resolved in some other style.
	* @return the new <code>Style</code>
	*/
	@:overload public function addStyle(nm : String, parent : javax.swing.text.Style) : javax.swing.text.Style;
	
	/**
	* Removes a named non-<code>null</code> style previously added to
	* the document.
	*
	* @param nm  the name of the style to remove
	*/
	@:overload public function removeStyle(nm : String) : Void;
	
	/**
	* Fetches a named non-<code>null</code> style previously added.
	*
	* @param nm  the name of the style
	* @return the <code>Style</code>
	*/
	@:overload public function getStyle(nm : String) : javax.swing.text.Style;
	
	/**
	* Sets the logical style to use for the paragraph at the
	* current caret position.  If attributes aren't explicitly set
	* for character and paragraph attributes they will resolve
	* through the logical style assigned to the paragraph, which
	* in term may resolve through some hierarchy completely
	* independent of the element hierarchy in the document.
	*
	* @param s  the logical style to assign to the paragraph,
	*          or <code>null</code> for no style
	*/
	@:overload public function setLogicalStyle(s : javax.swing.text.Style) : Void;
	
	/**
	* Fetches the logical style assigned to the paragraph represented
	* by the current position of the caret, or <code>null</code>.
	*
	* @return the <code>Style</code>
	*/
	@:overload public function getLogicalStyle() : javax.swing.text.Style;
	
	/**
	* Fetches the character attributes in effect at the
	* current location of the caret, or <code>null</code>.
	*
	* @return the attributes, or <code>null</code>
	*/
	@:overload public function getCharacterAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Applies the given attributes to character
	* content.  If there is a selection, the attributes
	* are applied to the selection range.  If there
	* is no selection, the attributes are applied to
	* the input attribute set which defines the attributes
	* for any new text that gets inserted.
	*
	* @param attr the attributes
	* @param replace if true, then replace the existing attributes first
	*/
	@:overload public function setCharacterAttributes(attr : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Fetches the current paragraph attributes in effect
	* at the location of the caret, or <code>null</code> if none.
	*
	* @return the attributes
	*/
	@:overload public function getParagraphAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Applies the given attributes to paragraphs.  If
	* there is a selection, the attributes are applied
	* to the paragraphs that intersect the selection.
	* If there is no selection, the attributes are applied
	* to the paragraph at the current caret position.
	*
	* @param attr the non-<code>null</code> attributes
	* @param replace if true, replace the existing attributes first
	*/
	@:overload public function setParagraphAttributes(attr : javax.swing.text.AttributeSet, replace : Bool) : Void;
	
	/**
	* Gets the input attributes for the pane.
	*
	* @return the attributes
	*/
	@:overload public function getInputAttributes() : javax.swing.text.MutableAttributeSet;
	
	/**
	* Gets the editor kit.
	*
	* @return the editor kit
	*/
	@:overload @:final private function getStyledEditorKit() : javax.swing.text.StyledEditorKit;
	
	/**
	* Creates the <code>EditorKit</code> to use by default.  This
	* is implemented to return <code>javax.swing.text.StyledEditorKit</code>.
	*
	* @return the editor kit
	*/
	@:overload override private function createDefaultEditorKit() : javax.swing.text.EditorKit;
	
	/**
	* Sets the currently installed kit for handling
	* content.  This is the bound property that
	* establishes the content type of the editor.
	*
	* @param kit the desired editor behavior
	* @exception IllegalArgumentException if kit is not a
	*          <code>StyledEditorKit</code>
	*/
	@:overload @:final override public function setEditorKit(kit : javax.swing.text.EditorKit) : Void;
	
	/**
	* Returns a string representation of this <code>JTextPane</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JTextPane</code>
	*/
	@:overload override private function paramString() : String;
	
	
}
