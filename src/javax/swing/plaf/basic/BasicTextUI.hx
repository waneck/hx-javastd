package javax.swing.plaf.basic;
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
extern class BasicTextUI extends javax.swing.plaf.TextUI implements javax.swing.text.ViewFactory
{
	/**
	* Creates a new UI.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates the object to use for a caret.  By default an
	* instance of BasicCaret is created.  This method
	* can be redefined to provide something else that implements
	* the InputPosition interface or a subclass of JCaret.
	*
	* @return the caret object
	*/
	@:overload private function createCaret() : javax.swing.text.Caret;
	
	/**
	* Creates the object to use for adding highlights.  By default
	* an instance of BasicHighlighter is created.  This method
	* can be redefined to provide something else that implements
	* the Highlighter interface or a subclass of DefaultHighlighter.
	*
	* @return the highlighter
	*/
	@:overload private function createHighlighter() : javax.swing.text.Highlighter;
	
	/**
	* Fetches the name of the keymap that will be installed/used
	* by default for this UI. This is implemented to create a
	* name based upon the classname.  The name is the the name
	* of the class with the package prefix removed.
	*
	* @return the name
	*/
	@:overload private function getKeymapName() : String;
	
	/**
	* Creates the keymap to use for the text component, and installs
	* any necessary bindings into it.  By default, the keymap is
	* shared between all instances of this type of TextUI. The
	* keymap has the name defined by the getKeymapName method.  If the
	* keymap is not found, then DEFAULT_KEYMAP from JTextComponent is used.
	* <p>
	* The set of bindings used to create the keymap is fetched
	* from the UIManager using a key formed by combining the
	* {@link #getPropertyPrefix} method
	* and the string <code>.keyBindings</code>.  The type is expected
	* to be <code>JTextComponent.KeyBinding[]</code>.
	*
	* @return the keymap
	* @see #getKeymapName
	* @see javax.swing.text.JTextComponent
	*/
	@:overload private function createKeymap() : javax.swing.text.Keymap;
	
	/**
	* This method gets called when a bound property is changed
	* on the associated JTextComponent.  This is a hook
	* which UI implementations may change to reflect how the
	* UI displays bound properties of JTextComponent subclasses.
	* This is implemented to do nothing (i.e. the response to
	* properties in JTextComponent itself are handled prior
	* to calling this method).
	*
	* This implementation updates the background of the text
	* component if the editable and/or enabled state changes.
	*
	* @param evt the property change event
	*/
	@:overload private function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Gets the name used as a key to look up properties through the
	* UIManager.  This is used as a prefix to all the standard
	* text properties.
	*
	* @return the name
	*/
	@:overload @:abstract private function getPropertyPrefix() : String;
	
	/**
	* Initializes component properties, such as font, foreground,
	* background, caret color, selection color, selected text color,
	* disabled text color, and border color.  The font, foreground, and
	* background properties are only set if their current value is either null
	* or a UIResource, other properties are set if the current
	* value is null.
	*
	* @see #uninstallDefaults
	* @see #installUI
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Sets the component properties that have not been explicitly overridden
	* to {@code null}.  A property is considered overridden if its current
	* value is not a {@code UIResource}.
	*
	* @see #installDefaults
	* @see #uninstallUI
	*/
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* Installs listeners for the UI.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* Uninstalls listeners for the UI.
	*/
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	/**
	* Paints a background for the view.  This will only be
	* called if isOpaque() on the associated component is
	* true.  The default is to paint the background color
	* of the component.
	*
	* @param g the graphics context
	*/
	@:overload private function paintBackground(g : java.awt.Graphics) : Void;
	
	/**
	* Fetches the text component associated with this
	* UI implementation.  This will be null until
	* the ui has been installed.
	*
	* @return the editor component
	*/
	@:overload @:final private function getComponent() : javax.swing.text.JTextComponent;
	
	/**
	* Flags model changes.
	* This is called whenever the model has changed.
	* It is implemented to rebuild the view hierarchy
	* to represent the default root element of the
	* associated model.
	*/
	@:overload private function modelChanged() : Void;
	
	/**
	* Sets the current root of the view hierarchy and calls invalidate().
	* If there were any child components, they will be removed (i.e.
	* there are assumed to have come from components embedded in views).
	*
	* @param v the root view
	*/
	@:overload @:final private function setView(v : javax.swing.text.View) : Void;
	
	/**
	* Paints the interface safely with a guarantee that
	* the model won't change from the view of this thread.
	* This does the following things, rendering from
	* back to front.
	* <ol>
	* <li>
	* If the component is marked as opaque, the background
	* is painted in the current background color of the
	* component.
	* <li>
	* The highlights (if any) are painted.
	* <li>
	* The view hierarchy is painted.
	* <li>
	* The caret is painted.
	* </ol>
	*
	* @param g the graphics context
	*/
	@:overload private function paintSafely(g : java.awt.Graphics) : Void;
	
	/**
	* Installs the UI for a component.  This does the following
	* things.
	* <ol>
	* <li>
	* Sets the associated component to opaque if the opaque property
	* has not already been set by the client program. This will cause the
	* component's background color to be painted.
	* <li>
	* Installs the default caret and highlighter into the
	* associated component. These properties are only set if their
	* current value is either {@code null} or an instance of
	* {@link UIResource}.
	* <li>
	* Attaches to the editor and model.  If there is no
	* model, a default one is created.
	* <li>
	* Creates the view factory and the view hierarchy used
	* to represent the model.
	* </ol>
	*
	* @param c the editor component
	* @see ComponentUI#installUI
	*/
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Deinstalls the UI for a component.  This removes the listeners,
	* uninstalls the highlighter, removes views, and nulls out the keymap.
	*
	* @param c the editor component
	* @see ComponentUI#uninstallUI
	*/
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Superclass paints background in an uncontrollable way
	* (i.e. one might want an image tiled into the background).
	* To prevent this from happening twice, this method is
	* reimplemented to simply paint.
	* <p>
	* <em>NOTE:</em> NOTE: Superclass is also not thread-safe in its
	* rendering of the background, although that is not an issue with the
	* default rendering.
	*/
	@:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the interface.  This is routed to the
	* paintSafely method under the guarantee that
	* the model won't change from the view of this thread
	* while it's rendering (if the associated model is
	* derived from AbstractDocument).  This enables the
	* model to potentially be updated asynchronously.
	*
	* @param g the graphics context
	* @param c the editor component
	*/
	@:overload @:final override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Gets the preferred size for the editor component.  If the component
	* has been given a size prior to receiving this request, it will
	* set the size of the view hierarchy to reflect the size of the component
	* before requesting the preferred size of the view hierarchy.  This
	* allows formatted views to format to the current component size before
	* answering the request.  Other views don't care about currently formatted
	* size and give the same answer either way.
	*
	* @param c the editor component
	* @return the size
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Gets the minimum size for the editor component.
	*
	* @param c the editor component
	* @return the size
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Gets the maximum size for the editor component.
	*
	* @param c the editor component
	* @return the size
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Gets the allocation to give the root View.  Due
	* to an unfortunate set of historical events this
	* method is inappropriately named.  The Rectangle
	* returned has nothing to do with visibility.
	* The component must have a non-zero positive size for
	* this translation to be computed.
	*
	* @return the bounding box for the root view
	*/
	@:overload private function getVisibleEditorRect() : java.awt.Rectangle;
	
	/**
	* Converts the given location in the model to a place in
	* the view coordinate system.
	* The component must have a non-zero positive size for
	* this translation to be computed.
	*
	* @param tc the text component for which this UI is installed
	* @param pos the local location in the model to translate >= 0
	* @return the coordinates as a rectangle, null if the model is not painted
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see TextUI#modelToView
	*/
	@:overload override public function modelToView(tc : javax.swing.text.JTextComponent, pos : Int) : java.awt.Rectangle;
	
	/**
	* Converts the given location in the model to a place in
	* the view coordinate system.
	* The component must have a non-zero positive size for
	* this translation to be computed.
	*
	* @param tc the text component for which this UI is installed
	* @param pos the local location in the model to translate >= 0
	* @return the coordinates as a rectangle, null if the model is not painted
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see TextUI#modelToView
	*/
	@:overload override public function modelToView(tc : javax.swing.text.JTextComponent, pos : Int, bias : javax.swing.text.Position.Position_Bias) : java.awt.Rectangle;
	
	/**
	* Converts the given place in the view coordinate system
	* to the nearest representative location in the model.
	* The component must have a non-zero positive size for
	* this translation to be computed.
	*
	* @param tc the text component for which this UI is installed
	* @param pt the location in the view to translate.  This
	*  should be in the same coordinate system as the mouse events.
	* @return the offset from the start of the document >= 0,
	*   -1 if not painted
	* @see TextUI#viewToModel
	*/
	@:overload override public function viewToModel(tc : javax.swing.text.JTextComponent, pt : java.awt.Point) : Int;
	
	/**
	* Converts the given place in the view coordinate system
	* to the nearest representative location in the model.
	* The component must have a non-zero positive size for
	* this translation to be computed.
	*
	* @param tc the text component for which this UI is installed
	* @param pt the location in the view to translate.  This
	*  should be in the same coordinate system as the mouse events.
	* @return the offset from the start of the document >= 0,
	*   -1 if the component doesn't yet have a positive size.
	* @see TextUI#viewToModel
	*/
	@:overload override public function viewToModel(tc : javax.swing.text.JTextComponent, pt : java.awt.Point, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getNextVisualPositionFrom(t : javax.swing.text.JTextComponent, pos : Int, b : javax.swing.text.Position.Position_Bias, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Causes the portion of the view responsible for the
	* given part of the model to be repainted.  Does nothing if
	* the view is not currently painted.
	*
	* @param tc the text component for which this UI is installed
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	* @see TextUI#damageRange
	*/
	@:overload override public function damageRange(tc : javax.swing.text.JTextComponent, p0 : Int, p1 : Int) : Void;
	
	/**
	* Causes the portion of the view responsible for the
	* given part of the model to be repainted.
	*
	* @param p0 the beginning of the range >= 0
	* @param p1 the end of the range >= p0
	*/
	@:overload override public function damageRange(t : javax.swing.text.JTextComponent, p0 : Int, p1 : Int, p0Bias : javax.swing.text.Position.Position_Bias, p1Bias : javax.swing.text.Position.Position_Bias) : Void;
	
	/**
	* Fetches the EditorKit for the UI.
	*
	* @param tc the text component for which this UI is installed
	* @return the editor capabilities
	* @see TextUI#getEditorKit
	*/
	@:overload override public function getEditorKit(tc : javax.swing.text.JTextComponent) : javax.swing.text.EditorKit;
	
	/**
	* Fetches a View with the allocation of the associated
	* text component (i.e. the root of the hierarchy) that
	* can be traversed to determine how the model is being
	* represented spatially.
	* <p>
	* <font color=red><b>NOTE:</b>The View hierarchy can
	* be traversed from the root view, and other things
	* can be done as well.  Things done in this way cannot
	* be protected like simple method calls through the TextUI.
	* Therefore, proper operation in the presence of concurrency
	* must be arranged by any logic that calls this method!
	* </font>
	*
	* @param tc the text component for which this UI is installed
	* @return the view
	* @see TextUI#getRootView
	*/
	@:overload override public function getRootView(tc : javax.swing.text.JTextComponent) : javax.swing.text.View;
	
	/**
	* Returns the string to be used as the tooltip at the passed in location.
	* This forwards the method onto the root View.
	*
	* @see javax.swing.text.JTextComponent#getToolTipText
	* @see javax.swing.text.View#getToolTipText
	* @since 1.4
	*/
	@:require(java4) @:overload override public function getToolTipText(t : javax.swing.text.JTextComponent, pt : java.awt.Point) : String;
	
	/**
	* Creates a view for an element.
	* If a subclass wishes to directly implement the factory
	* producing the view(s), it should reimplement this
	* method.  By default it simply returns null indicating
	* it is unable to represent the element.
	*
	* @param elem the element
	* @return the view
	*/
	@:overload public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	/**
	* Creates a view for an element.
	* If a subclass wishes to directly implement the factory
	* producing the view(s), it should reimplement this
	* method.  By default it simply returns null indicating
	* it is unable to represent the part of the element.
	*
	* @param elem the element
	* @param p0 the starting offset >= 0
	* @param p1 the ending offset >= p0
	* @return the view
	*/
	@:overload public function create(elem : javax.swing.text.Element, p0 : Int, p1 : Int) : javax.swing.text.View;
	
	
}
@:native('javax$swing$plaf$basic$BasicTextUI$BasicCaret') extern class BasicTextUI_BasicCaret extends javax.swing.text.DefaultCaret implements javax.swing.plaf.UIResource
{
	
}
@:native('javax$swing$plaf$basic$BasicTextUI$BasicHighlighter') extern class BasicTextUI_BasicHighlighter extends javax.swing.text.DefaultHighlighter implements javax.swing.plaf.UIResource
{
	
}
@:native('javax$swing$plaf$basic$BasicTextUI$BasicCursor') @:internal extern class BasicTextUI_BasicCursor extends java.awt.Cursor implements javax.swing.plaf.UIResource
{
	
}
/**
* Root view that acts as a gateway between the component
* and the View hierarchy.
*/
@:native('javax$swing$plaf$basic$BasicTextUI$RootView') @:internal extern class BasicTextUI_RootView extends javax.swing.text.View
{
	/**
	* Fetches the attributes to use when rendering.  At the root
	* level there are no attributes.  If an attribute is resolved
	* up the view hierarchy this is the end of the line.
	*/
	@:overload override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Determines the preferred span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Specifies that a preference has changed.
	* Child views can call this on the parent to indicate that
	* the preference has changed.  The root view routes this to
	* invalidate on the hosting component.
	* <p>
	* This can be called on a different thread from the
	* event dispatching thread and is basically unsafe to
	* propagate into the component.  To make this safe,
	* the operation is transferred over to the event dispatching
	* thread for completion.  It is a design goal that all view
	* methods be safe to call without concern for concurrency,
	* and this behavior helps make that true.
	*
	* @param child the child view
	* @param width true if the width preference has changed
	* @param height true if the height preference has changed
	*/
	@:overload public function preferenceChanged(child : javax.swing.text.View, width : Bool, height : Bool) : Void;
	
	/**
	* Determines the desired alignment for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the desired alignment, where 0.0 indicates the origin
	*     and 1.0 the full span away from the origin
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Renders the view.
	*
	* @param g the graphics context
	* @param allocation the region to render into
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Sets the view parent.
	*
	* @param parent the parent view
	*/
	@:overload public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Returns the number of views in this view.  Since
	* this view simply wraps the root of the view hierarchy
	* it has exactly one child.
	*
	* @return the number of views
	* @see #getView
	*/
	@:overload override public function getViewCount() : Int;
	
	/**
	* Gets the n-th view in this container.
	*
	* @param n the number of the view to get
	* @return the view
	*/
	@:overload override public function getView(n : Int) : javax.swing.text.View;
	
	/**
	* Returns the child view index representing the given position in
	* the model.  This is implemented to return the index of the only
	* child.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getViewIndex(pos : Int, b : javax.swing.text.Position.Position_Bias) : Int;
	
	/**
	* Fetches the allocation for the given child view.
	* This enables finding out where various views
	* are located, without assuming the views store
	* their location.  This returns the given allocation
	* since this view simply acts as a gateway between
	* the view hierarchy and the associated component.
	*
	* @param index the index of the child
	* @param a  the allocation to this view.
	* @return the allocation to the child
	*/
	@:overload override public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param p0 the position to convert >= 0
	* @param b0 the bias toward the previous character or the
	*  next character represented by p0, in case the
	*  position is a boundary of two views.
	* @param p1 the position to convert >= 0
	* @param b1 the bias toward the previous character or the
	*  next character represented by p1, in case the
	*  position is a boundary of two views.
	* @param a the allocated region to render into
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException for an invalid bias argument
	* @see View#viewToModel
	*/
	@:overload override public function modelToView(p0 : Int, b0 : javax.swing.text.Position.Position_Bias, p1 : Int, b1 : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x x coordinate of the view location to convert
	* @param y y coordinate of the view location to convert
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*    given point in the view
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be visible,
	* they might not be in the same order found in the model, or they just
	* might not allow access to some of the locations in the model.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This may be SwingConstants.WEST, SwingConstants.EAST,
	*  SwingConstants.NORTH, or SwingConstants.SOUTH.
	* @return the location within the model that best represents the next
	*  location visual position.
	* @exception BadLocationException
	* @exception IllegalArgumentException for an invalid direction
	*/
	@:overload override public function getNextVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that this view is responsible for.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	*/
	@:overload override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	*/
	@:overload override public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	*/
	@:overload override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Returns the document model underlying the view.
	*
	* @return the model
	*/
	@:overload override public function getDocument() : javax.swing.text.Document;
	
	/**
	* Returns the starting offset into the model for this view.
	*
	* @return the starting offset
	*/
	@:overload override public function getStartOffset() : Int;
	
	/**
	* Returns the ending offset into the model for this view.
	*
	* @return the ending offset
	*/
	@:overload override public function getEndOffset() : Int;
	
	/**
	* Gets the element that this view is mapped to.
	*
	* @return the view
	*/
	@:overload override public function getElement() : javax.swing.text.Element;
	
	/**
	* Breaks this view on the given axis at the given length.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @param len specifies where a break is desired in the span
	* @param the current allocation of the view
	* @return the fragment of the view that represents the given span
	*   if the view can be broken, otherwise null
	*/
	@:overload public function breakView(axis : Int, len : Single, a : java.awt.Shape) : javax.swing.text.View;
	
	/**
	* Determines the resizability of the view along the
	* given axis.  A value of 0 or less is not resizable.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the weight
	*/
	@:overload override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Sets the view size.
	*
	* @param width the width
	* @param height the height
	*/
	@:overload override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Fetches the container hosting the view.  This is useful for
	* things like scheduling a repaint, finding out the host
	* components font, etc.  The default implementation
	* of this is to forward the query to the parent view.
	*
	* @return the container
	*/
	@:overload override public function getContainer() : java.awt.Container;
	
	/**
	* Fetches the factory to be used for building the
	* various view fragments that make up the view that
	* represents the model.  This is what determines
	* how the model will be represented.  This is implemented
	* to fetch the factory provided by the associated
	* EditorKit unless that is null, in which case this
	* simply returns the BasicTextUI itself which allows
	* subclasses to implement a simple factory directly without
	* creating extra objects.
	*
	* @return the factory
	*/
	@:overload override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	
}
/**
* Handles updates from various places.  If the model is changed,
* this class unregisters as a listener to the old model and
* registers with the new model.  If the document model changes,
* the change is forwarded to the root view.  If the focus
* accelerator changes, a new keystroke is registered to request
* focus.
*/
@:native('javax$swing$plaf$basic$BasicTextUI$UpdateHandler') @:internal extern class BasicTextUI_UpdateHandler implements java.beans.PropertyChangeListener implements javax.swing.event.DocumentListener implements java.awt.LayoutManager2 implements javax.swing.plaf.UIResource
{
	/**
	* This method gets called when a bound property is changed.
	* We are looking for document changes on the editor.
	*/
	@:overload @:final public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* The insert notification.  Gets sent to the root of the view structure
	* that represents the portion of the model being represented by the
	* editor.  The factory is added as an argument to the update so that
	* the views can update themselves in a dynamic (not hardcoded) way.
	*
	* @param e  The change notification from the currently associated
	*  document.
	* @see DocumentListener#insertUpdate
	*/
	@:overload @:final public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* The remove notification.  Gets sent to the root of the view structure
	* that represents the portion of the model being represented by the
	* editor.  The factory is added as an argument to the update so that
	* the views can update themselves in a dynamic (not hardcoded) way.
	*
	* @param e  The change notification from the currently associated
	*  document.
	* @see DocumentListener#removeUpdate
	*/
	@:overload @:final public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* The change notification.  Gets sent to the root of the view structure
	* that represents the portion of the model being represented by the
	* editor.  The factory is added as an argument to the update so that
	* the views can update themselves in a dynamic (not hardcoded) way.
	*
	* @param e  The change notification from the currently associated
	*  document.
	* @see DocumentListener#changedUpdate(DocumentEvent)
	*/
	@:overload @:final public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	/**
	* Adds the specified component with the specified name to
	* the layout.
	* @param name the component name
	* @param comp the component to be added
	*/
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout.
	* @param comp the component to be removed
	*/
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Calculates the preferred size dimensions for the specified
	* panel given the components in the specified parent container.
	* @param parent the component to be laid out
	*
	* @see #minimumLayoutSize
	*/
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Calculates the minimum size dimensions for the specified
	* panel given the components in the specified parent container.
	* @param parent the component to be laid out
	* @see #preferredLayoutSize
	*/
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Lays out the container in the specified panel.  This is
	* implemented to position all components that were added
	* with a View object as a constraint.  The current allocation
	* of the associated View is used as the location of the
	* component.
	* <p>
	* A read-lock is acquired on the document to prevent the
	* view tree from being modified while the layout process
	* is active.
	*
	* @param parent the component which needs to be laid out
	*/
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	/**
	* Adds the specified component to the layout, using the specified
	* constraint object.  We only store those components that were added
	* with a constraint that is of type View.
	*
	* @param comp the component to be added
	* @param constraint  where/how the component is added to the layout.
	*/
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraint : Dynamic) : Void;
	
	/**
	* Returns the maximum size of this component.
	* @see java.awt.Component#getMinimumSize()
	* @see java.awt.Component#getPreferredSize()
	* @see LayoutManager
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	/**
	* Invalidates the layout, indicating that if the layout manager
	* has cached information it should be discarded.
	*/
	@:overload public function invalidateLayout(target : java.awt.Container) : Void;
	
	
}
/**
* Wrapper for text actions to return isEnabled false in case editor is non editable
*/
@:native('javax$swing$plaf$basic$BasicTextUI$TextActionWrapper') @:internal extern class BasicTextUI_TextActionWrapper extends javax.swing.text.TextAction
{
	@:overload public function new(action : javax.swing.text.TextAction) : Void;
	
	/**
	* The operation to perform when this action is triggered.
	*
	* @param e the action event
	*/
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Registered in the ActionMap.
*/
@:native('javax$swing$plaf$basic$BasicTextUI$FocusAction') @:internal extern class BasicTextUI_FocusAction extends javax.swing.AbstractAction
{
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled() : Bool;
	
	
}
/**
* Listens for mouse events for the purposes of detecting drag gestures.
* BasicTextUI will maintain one of these per AppContext.
*/
@:native('javax$swing$plaf$basic$BasicTextUI$DragListener') @:internal extern class BasicTextUI_DragListener extends javax.swing.event.MouseInputAdapter implements javax.swing.plaf.basic.DragRecognitionSupport.DragRecognitionSupport_BeforeDrag
{
	@:overload public function dragStarting(me : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Determines if the following are true:
	* <ul>
	* <li>the component is enabled
	* <li>the press event is located over a selection
	* </ul>
	*/
	@:overload private function isDragPossible(e : java.awt.event.MouseEvent) : Bool;
	
	
}
@:native('javax$swing$plaf$basic$BasicTextUI$TextTransferHandler') @:internal extern class BasicTextUI_TextTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
{
	/**
	* Try to find a flavor that can be used to import a Transferable.
	* The set of usable flavors are tried in the following order:
	* <ol>
	*     <li>First, an attempt is made to find a flavor matching the content type
	*         of the EditorKit for the component.
	*     <li>Second, an attempt to find a text/plain flavor is made.
	*     <li>Third, an attempt to find a flavor representing a String reference
	*         in the same VM is made.
	*     <li>Lastly, DataFlavor.stringFlavor is searched for.
	* </ol>
	*/
	@:overload private function getImportFlavor(flavors : java.NativeArray<java.awt.datatransfer.DataFlavor>, c : javax.swing.text.JTextComponent) : java.awt.datatransfer.DataFlavor;
	
	/**
	* Import the given stream data into the text component.
	*/
	@:overload private function handleReaderImport(_in : java.io.Reader, c : javax.swing.text.JTextComponent, useRead : Bool) : Void;
	
	/**
	* This is the type of transfer actions supported by the source.  Some models are
	* not mutable, so a transfer operation of COPY only should
	* be advertised in that case.
	*
	* @param c  The component holding the data to be transfered.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @return  This is implemented to return NONE if the component is a JPasswordField
	*  since exporting data via user gestures is not allowed.  If the text component is
	*  editable, COPY_OR_MOVE is returned, otherwise just COPY is allowed.
	*/
	@:overload override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	/**
	* Create a Transferable to use as the source for a data transfer.
	*
	* @param comp  The component holding the data to be transfered.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @return  The representation of the data to be transfered.
	*
	*/
	@:overload override private function createTransferable(comp : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	/**
	* This method is called after data has been exported.  This method should remove
	* the data that was transfered if the action was MOVE.
	*
	* @param source The component that was the source of the data.
	* @param data   The data that was transferred or possibly null
	*               if the action is <code>NONE</code>.
	* @param action The actual action that was performed.
	*/
	@:overload override private function exportDone(source : javax.swing.JComponent, data : java.awt.datatransfer.Transferable, action : Int) : Void;
	
	@:overload public function importData(support : javax.swing.TransferHandler.TransferHandler_TransferSupport) : Bool;
	
	/**
	* This method causes a transfer to a component from a clipboard or a
	* DND drop operation.  The Transferable represents the data to be
	* imported into the component.
	*
	* @param comp  The component to receive the transfer.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @param t     The data to import
	* @return  true if the data was inserted into the component, false otherwise.
	*/
	@:overload override public function importData(comp : javax.swing.JComponent, t : java.awt.datatransfer.Transferable) : Bool;
	
	/**
	* This method indicates if a component would accept an import of the given
	* set of data flavors prior to actually attempting to import it.
	*
	* @param comp  The component to receive the transfer.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @param flavors  The data formats available
	* @return  true if the data can be inserted into the component, false otherwise.
	*/
	@:overload override public function canImport(comp : javax.swing.JComponent, flavors : java.NativeArray<java.awt.datatransfer.DataFlavor>) : Bool;
	
	
}
/**
* A possible implementation of the Transferable interface
* for text components.  For a JEditorPane with a rich set
* of EditorKit implementations, conversions could be made
* giving a wider set of formats.  This is implemented to
* offer up only the active content type and text/plain
* (if that is not the active format) since that can be
* extracted from other formats.
*/
@:native('javax$swing$plaf$basic$BasicTextUI$TextTransferHandler$TextTransferable') @:internal extern class BasicTextUI_TextTransferHandler_TextTransferable extends javax.swing.plaf.basic.BasicTransferable
{
	/**
	* If the EditorKit is not for text/plain or text/html, that format
	* is supported through the "richer flavors" part of BasicTransferable.
	*/
	@:overload override private function getRicherFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* The only richer format supported is the file list flavor
	*/
	@:overload override private function getRicherData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	
}
