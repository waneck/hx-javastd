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
extern class JTextComponent extends javax.swing.JComponent implements javax.swing.Scrollable implements javax.accessibility.Accessible
{
	/**
	* Creates a new <code>JTextComponent</code>.
	* Listeners for caret events are established, and the pluggable
	* UI installed.  The component is marked as editable.  No layout manager
	* is used, because layout is managed by the view subsystem of text.
	* The document model is set to <code>null</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Fetches the user-interface factory for this text-oriented editor.
	*
	* @return the factory
	*/
	@:overload public function getUI() : javax.swing.plaf.TextUI;
	
	/**
	* Sets the user-interface factory for this text-oriented editor.
	*
	* @param ui the factory
	*/
	@:overload public function setUI(ui : javax.swing.plaf.TextUI) : Void;
	
	/**
	* Reloads the pluggable UI.  The key used to fetch the
	* new interface is <code>getUIClassID()</code>.  The type of
	* the UI is <code>TextUI</code>.  <code>invalidate</code>
	* is called after setting the UI.
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Adds a caret listener for notification of any changes
	* to the caret.
	*
	* @param listener the listener to be added
	* @see javax.swing.event.CaretEvent
	*/
	@:overload public function addCaretListener(listener : javax.swing.event.CaretListener) : Void;
	
	/**
	* Removes a caret listener.
	*
	* @param listener the listener to be removed
	* @see javax.swing.event.CaretEvent
	*/
	@:overload public function removeCaretListener(listener : javax.swing.event.CaretListener) : Void;
	
	/**
	* Returns an array of all the caret listeners
	* registered on this text component.
	*
	* @return all of this component's <code>CaretListener</code>s
	*         or an empty
	*         array if no caret listeners are currently registered
	*
	* @see #addCaretListener
	* @see #removeCaretListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getCaretListeners() : java.NativeArray<javax.swing.event.CaretListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.  The listener list is processed in a
	* last-to-first manner.
	*
	* @param e the event
	* @see EventListenerList
	*/
	@:overload private function fireCaretUpdate(e : javax.swing.event.CaretEvent) : Void;
	
	/**
	* Associates the editor with a text document.
	* The currently registered factory is used to build a view for
	* the document, which gets displayed by the editor after revalidation.
	* A PropertyChange event ("document") is propagated to each listener.
	*
	* @param doc  the document to display/edit
	* @see #getDocument
	* @beaninfo
	*  description: the text document model
	*        bound: true
	*       expert: true
	*/
	@:overload public function setDocument(doc : javax.swing.text.Document) : Void;
	
	/**
	* Fetches the model associated with the editor.  This is
	* primarily for the UI to get at the minimal amount of
	* state required to be a text editor.  Subclasses will
	* return the actual type of the model which will typically
	* be something that extends Document.
	*
	* @return the model
	*/
	@:overload public function getDocument() : javax.swing.text.Document;
	
	@:overload override public function setComponentOrientation(o : java.awt.ComponentOrientation) : Void;
	
	/**
	* Fetches the command list for the editor.  This is
	* the list of commands supported by the plugged-in UI
	* augmented by the collection of commands that the
	* editor itself supports.  These are useful for binding
	* to events, such as in a keymap.
	*
	* @return the command list
	*/
	@:overload public function getActions() : java.NativeArray<javax.swing.Action>;
	
	/**
	* Sets margin space between the text component's border
	* and its text.  The text component's default <code>Border</code>
	* object will use this value to create the proper margin.
	* However, if a non-default border is set on the text component,
	* it is that <code>Border</code> object's responsibility to create the
	* appropriate margin space (else this property will effectively
	* be ignored).  This causes a redraw of the component.
	* A PropertyChange event ("margin") is sent to all listeners.
	*
	* @param m the space between the border and the text
	* @beaninfo
	*  description: desired space between the border and text area
	*        bound: true
	*/
	@:overload public function setMargin(m : java.awt.Insets) : Void;
	
	/**
	* Returns the margin between the text component's border and
	* its text.
	*
	* @return the margin
	*/
	@:overload public function getMargin() : java.awt.Insets;
	
	/**
	* Sets the <code>NavigationFilter</code>. <code>NavigationFilter</code>
	* is used by <code>DefaultCaret</code> and the default cursor movement
	* actions as a way to restrict the cursor movement.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function setNavigationFilter(filter : javax.swing.text.NavigationFilter) : Void;
	
	/**
	* Returns the <code>NavigationFilter</code>. <code>NavigationFilter</code>
	* is used by <code>DefaultCaret</code> and the default cursor movement
	* actions as a way to restrict the cursor movement. A null return value
	* implies the cursor movement and selection should not be restricted.
	*
	* @since 1.4
	* @return the NavigationFilter
	*/
	@:require(java4) @:overload public function getNavigationFilter() : javax.swing.text.NavigationFilter;
	
	/**
	* Fetches the caret that allows text-oriented navigation over
	* the view.
	*
	* @return the caret
	*/
	@:overload public function getCaret() : javax.swing.text.Caret;
	
	/**
	* Sets the caret to be used.  By default this will be set
	* by the UI that gets installed.  This can be changed to
	* a custom caret if desired.  Setting the caret results in a
	* PropertyChange event ("caret") being fired.
	*
	* @param c the caret
	* @see #getCaret
	* @beaninfo
	*  description: the caret used to select/navigate
	*        bound: true
	*       expert: true
	*/
	@:overload public function setCaret(c : javax.swing.text.Caret) : Void;
	
	/**
	* Fetches the object responsible for making highlights.
	*
	* @return the highlighter
	*/
	@:overload public function getHighlighter() : javax.swing.text.Highlighter;
	
	/**
	* Sets the highlighter to be used.  By default this will be set
	* by the UI that gets installed.  This can be changed to
	* a custom highlighter if desired.  The highlighter can be set to
	* <code>null</code> to disable it.
	* A PropertyChange event ("highlighter") is fired
	* when a new highlighter is installed.
	*
	* @param h the highlighter
	* @see #getHighlighter
	* @beaninfo
	*  description: object responsible for background highlights
	*        bound: true
	*       expert: true
	*/
	@:overload public function setHighlighter(h : javax.swing.text.Highlighter) : Void;
	
	/**
	* Sets the keymap to use for binding events to
	* actions.  Setting to <code>null</code> effectively disables
	* keyboard input.
	* A PropertyChange event ("keymap") is fired when a new keymap
	* is installed.
	*
	* @param map the keymap
	* @see #getKeymap
	* @beaninfo
	*  description: set of key event to action bindings to use
	*        bound: true
	*/
	@:overload public function setKeymap(map : javax.swing.text.Keymap) : Void;
	
	/**
	* Turns on or off automatic drag handling. In order to enable automatic
	* drag handling, this property should be set to {@code true}, and the
	* component's {@code TransferHandler} needs to be {@code non-null}.
	* The default value of the {@code dragEnabled} property is {@code false}.
	* <p>
	* The job of honoring this property, and recognizing a user drag gesture,
	* lies with the look and feel implementation, and in particular, the component's
	* {@code TextUI}. When automatic drag handling is enabled, most look and
	* feels (including those that subclass {@code BasicLookAndFeel}) begin a
	* drag and drop operation whenever the user presses the mouse button over
	* a selection and then moves the mouse a few pixels. Setting this property to
	* {@code true} can therefore have a subtle effect on how selections behave.
	* <p>
	* If a look and feel is used that ignores this property, you can still
	* begin a drag and drop operation by calling {@code exportAsDrag} on the
	* component's {@code TransferHandler}.
	*
	* @param b whether or not to enable automatic drag handling
	* @exception HeadlessException if
	*            <code>b</code> is <code>true</code> and
	*            <code>GraphicsEnvironment.isHeadless()</code>
	*            returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #getDragEnabled
	* @see #setTransferHandler
	* @see TransferHandler
	* @since 1.4
	*
	* @beaninfo
	*  description: determines whether automatic drag handling is enabled
	*        bound: false
	*/
	@:require(java4) @:overload public function setDragEnabled(b : Bool) : Void;
	
	/**
	* Returns whether or not automatic drag handling is enabled.
	*
	* @return the value of the {@code dragEnabled} property
	* @see #setDragEnabled
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDragEnabled() : Bool;
	
	/**
	* Sets the drop mode for this component. For backward compatibility,
	* the default for this property is <code>DropMode.USE_SELECTION</code>.
	* Usage of <code>DropMode.INSERT</code> is recommended, however,
	* for an improved user experience. It offers similar behavior of dropping
	* between text locations, but does so without affecting the actual text
	* selection and caret location.
	* <p>
	* <code>JTextComponents</code> support the following drop modes:
	* <ul>
	*    <li><code>DropMode.USE_SELECTION</code></li>
	*    <li><code>DropMode.INSERT</code></li>
	* </ul>
	* <p>
	* The drop mode is only meaningful if this component has a
	* <code>TransferHandler</code> that accepts drops.
	*
	* @param dropMode the drop mode to use
	* @throws IllegalArgumentException if the drop mode is unsupported
	*         or <code>null</code>
	* @see #getDropMode
	* @see #getDropLocation
	* @see #setTransferHandler
	* @see javax.swing.TransferHandler
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function setDropMode(dropMode : javax.swing.DropMode) : Void;
	
	/**
	* Returns the drop mode for this component.
	*
	* @return the drop mode for this component
	* @see #setDropMode
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropMode() : javax.swing.DropMode;
	
	/**
	* Returns the location that this component should visually indicate
	* as the drop location during a DnD operation over the component,
	* or {@code null} if no location is to currently be shown.
	* <p>
	* This method is not meant for querying the drop location
	* from a {@code TransferHandler}, as the drop location is only
	* set after the {@code TransferHandler}'s <code>canImport</code>
	* has returned and has allowed for the location to be shown.
	* <p>
	* When this property changes, a property change event with
	* name "dropLocation" is fired by the component.
	*
	* @return the drop location
	* @see #setDropMode
	* @see TransferHandler#canImport(TransferHandler.TransferSupport)
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropLocation() : javax.swing.TransferHandler.TransferHandler_DropLocation;
	
	/**
	* Fetches the keymap currently active in this text
	* component.
	*
	* @return the keymap
	*/
	@:overload public function getKeymap() : javax.swing.text.Keymap;
	
	/**
	* Adds a new keymap into the keymap hierarchy.  Keymap bindings
	* resolve from bottom up so an attribute specified in a child
	* will override an attribute specified in the parent.
	*
	* @param nm   the name of the keymap (must be unique within the
	*   collection of named keymaps in the document); the name may
	*   be <code>null</code> if the keymap is unnamed,
	*   but the caller is responsible for managing the reference
	*   returned as an unnamed keymap can't
	*   be fetched by name
	* @param parent the parent keymap; this may be <code>null</code> if
	*   unspecified bindings need not be resolved in some other keymap
	* @return the keymap
	*/
	@:overload public static function addKeymap(nm : String, parent : javax.swing.text.Keymap) : javax.swing.text.Keymap;
	
	/**
	* Removes a named keymap previously added to the document.  Keymaps
	* with <code>null</code> names may not be removed in this way.
	*
	* @param nm  the name of the keymap to remove
	* @return the keymap that was removed
	*/
	@:overload public static function removeKeymap(nm : String) : javax.swing.text.Keymap;
	
	/**
	* Fetches a named keymap previously added to the document.
	* This does not work with <code>null</code>-named keymaps.
	*
	* @param nm  the name of the keymap
	* @return the keymap
	*/
	@:native('getKeymap') @:overload public static function _getKeymap(nm : String) : javax.swing.text.Keymap;
	
	/**
	* <p>
	* Loads a keymap with a bunch of
	* bindings.  This can be used to take a static table of
	* definitions and load them into some keymap.  The following
	* example illustrates an example of binding some keys to
	* the cut, copy, and paste actions associated with a
	* JTextComponent.  A code fragment to accomplish
	* this might look as follows:
	* <pre><code>
	*
	*   static final JTextComponent.KeyBinding[] defaultBindings = {
	*     new JTextComponent.KeyBinding(
	*       KeyStroke.getKeyStroke(KeyEvent.VK_C, InputEvent.CTRL_MASK),
	*       DefaultEditorKit.copyAction),
	*     new JTextComponent.KeyBinding(
	*       KeyStroke.getKeyStroke(KeyEvent.VK_V, InputEvent.CTRL_MASK),
	*       DefaultEditorKit.pasteAction),
	*     new JTextComponent.KeyBinding(
	*       KeyStroke.getKeyStroke(KeyEvent.VK_X, InputEvent.CTRL_MASK),
	*       DefaultEditorKit.cutAction),
	*   };
	*
	*   JTextComponent c = new JTextPane();
	*   Keymap k = c.getKeymap();
	*   JTextComponent.loadKeymap(k, defaultBindings, c.getActions());
	*
	* </code></pre>
	* The sets of bindings and actions may be empty but must be
	* non-<code>null</code>.
	*
	* @param map the keymap
	* @param bindings the bindings
	* @param actions the set of actions
	*/
	@:overload public static function loadKeymap(map : javax.swing.text.Keymap, bindings : java.NativeArray<javax.swing.text.JTextComponent.JTextComponent_KeyBinding>, actions : java.NativeArray<javax.swing.Action>) : Void;
	
	/**
	* Fetches the current color used to render the
	* caret.
	*
	* @return the color
	*/
	@:overload public function getCaretColor() : java.awt.Color;
	
	/**
	* Sets the current color used to render the caret.
	* Setting to <code>null</code> effectively restores the default color.
	* Setting the color results in a PropertyChange event ("caretColor")
	* being fired.
	*
	* @param c the color
	* @see #getCaretColor
	* @beaninfo
	*  description: the color used to render the caret
	*        bound: true
	*    preferred: true
	*/
	@:overload public function setCaretColor(c : java.awt.Color) : Void;
	
	/**
	* Fetches the current color used to render the
	* selection.
	*
	* @return the color
	*/
	@:overload public function getSelectionColor() : java.awt.Color;
	
	/**
	* Sets the current color used to render the selection.
	* Setting the color to <code>null</code> is the same as setting
	* <code>Color.white</code>.  Setting the color results in a
	* PropertyChange event ("selectionColor").
	*
	* @param c the color
	* @see #getSelectionColor
	* @beaninfo
	*  description: color used to render selection background
	*        bound: true
	*    preferred: true
	*/
	@:overload public function setSelectionColor(c : java.awt.Color) : Void;
	
	/**
	* Fetches the current color used to render the
	* selected text.
	*
	* @return the color
	*/
	@:overload public function getSelectedTextColor() : java.awt.Color;
	
	/**
	* Sets the current color used to render the selected text.
	* Setting the color to <code>null</code> is the same as
	* <code>Color.black</code>. Setting the color results in a
	* PropertyChange event ("selectedTextColor") being fired.
	*
	* @param c the color
	* @see #getSelectedTextColor
	* @beaninfo
	*  description: color used to render selected text
	*        bound: true
	*    preferred: true
	*/
	@:overload public function setSelectedTextColor(c : java.awt.Color) : Void;
	
	/**
	* Fetches the current color used to render the
	* disabled text.
	*
	* @return the color
	*/
	@:overload public function getDisabledTextColor() : java.awt.Color;
	
	/**
	* Sets the current color used to render the
	* disabled text.  Setting the color fires off a
	* PropertyChange event ("disabledTextColor").
	*
	* @param c the color
	* @see #getDisabledTextColor
	* @beaninfo
	*  description: color used to render disabled text
	*        bound: true
	*    preferred: true
	*/
	@:overload public function setDisabledTextColor(c : java.awt.Color) : Void;
	
	/**
	* Replaces the currently selected content with new content
	* represented by the given string.  If there is no selection
	* this amounts to an insert of the given text.  If there
	* is no replacement text this amounts to a removal of the
	* current selection.
	* <p>
	* This is the method that is used by the default implementation
	* of the action for inserting content that gets bound to the
	* keymap actions.
	*
	* @param content  the content to replace the selection with
	*/
	@:overload public function replaceSelection(content : String) : Void;
	
	/**
	* Fetches a portion of the text represented by the
	* component.  Returns an empty string if length is 0.
	*
	* @param offs the offset >= 0
	* @param len the length >= 0
	* @return the text
	* @exception BadLocationException if the offset or length are invalid
	*/
	@:overload public function getText(offs : Int, len : Int) : String;
	
	/**
	* Converts the given location in the model to a place in
	* the view coordinate system.
	* The component must have a positive size for
	* this translation to be computed (i.e. layout cannot
	* be computed until the component has been sized).  The
	* component does not have to be visible or painted.
	*
	* @param pos the position >= 0
	* @return the coordinates as a rectangle, with (r.x, r.y) as the location
	*   in the coordinate system, or null if the component does
	*   not yet have a positive size.
	* @exception BadLocationException if the given position does not
	*   represent a valid location in the associated document
	* @see TextUI#modelToView
	*/
	@:overload public function modelToView(pos : Int) : java.awt.Rectangle;
	
	/**
	* Converts the given place in the view coordinate system
	* to the nearest representative location in the model.
	* The component must have a positive size for
	* this translation to be computed (i.e. layout cannot
	* be computed until the component has been sized).  The
	* component does not have to be visible or painted.
	*
	* @param pt the location in the view to translate
	* @return the offset >= 0 from the start of the document,
	*   or -1 if the component does not yet have a positive
	*   size.
	* @see TextUI#viewToModel
	*/
	@:overload public function viewToModel(pt : java.awt.Point) : Int;
	
	/**
	* Transfers the currently selected range in the associated
	* text model to the system clipboard, removing the contents
	* from the model.  The current selection is reset.  Does nothing
	* for <code>null</code> selections.
	*
	* @see java.awt.Toolkit#getSystemClipboard
	* @see java.awt.datatransfer.Clipboard
	*/
	@:overload public function cut() : Void;
	
	/**
	* Transfers the currently selected range in the associated
	* text model to the system clipboard, leaving the contents
	* in the text model.  The current selection remains intact.
	* Does nothing for <code>null</code> selections.
	*
	* @see java.awt.Toolkit#getSystemClipboard
	* @see java.awt.datatransfer.Clipboard
	*/
	@:overload public function copy() : Void;
	
	/**
	* Transfers the contents of the system clipboard into the
	* associated text model.  If there is a selection in the
	* associated view, it is replaced with the contents of the
	* clipboard.  If there is no selection, the clipboard contents
	* are inserted in front of the current insert position in
	* the associated view.  If the clipboard is empty, does nothing.
	*
	* @see #replaceSelection
	* @see java.awt.Toolkit#getSystemClipboard
	* @see java.awt.datatransfer.Clipboard
	*/
	@:overload public function paste() : Void;
	
	/**
	* Moves the caret to a new position, leaving behind a mark
	* defined by the last time <code>setCaretPosition</code> was
	* called.  This forms a selection.
	* If the document is <code>null</code>, does nothing. The position
	* must be between 0 and the length of the component's text or else
	* an exception is thrown.
	*
	* @param pos the position
	* @exception    IllegalArgumentException if the value supplied
	*               for <code>position</code> is less than zero or greater
	*               than the component's text length
	* @see #setCaretPosition
	*/
	@:overload public function moveCaretPosition(pos : Int) : Void;
	
	/**
	* The bound property name for the focus accelerator.
	*/
	public static var FOCUS_ACCELERATOR_KEY(default, null) : String;
	
	/**
	* Sets the key accelerator that will cause the receiving text
	* component to get the focus.  The accelerator will be the
	* key combination of the <em>alt</em> key and the character
	* given (converted to upper case).  By default, there is no focus
	* accelerator key.  Any previous key accelerator setting will be
	* superseded.  A '\0' key setting will be registered, and has the
	* effect of turning off the focus accelerator.  When the new key
	* is set, a PropertyChange event (FOCUS_ACCELERATOR_KEY) will be fired.
	*
	* @param aKey the key
	* @see #getFocusAccelerator
	* @beaninfo
	*  description: accelerator character used to grab focus
	*        bound: true
	*/
	@:overload public function setFocusAccelerator(aKey : java.StdTypes.Char16) : Void;
	
	/**
	* Returns the key accelerator that will cause the receiving
	* text component to get the focus.  Return '\0' if no focus
	* accelerator has been set.
	*
	* @return the key
	*/
	@:overload public function getFocusAccelerator() : java.StdTypes.Char16;
	
	/**
	* Initializes from a stream.  This creates a
	* model of the type appropriate for the component
	* and initializes the model from the stream.
	* By default this will load the model as plain
	* text.  Previous contents of the model are discarded.
	*
	* @param in the stream to read from
	* @param desc an object describing the stream; this
	*   might be a string, a File, a URL, etc.  Some kinds
	*   of documents (such as html for example) might be
	*   able to make use of this information; if non-<code>null</code>,
	*   it is added as a property of the document
	* @exception IOException as thrown by the stream being
	*  used to initialize
	* @see EditorKit#createDefaultDocument
	* @see #setDocument
	* @see PlainDocument
	*/
	@:overload public function read(_in : java.io.Reader, desc : Dynamic) : Void;
	
	/**
	* Stores the contents of the model into the given
	* stream.  By default this will store the model as plain
	* text.
	*
	* @param out the output stream
	* @exception IOException on any I/O error
	*/
	@:overload public function write(out : java.io.Writer) : Void;
	
	@:overload override public function removeNotify() : Void;
	
	/**
	* Sets the position of the text insertion caret for the
	* <code>TextComponent</code>.  Note that the caret tracks change,
	* so this may move if the underlying text of the component is changed.
	* If the document is <code>null</code>, does nothing. The position
	* must be between 0 and the length of the component's text or else
	* an exception is thrown.
	*
	* @param position the position
	* @exception    IllegalArgumentException if the value supplied
	*               for <code>position</code> is less than zero or greater
	*               than the component's text length
	* @beaninfo
	* description: the caret position
	*/
	@:overload public function setCaretPosition(position : Int) : Void;
	
	/**
	* Returns the position of the text insertion caret for the
	* text component.
	*
	* @return the position of the text insertion caret for the
	*  text component >= 0
	*/
	@:overload public function getCaretPosition() : Int;
	
	/**
	* Sets the text of this <code>TextComponent</code>
	* to the specified text.  If the text is <code>null</code>
	* or empty, has the effect of simply deleting the old text.
	* When text has been inserted, the resulting caret location
	* is determined by the implementation of the caret class.
	*
	* <p>
	* Note that text is not a bound property, so no <code>PropertyChangeEvent
	* </code> is fired when it changes. To listen for changes to the text,
	* use <code>DocumentListener</code>.
	*
	* @param t the new text to be set
	* @see #getText
	* @see DefaultCaret
	* @beaninfo
	* description: the text of this component
	*/
	@:overload public function setText(t : String) : Void;
	
	/**
	* Returns the text contained in this <code>TextComponent</code>.
	* If the underlying document is <code>null</code>,
	* will give a <code>NullPointerException</code>.
	*
	* Note that text is not a bound property, so no <code>PropertyChangeEvent
	* </code> is fired when it changes. To listen for changes to the text,
	* use <code>DocumentListener</code>.
	*
	* @return the text
	* @exception NullPointerException if the document is <code>null</code>
	* @see #setText
	*/
	@:overload public function getText() : String;
	
	/**
	* Returns the selected text contained in this
	* <code>TextComponent</code>.  If the selection is
	* <code>null</code> or the document empty, returns <code>null</code>.
	*
	* @return the text
	* @exception IllegalArgumentException if the selection doesn't
	*  have a valid mapping into the document for some reason
	* @see #setText
	*/
	@:overload public function getSelectedText() : String;
	
	/**
	* Returns the boolean indicating whether this
	* <code>TextComponent</code> is editable or not.
	*
	* @return the boolean value
	* @see #setEditable
	*/
	@:overload public function isEditable() : Bool;
	
	/**
	* Sets the specified boolean to indicate whether or not this
	* <code>TextComponent</code> should be editable.
	* A PropertyChange event ("editable") is fired when the
	* state is changed.
	*
	* @param b the boolean to be set
	* @see #isEditable
	* @beaninfo
	* description: specifies if the text can be edited
	*       bound: true
	*/
	@:overload public function setEditable(b : Bool) : Void;
	
	/**
	* Returns the selected text's start position.  Return 0 for an
	* empty document, or the value of dot if no selection.
	*
	* @return the start position >= 0
	*/
	@:overload public function getSelectionStart() : Int;
	
	/**
	* Sets the selection start to the specified position.  The new
	* starting point is constrained to be before or at the current
	* selection end.
	* <p>
	* This is available for backward compatibility to code
	* that called this method on <code>java.awt.TextComponent</code>.
	* This is implemented to forward to the <code>Caret</code>
	* implementation which is where the actual selection is maintained.
	*
	* @param selectionStart the start position of the text >= 0
	* @beaninfo
	* description: starting location of the selection.
	*/
	@:overload public function setSelectionStart(selectionStart : Int) : Void;
	
	/**
	* Returns the selected text's end position.  Return 0 if the document
	* is empty, or the value of dot if there is no selection.
	*
	* @return the end position >= 0
	*/
	@:overload public function getSelectionEnd() : Int;
	
	/**
	* Sets the selection end to the specified position.  The new
	* end point is constrained to be at or after the current
	* selection start.
	* <p>
	* This is available for backward compatibility to code
	* that called this method on <code>java.awt.TextComponent</code>.
	* This is implemented to forward to the <code>Caret</code>
	* implementation which is where the actual selection is maintained.
	*
	* @param selectionEnd the end position of the text >= 0
	* @beaninfo
	* description: ending location of the selection.
	*/
	@:overload public function setSelectionEnd(selectionEnd : Int) : Void;
	
	/**
	* Selects the text between the specified start and end positions.
	* <p>
	* This method sets the start and end positions of the
	* selected text, enforcing the restriction that the start position
	* must be greater than or equal to zero.  The end position must be
	* greater than or equal to the start position, and less than or
	* equal to the length of the text component's text.
	* <p>
	* If the caller supplies values that are inconsistent or out of
	* bounds, the method enforces these constraints silently, and
	* without failure. Specifically, if the start position or end
	* position is greater than the length of the text, it is reset to
	* equal the text length. If the start position is less than zero,
	* it is reset to zero, and if the end position is less than the
	* start position, it is reset to the start position.
	* <p>
	* This call is provided for backward compatibility.
	* It is routed to a call to <code>setCaretPosition</code>
	* followed by a call to <code>moveCaretPosition</code>.
	* The preferred way to manage selection is by calling
	* those methods directly.
	*
	* @param selectionStart the start position of the text
	* @param selectionEnd the end position of the text
	* @see #setCaretPosition
	* @see #moveCaretPosition
	*/
	@:overload public function select(selectionStart : Int, selectionEnd : Int) : Void;
	
	/**
	* Selects all the text in the <code>TextComponent</code>.
	* Does nothing on a <code>null</code> or empty document.
	*/
	@:overload public function selectAll() : Void;
	
	/**
	* Returns the string to be used as the tooltip for <code>event</code>.
	* This will return one of:
	* <ol>
	*  <li>If <code>setToolTipText</code> has been invoked with a
	*      non-<code>null</code>
	*      value, it will be returned, otherwise
	*  <li>The value from invoking <code>getToolTipText</code> on
	*      the UI will be returned.
	* </ol>
	* By default <code>JTextComponent</code> does not register
	* itself with the <code>ToolTipManager</code>.
	* This means that tooltips will NOT be shown from the
	* <code>TextUI</code> unless <code>registerComponent</code> has
	* been invoked on the <code>ToolTipManager</code>.
	*
	* @param event the event in question
	* @return the string to be used as the tooltip for <code>event</code>
	* @see javax.swing.JComponent#setToolTipText
	* @see javax.swing.plaf.TextUI#getToolTipText
	* @see javax.swing.ToolTipManager#registerComponent
	*/
	@:overload override public function getToolTipText(event : java.awt.event.MouseEvent) : String;
	
	/**
	* Returns the preferred size of the viewport for a view component.
	* This is implemented to do the default behavior of returning
	* the preferred size of the component.
	*
	* @return the <code>preferredSize</code> of a <code>JViewport</code>
	* whose view is this <code>Scrollable</code>
	*/
	@:overload public function getPreferredScrollableViewportSize() : java.awt.Dimension;
	
	/**
	* Components that display logical rows or columns should compute
	* the scroll increment that will completely expose one new row
	* or column, depending on the value of orientation.  Ideally,
	* components should handle a partially exposed row or column by
	* returning the distance required to completely expose the item.
	* <p>
	* The default implementation of this is to simply return 10% of
	* the visible area.  Subclasses are likely to be able to provide
	* a much more reasonable value.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation either <code>SwingConstants.VERTICAL</code> or
	*   <code>SwingConstants.HORIZONTAL</code>
	* @param direction less than zero to scroll up/left, greater than
	*   zero for down/right
	* @return the "unit" increment for scrolling in the specified direction
	* @exception IllegalArgumentException for an invalid orientation
	* @see JScrollBar#setUnitIncrement
	*/
	@:overload public function getScrollableUnitIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Components that display logical rows or columns should compute
	* the scroll increment that will completely expose one block
	* of rows or columns, depending on the value of orientation.
	* <p>
	* The default implementation of this is to simply return the visible
	* area.  Subclasses will likely be able to provide a much more
	* reasonable value.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation either <code>SwingConstants.VERTICAL</code> or
	*   <code>SwingConstants.HORIZONTAL</code>
	* @param direction less than zero to scroll up/left, greater than zero
	*  for down/right
	* @return the "block" increment for scrolling in the specified direction
	* @exception IllegalArgumentException for an invalid orientation
	* @see JScrollBar#setBlockIncrement
	*/
	@:overload public function getScrollableBlockIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns true if a viewport should always force the width of this
	* <code>Scrollable</code> to match the width of the viewport.
	* For example a normal text view that supported line wrapping
	* would return true here, since it would be undesirable for
	* wrapped lines to disappear beyond the right
	* edge of the viewport.  Note that returning true for a
	* <code>Scrollable</code> whose ancestor is a <code>JScrollPane</code>
	* effectively disables horizontal scrolling.
	* <p>
	* Scrolling containers, like <code>JViewport</code>,
	* will use this method each time they are validated.
	*
	* @return true if a viewport should force the <code>Scrollable</code>s
	*   width to match its own
	*/
	@:overload public function getScrollableTracksViewportWidth() : Bool;
	
	/**
	* Returns true if a viewport should always force the height of this
	* <code>Scrollable</code> to match the height of the viewport.
	* For example a columnar text view that flowed text in left to
	* right columns could effectively disable vertical scrolling by
	* returning true here.
	* <p>
	* Scrolling containers, like <code>JViewport</code>,
	* will use this method each time they are validated.
	*
	* @return true if a viewport should force the Scrollables height
	*   to match its own
	*/
	@:overload public function getScrollableTracksViewportHeight() : Bool;
	
	/**
	* A convenience print method that displays a print dialog, and then
	* prints this {@code JTextComponent} in <i>interactive</i> mode with no
	* header or footer text. Note: this method
	* blocks until printing is done.
	* <p>
	* Note: In <i>headless</i> mode, no dialogs will be shown.
	*
	* <p> This method calls the full featured
	* {@link #print(MessageFormat, MessageFormat, boolean, PrintService, PrintRequestAttributeSet, boolean)
	* print} method to perform printing.
	* @return {@code true}, unless printing is canceled by the user
	* @throws PrinterException if an error in the print system causes the job
	*         to be aborted
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	*
	* @see #print(MessageFormat, MessageFormat, boolean, PrintService, PrintRequestAttributeSet, boolean)
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function print() : Bool;
	
	/**
	* A convenience print method that displays a print dialog, and then
	* prints this {@code JTextComponent} in <i>interactive</i> mode with
	* the specified header and footer text. Note: this method
	* blocks until printing is done.
	* <p>
	* Note: In <i>headless</i> mode, no dialogs will be shown.
	*
	* <p> This method calls the full featured
	* {@link #print(MessageFormat, MessageFormat, boolean, PrintService, PrintRequestAttributeSet, boolean)
	* print} method to perform printing.
	* @param headerFormat the text, in {@code MessageFormat}, to be
	*        used as the header, or {@code null} for no header
	* @param footerFormat the text, in {@code MessageFormat}, to be
	*        used as the footer, or {@code null} for no footer
	* @return {@code true}, unless printing is canceled by the user
	* @throws PrinterException if an error in the print system causes the job
	*         to be aborted
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	*
	* @see #print(MessageFormat, MessageFormat, boolean, PrintService, PrintRequestAttributeSet, boolean)
	* @see java.text.MessageFormat
	* @since 1.6
	*/
	@:require(java6) @:overload public function print(headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : Bool;
	
	/**
	* Prints the content of this {@code JTextComponent}. Note: this method
	* blocks until printing is done.
	*
	* <p>
	* Page header and footer text can be added to the output by providing
	* {@code MessageFormat} arguments. The printing code requests
	* {@code Strings} from the formats, providing a single item which may be
	* included in the formatted string: an {@code Integer} representing the
	* current page number.
	*
	* <p>
	* {@code showPrintDialog boolean} parameter allows you to specify whether
	* a print dialog is displayed to the user. When it is, the user
	* may use the dialog to change printing attributes or even cancel the
	* print.
	*
	* <p>
	* {@code service} allows you to provide the initial
	* {@code PrintService} for the print dialog, or to specify
	* {@code PrintService} to print to when the dialog is not shown.
	*
	* <p>
	* {@code attributes} can be used to provide the
	* initial values for the print dialog, or to supply any needed
	* attributes when the dialog is not shown. {@code attributes} can
	* be used to control how the job will print, for example
	* <i>duplex</i> or <i>single-sided</i>.
	*
	* <p>
	* {@code interactive boolean} parameter allows you to specify
	* whether to perform printing in <i>interactive</i>
	* mode. If {@code true}, a progress dialog, with an abort option,
	* is displayed for the duration of printing.  This dialog is
	* <i>modal</i> when {@code print} is invoked on the <i>Event Dispatch
	* Thread</i> and <i>non-modal</i> otherwise. <b>Warning</b>:
	* calling this method on the <i>Event Dispatch Thread</i> with {@code
	* interactive false} blocks <i>all</i> events, including repaints, from
	* being processed until printing is complete. It is only
	* recommended when printing from an application with no
	* visible GUI.
	*
	* <p>
	* Note: In <i>headless</i> mode, {@code showPrintDialog} and
	* {@code interactive} parameters are ignored and no dialogs are
	* shown.
	*
	* <p>
	* This method ensures the {@code document} is not mutated during printing.
	* To indicate it visually, {@code setEnabled(false)} is set for the
	* duration of printing.
	*
	* <p>
	* This method uses {@link #getPrintable} to render document content.
	*
	* <p>
	* This method is thread-safe, although most Swing methods are not. Please
	* see <A
	* HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">
	* How to Use Threads</A> for more information.
	*
	* <p>
	* <b>Sample Usage</b>. This code snippet shows a cross-platform print
	* dialog and then prints the {@code JTextComponent} in <i>interactive</i> mode
	* unless the user cancels the dialog:
	*
	* <pre>
	* textComponent.print(new MessageFormat(&quot;My text component header&quot;),
	*     new MessageFormat(&quot;Footer. Page - {0}&quot;), true, null, null, true);
	* </pre>
	* <p>
	* Executing this code off the <i>Event Dispatch Thread</i>
	* performs printing on the <i>background</i>.
	* The following pattern might be used for <i>background</i>
	* printing:
	* <pre>
	*     FutureTask&lt;Boolean&gt; future =
	*         new FutureTask&lt;Boolean&gt;(
	*             new Callable&lt;Boolean&gt;() {
	*                 public Boolean call() {
	*                     return textComponent.print(.....);
	*                 }
	*             });
	*     executor.execute(future);
	* </pre>
	*
	* @param headerFormat the text, in {@code MessageFormat}, to be
	*        used as the header, or {@code null} for no header
	* @param footerFormat the text, in {@code MessageFormat}, to be
	*        used as the footer, or {@code null} for no footer
	* @param showPrintDialog {@code true} to display a print dialog,
	*        {@code false} otherwise
	* @param service initial {@code PrintService}, or {@code null} for the
	*        default
	* @param attributes the job attributes to be applied to the print job, or
	*        {@code null} for none
	* @param interactive whether to print in an interactive mode
	* @return {@code true}, unless printing is canceled by the user
	* @throws PrinterException if an error in the print system causes the job
	*         to be aborted
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	*
	* @see #getPrintable
	* @see java.text.MessageFormat
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see java.util.concurrent.FutureTask
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function print(headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat, showPrintDialog : Bool, service : javax.print.PrintService, attributes : javax.print.attribute.PrintRequestAttributeSet, interactive : Bool) : Bool;
	
	/**
	* Returns a {@code Printable} to use for printing the content of this
	* {@code JTextComponent}. The returned {@code Printable} prints
	* the document as it looks on the screen except being reformatted
	* to fit the paper.
	* The returned {@code Printable} can be wrapped inside another
	* {@code Printable} in order to create complex reports and
	* documents.
	*
	*
	* <p>
	* The returned {@code Printable} shares the {@code document} with this
	* {@code JTextComponent}. It is the responsibility of the developer to
	* ensure that the {@code document} is not mutated while this {@code Printable}
	* is used. Printing behavior is undefined when the {@code document} is
	* mutated during printing.
	*
	* <p>
	* Page header and footer text can be added to the output by providing
	* {@code MessageFormat} arguments. The printing code requests
	* {@code Strings} from the formats, providing a single item which may be
	* included in the formatted string: an {@code Integer} representing the
	* current page number.
	*
	* <p>
	* The returned {@code Printable} when printed, formats the
	* document content appropriately for the page size. For correct
	* line wrapping the {@code imageable width} of all pages must be the
	* same. See {@link java.awt.print.PageFormat#getImageableWidth}.
	*
	* <p>
	* This method is thread-safe, although most Swing methods are not. Please
	* see <A
	* HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">
	* How to Use Threads</A> for more information.
	*
	* <p>
	* The returned {@code Printable} can be printed on any thread.
	*
	* <p>
	* This implementation returned {@code Printable} performs all painting on
	* the <i>Event Dispatch Thread</i>, regardless of what thread it is
	* used on.
	*
	* @param headerFormat the text, in {@code MessageFormat}, to be
	*        used as the header, or {@code null} for no header
	* @param footerFormat the text, in {@code MessageFormat}, to be
	*        used as the footer, or {@code null} for no footer
	* @return a {@code Printable} for use in printing content of this
	*         {@code JTextComponent}
	*
	*
	* @see java.awt.print.Printable
	* @see java.awt.print.PageFormat
	* @see javax.swing.text.Document#render(java.lang.Runnable)
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getPrintable(headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : java.awt.print.Printable;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* <code>JTextComponent</code>. For text components,
	* the <code>AccessibleContext</code> takes the form of an
	* <code>AccessibleJTextComponent</code>.
	* A new <code>AccessibleJTextComponent</code> instance
	* is created if necessary.
	*
	* @return an <code>AccessibleJTextComponent</code> that serves as the
	*         <code>AccessibleContext</code> of this
	*         <code>JTextComponent</code>
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Returns a string representation of this <code>JTextComponent</code>.
	* This method is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	* <P>
	* Overriding <code>paramString</code> to provide information about the
	* specific new aspects of the JFC components.
	*
	* @return  a string representation of this <code>JTextComponent</code>
	*/
	@:overload override private function paramString() : String;
	
	/**
	* The default keymap that will be shared by all
	* <code>JTextComponent</code> instances unless they
	* have had a different keymap set.
	*/
	public static var DEFAULT_KEYMAP(default, null) : String;
	
	@:overload override private function processInputMethodEvent(e : java.awt.event.InputMethodEvent) : Void;
	
	@:overload override public function getInputMethodRequests() : java.awt.im.InputMethodRequests;
	
	@:overload override public function addInputMethodListener(l : java.awt.event.InputMethodListener) : Void;
	
	/**
	* Saves composed text around the specified position.
	*
	* The composed text (if any) around the specified position is saved
	* in a backing store and removed from the document.
	*
	* @param pos  document position to identify the composed text location
	* @return  {@code true} if the composed text exists and is saved,
	*          {@code false} otherwise
	* @see #restoreComposedText
	* @since 1.7
	*/
	@:require(java7) @:overload private function saveComposedText(pos : Int) : Bool;
	
	/**
	* Restores composed text previously saved by {@code saveComposedText}.
	*
	* The saved composed text is inserted back into the document. This method
	* should be invoked only if {@code saveComposedText} returns {@code true}.
	*
	* @see #saveComposedText
	* @since 1.7
	*/
	@:require(java7) @:overload private function restoreComposedText() : Void;
	
	
}
/**
* Binding record for creating key bindings.
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
@:native('javax$swing$text$JTextComponent$KeyBinding') extern class JTextComponent_KeyBinding
{
	/**
	* The key.
	*/
	public var key : javax.swing.KeyStroke;
	
	/**
	* The name of the action for the key.
	*/
	public var actionName : String;
	
	/**
	* Creates a new key binding.
	*
	* @param key the key
	* @param actionName the name of the action for the key
	*/
	@:overload public function new(key : javax.swing.KeyStroke, actionName : String) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTextComponent</code> class.  It provides an implementation of
* the Java Accessibility API appropriate to menu user-interface elements.
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
@:native('javax$swing$text$JTextComponent$AccessibleJTextComponent') extern class JTextComponent_AccessibleJTextComponent extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleText implements javax.swing.event.CaretListener implements javax.swing.event.DocumentListener implements javax.accessibility.AccessibleAction implements javax.accessibility.AccessibleEditableText implements javax.accessibility.AccessibleExtendedText
{
	/**
	* Constructs an AccessibleJTextComponent.  Adds a listener to track
	* caret change.
	*/
	@:overload public function new() : Void;
	
	/**
	* Handles caret updates (fire appropriate property change event,
	* which are AccessibleContext.ACCESSIBLE_CARET_PROPERTY and
	* AccessibleContext.ACCESSIBLE_SELECTION_PROPERTY).
	* This keeps track of the dot position internally.  When the caret
	* moves, the internal position is updated after firing the event.
	*
	* @param e the CaretEvent
	*/
	@:overload public function caretUpdate(e : javax.swing.event.CaretEvent) : Void;
	
	/**
	* Handles document insert (fire appropriate property change event
	* which is AccessibleContext.ACCESSIBLE_TEXT_PROPERTY).
	* This tracks the changed offset via the event.
	*
	* @param e the DocumentEvent
	*/
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Handles document remove (fire appropriate property change event,
	* which is AccessibleContext.ACCESSIBLE_TEXT_PROPERTY).
	* This tracks the changed offset via the event.
	*
	* @param e the DocumentEvent
	*/
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Handles document remove (fire appropriate property change event,
	* which is AccessibleContext.ACCESSIBLE_TEXT_PROPERTY).
	* This tracks the changed offset via the event.
	*
	* @param e the DocumentEvent
	*/
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Gets the state set of the JTextComponent.
	* The AccessibleStateSet of an object is composed of a set of
	* unique AccessibleState's.  A change in the AccessibleStateSet
	* of an object will cause a PropertyChangeEvent to be fired
	* for the AccessibleContext.ACCESSIBLE_STATE_PROPERTY property.
	*
	* @return an instance of AccessibleStateSet containing the
	* current state set of the object
	* @see AccessibleStateSet
	* @see AccessibleState
	* @see #addPropertyChangeListener
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object (AccessibleRole.TEXT)
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the AccessibleText associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleText interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Given a point in local coordinates, return the zero-based index
	* of the character under that Point.  If the point is invalid,
	* this method returns -1.
	*
	* @param p the Point in local coordinates
	* @return the zero-based index of the character under Point p.
	*/
	@:overload public function getIndexAtPoint(p : java.awt.Point) : Int;
	
	/**
	* Determines the bounding box of the character at the given
	* index into the string.  The bounds are returned in local
	* coordinates.  If the index is invalid a null rectangle
	* is returned.
	*
	* The screen coordinates returned are "unscrolled coordinates"
	* if the JTextComponent is contained in a JScrollPane in which
	* case the resulting rectangle should be composed with the parent
	* coordinates.  A good algorithm to use is:
	* <nf>
	* Accessible a:
	* AccessibleText at = a.getAccessibleText();
	* AccessibleComponent ac = a.getAccessibleComponent();
	* Rectangle r = at.getCharacterBounds();
	* Point p = ac.getLocation();
	* r.x += p.x;
	* r.y += p.y;
	* </nf>
	*
	* Note: the JTextComponent must have a valid size (e.g. have
	* been added to a parent container whose ancestor container
	* is a valid top-level window) for this method to be able
	* to return a meaningful (non-null) value.
	*
	* @param i the index into the String >= 0
	* @return the screen coordinates of the character's bounding box
	*/
	@:overload public function getCharacterBounds(i : Int) : java.awt.Rectangle;
	
	/**
	* Returns the number of characters (valid indices)
	*
	* @return the number of characters >= 0
	*/
	@:overload public function getCharCount() : Int;
	
	/**
	* Returns the zero-based offset of the caret.
	*
	* Note: The character to the right of the caret will have the
	* same index value as the offset (the caret is between
	* two characters).
	*
	* @return the zero-based offset of the caret.
	*/
	@:overload public function getCaretPosition() : Int;
	
	/**
	* Returns the AttributeSet for a given character (at a given index).
	*
	* @param i the zero-based index into the text
	* @return the AttributeSet of the character
	*/
	@:overload public function getCharacterAttribute(i : Int) : javax.print.attribute.AttributeSet;
	
	/**
	* Returns the start offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	* Return 0 if the text is empty, or the caret position
	* if no selection.
	*
	* @return the index into the text of the start of the selection >= 0
	*/
	@:overload public function getSelectionStart() : Int;
	
	/**
	* Returns the end offset within the selected text.
	* If there is no selection, but there is
	* a caret, the start and end offsets will be the same.
	* Return 0 if the text is empty, or the caret position
	* if no selection.
	*
	* @return the index into teh text of the end of the selection >= 0
	*/
	@:overload public function getSelectionEnd() : Int;
	
	/**
	* Returns the portion of the text that is selected.
	*
	* @return the text, null if no selection
	*/
	@:overload public function getSelectedText() : String;
	
	/**
	* Returns the String at a given index. Whitespace
	* between words is treated as a word.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence.
	*
	*/
	@:overload public function getAtIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String after a given index. Whitespace
	* between words is treated as a word.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence.
	*/
	@:overload public function getAfterIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the String before a given index. Whitespace
	* between words is treated a word.
	*
	* @param part the CHARACTER, WORD, or SENTENCE to retrieve
	* @param index an index within the text
	* @return the letter, word, or sentence.
	*/
	@:overload public function getBeforeIndex(part : Int, index : Int) : String;
	
	/**
	* Returns the AccessibleEditableText interface for
	* this text component.
	*
	* @return the AccessibleEditableText interface
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getAccessibleEditableText() : javax.accessibility.AccessibleEditableText;
	
	/**
	* Sets the text contents to the specified string.
	*
	* @param s the string to set the text contents
	* @since 1.4
	*/
	@:require(java4) @:overload public function setTextContents(s : String) : Void;
	
	/**
	* Inserts the specified string at the given index
	*
	* @param index the index in the text where the string will
	* be inserted
	* @param s the string to insert in the text
	* @since 1.4
	*/
	@:require(java4) @:overload public function insertTextAtIndex(index : Int, s : String) : Void;
	
	/**
	* Returns the text string between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @return the text string between the indices
	* @since 1.4
	*/
	@:require(java4) @:overload public function getTextRange(startIndex : Int, endIndex : Int) : String;
	
	/**
	* Deletes the text between two indices
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @since 1.4
	*/
	@:require(java4) @:overload public function delete(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Cuts the text between two indices into the system clipboard.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @since 1.4
	*/
	@:require(java4) @:overload public function cut(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Pastes the text from the system clipboard into the text
	* starting at the specified index.
	*
	* @param startIndex the starting index in the text
	* @since 1.4
	*/
	@:require(java4) @:overload public function paste(startIndex : Int) : Void;
	
	/**
	* Replaces the text between two indices with the specified
	* string.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @param s the string to replace the text between two indices
	* @since 1.4
	*/
	@:require(java4) @:overload public function replaceText(startIndex : Int, endIndex : Int, s : String) : Void;
	
	/**
	* Selects the text between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @since 1.4
	*/
	@:require(java4) @:overload public function selectText(startIndex : Int, endIndex : Int) : Void;
	
	/**
	* Sets attributes for the text between two indices.
	*
	* @param startIndex the starting index in the text
	* @param endIndex the ending index in the text
	* @param as the attribute set
	* @see AttributeSet
	* @since 1.4
	*/
	@:require(java4) @:overload public function setAttributes(startIndex : Int, endIndex : Int, as : javax.print.attribute.AttributeSet) : Void;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> at a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or
	* <code>ATTRIBUTE_RUN</code> to retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text if
	* <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceAt(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> after a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or
	* <code>ATTRIBUTE_RUN</code> to retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text
	* if <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceAfter(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	/**
	* Returns the <code>AccessibleTextSequence</code> before a given
	* <code>index</code>.
	*
	* @param part the <code>CHARACTER</code>, <code>WORD</code>,
	* <code>SENTENCE</code>, <code>LINE</code> or
	* <code>ATTRIBUTE_RUN</code> to retrieve
	* @param index an index within the text
	* @return an <code>AccessibleTextSequence</code> specifying the text
	* if <code>part</code> and <code>index</code> are valid.  Otherwise,
	* <code>null</code> is returned
	*
	* @see javax.accessibility.AccessibleText#CHARACTER
	* @see javax.accessibility.AccessibleText#WORD
	* @see javax.accessibility.AccessibleText#SENTENCE
	* @see javax.accessibility.AccessibleExtendedText#LINE
	* @see javax.accessibility.AccessibleExtendedText#ATTRIBUTE_RUN
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextSequenceBefore(part : Int, index : Int) : javax.accessibility.AccessibleTextSequence;
	
	/**
	* Returns the <code>Rectangle</code> enclosing the text between
	* two indicies.
	*
	* @param startIndex the start index in the text
	* @param endIndex the end index in the text
	* @return the bounding rectangle of the text if the indices are valid.
	* Otherwise, <code>null</code> is returned
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function getTextBounds(startIndex : Int, endIndex : Int) : java.awt.Rectangle;
	
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Returns the number of accessible actions available in this object
	* If there are more than one, the first one is considered the
	* "default" action of the object.
	*
	* @return the zero-based number of Actions in this object
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleActionCount() : Int;
	
	/**
	* Returns a description of the specified action of the object.
	*
	* @param i zero-based index of the actions
	* @return a String description of the action
	* @see #getAccessibleActionCount
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleActionDescription(i : Int) : String;
	
	/**
	* Performs the specified Action on the object
	*
	* @param i zero-based index of actions
	* @return true if the action was performed; otherwise false.
	* @see #getAccessibleActionCount
	* @since 1.4
	*/
	@:require(java4) @:overload public function doAccessibleAction(i : Int) : Bool;
	
	
}
/**
* IndexedSegment extends Segment adding the offset into the
* the model the <code>Segment</code> was asked for.
*/
@:native('javax$swing$text$JTextComponent$AccessibleJTextComponent$IndexedSegment') @:internal extern class JTextComponent_AccessibleJTextComponent_IndexedSegment extends javax.swing.text.Segment
{
	/**
	* Offset into the model that the position represents.
	*/
	public var modelOffset : Int;
	
	
}
/**
* Represents a drop location for <code>JTextComponent</code>s.
*
* @see #getDropLocation
* @since 1.6
*/
@:require(java6) @:native('javax$swing$text$JTextComponent$DropLocation') extern class JTextComponent_DropLocation extends javax.swing.TransferHandler.TransferHandler_DropLocation
{
	/**
	* Returns the index where dropped data should be inserted into the
	* associated component. This index represents a position between
	* characters, as would be interpreted by a caret.
	*
	* @return the drop index
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Returns the bias for the drop index.
	*
	* @return the drop bias
	*/
	@:overload public function getBias() : javax.swing.text.Position.Position_Bias;
	
	/**
	* Returns a string representation of this drop location.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this drop location
	*/
	@:overload override public function toString() : String;
	
	
}
/**
* A Simple TransferHandler that exports the data as a String, and
* imports the data from the String clipboard.  This is only used
* if the UI hasn't supplied one, which would only happen if someone
* hasn't subclassed Basic.
*/
@:native('javax$swing$text$JTextComponent$DefaultTransferHandler') @:internal extern class JTextComponent_DefaultTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
{
	@:overload override public function exportToClipboard(comp : javax.swing.JComponent, clipboard : java.awt.datatransfer.Clipboard, action : Int) : Void;
	
	@:overload override public function importData(comp : javax.swing.JComponent, t : java.awt.datatransfer.Transferable) : Bool;
	
	@:overload override public function canImport(comp : javax.swing.JComponent, transferFlavors : java.NativeArray<java.awt.datatransfer.DataFlavor>) : Bool;
	
	@:overload override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	
}
@:native('javax$swing$text$JTextComponent$DefaultKeymap') @:internal extern class JTextComponent_DefaultKeymap implements javax.swing.text.Keymap
{
	/**
	* Fetch the default action to fire if a
	* key is typed (ie a KEY_TYPED KeyEvent is received)
	* and there is no binding for it.  Typically this
	* would be some action that inserts text so that
	* the keymap doesn't require an action for each
	* possible key.
	*/
	@:overload public function getDefaultAction() : javax.swing.Action;
	
	/**
	* Set the default action to fire if a key is typed.
	*/
	@:overload public function setDefaultAction(a : javax.swing.Action) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getAction(key : javax.swing.KeyStroke) : javax.swing.Action;
	
	@:overload public function getBoundKeyStrokes() : java.NativeArray<javax.swing.KeyStroke>;
	
	@:overload public function getBoundActions() : java.NativeArray<javax.swing.Action>;
	
	@:overload public function getKeyStrokesForAction(a : javax.swing.Action) : java.NativeArray<javax.swing.KeyStroke>;
	
	@:overload public function isLocallyDefined(key : javax.swing.KeyStroke) : Bool;
	
	@:overload public function addActionForKeyStroke(key : javax.swing.KeyStroke, a : javax.swing.Action) : Void;
	
	@:overload public function removeKeyStrokeBinding(key : javax.swing.KeyStroke) : Void;
	
	@:overload public function removeBindings() : Void;
	
	@:overload public function getResolveParent() : javax.swing.text.Keymap;
	
	@:overload public function setResolveParent(parent : javax.swing.text.Keymap) : Void;
	
	/**
	* String representation of the keymap... potentially
	* a very long string.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* KeymapWrapper wraps a Keymap inside an InputMap. For KeymapWrapper
* to be useful it must be used with a KeymapActionMap.
* KeymapWrapper for the most part, is an InputMap with two parents.
* The first parent visited is ALWAYS the Keymap, with the second
* parent being the parent inherited from InputMap. If
* <code>keymap.getAction</code> returns null, implying the Keymap
* does not have a binding for the KeyStroke,
* the parent is then visited. If the Keymap has a binding, the
* Action is returned, if not and the KeyStroke represents a
* KeyTyped event and the Keymap has a defaultAction,
* <code>DefaultActionKey</code> is returned.
* <p>KeymapActionMap is then able to transate the object passed in
* to either message the Keymap, or message its default implementation.
*/
@:native('javax$swing$text$JTextComponent$KeymapWrapper') @:internal extern class JTextComponent_KeymapWrapper extends javax.swing.InputMap
{
	@:overload override public function keys() : java.NativeArray<javax.swing.KeyStroke>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function get(keyStroke : javax.swing.KeyStroke) : Dynamic;
	
	
}
/**
* Wraps a Keymap inside an ActionMap. This is used with
* a KeymapWrapper. If <code>get</code> is passed in
* <code>KeymapWrapper.DefaultActionKey</code>, the default action is
* returned, otherwise if the key is an Action, it is returned.
*/
@:native('javax$swing$text$JTextComponent$KeymapActionMap') @:internal extern class JTextComponent_KeymapActionMap extends javax.swing.ActionMap
{
	@:overload override public function keys() : java.NativeArray<Dynamic>;
	
	@:overload override public function size() : Int;
	
	@:overload override public function get(key : Dynamic) : javax.swing.Action;
	
	
}
/**
* Event to use when firing a notification of change to caret
* position.  This is mutable so that the event can be reused
* since caret events can be fairly high in bandwidth.
*/
@:native('javax$swing$text$JTextComponent$MutableCaretEvent') @:internal extern class JTextComponent_MutableCaretEvent extends javax.swing.event.CaretEvent implements javax.swing.event.ChangeListener implements java.awt.event.FocusListener implements java.awt.event.MouseListener
{
	@:overload @:final override public function toString() : String;
	
	@:overload @:final override public function getDot() : Int;
	
	@:overload @:final override public function getMark() : Int;
	
	@:overload @:final public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload public function focusGained(fe : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(fe : java.awt.event.FocusEvent) : Void;
	
	/**
	* Requests focus on the associated
	* text component, and try to set the cursor position.
	*
	* @param e the mouse event
	* @see MouseListener#mousePressed
	*/
	@:overload @:final public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Called when the mouse is released.
	*
	* @param e the mouse event
	* @see MouseListener#mouseReleased
	*/
	@:overload @:final public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:final public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:final public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:final public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$text$JTextComponent$InputMethodRequestsHandler') @:internal extern class JTextComponent_InputMethodRequestsHandler implements java.awt.im.InputMethodRequests implements javax.swing.event.DocumentListener
{
	@:overload public function cancelLatestCommittedText(attributes : java.NativeArray<javax.print.attribute.Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload public function getCommittedText(beginIndex : Int, endIndex : Int, attributes : java.NativeArray<javax.print.attribute.Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload public function getCommittedTextLength() : Int;
	
	@:overload public function getInsertPositionOffset() : Int;
	
	@:overload public function getLocationOffset(x : Int, y : Int) : java.awt.font.TextHitInfo;
	
	@:overload public function getTextLocation(offset : java.awt.font.TextHitInfo) : java.awt.Rectangle;
	
	@:overload public function getSelectedText(attributes : java.NativeArray<javax.print.attribute.Attribute>) : java.text.AttributedCharacterIterator;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	
}
@:native('javax$swing$text$JTextComponent$ComposedTextCaret') @:internal extern class JTextComponent_ComposedTextCaret extends javax.swing.text.DefaultCaret implements java.io.Serializable
{
	@:overload override public function install(c : javax.swing.text.JTextComponent) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload override private function positionCaret(me : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$text$JTextComponent$DoSetCaretPosition') @:internal extern class JTextComponent_DoSetCaretPosition implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
