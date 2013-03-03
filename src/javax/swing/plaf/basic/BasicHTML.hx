package javax.swing.plaf.basic;
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
extern class BasicHTML
{
	/**
	* Create an html renderer for the given component and
	* string of html.
	*/
	@:overload @:public @:static public static function createHTMLView(c : javax.swing.JComponent, html : String) : javax.swing.text.View;
	
	/**
	* Returns the baseline for the html renderer.
	*
	* @param view the View to get the baseline for
	* @param w the width to get the baseline for
	* @param h the height to get the baseline for
	* @throws IllegalArgumentException if width or height is &lt; 0
	* @return baseline or a value &lt; 0 indicating there is no reasonable
	*                  baseline
	* @see java.awt.FontMetrics
	* @see javax.swing.JComponent#getBaseline(int,int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getHTMLBaseline(view : javax.swing.text.View, w : Int, h : Int) : Int;
	
	/**
	* Check the given string to see if it should trigger the
	* html rendering logic in a non-text component that supports
	* html rendering.
	*/
	@:overload @:public @:static public static function isHTMLString(s : String) : Bool;
	
	/**
	* Stash the HTML render for the given text into the client
	* properties of the given JComponent. If the given text is
	* <em>NOT HTML</em> the property will be cleared of any
	* renderer.
	* <p>
	* This method is useful for ComponentUI implementations
	* that are static (i.e. shared) and get their state
	* entirely from the JComponent.
	*/
	@:overload @:public @:static public static function updateRenderer(c : javax.swing.JComponent, text : String) : Void;
	
	/**
	* Key to use for the html renderer when stored as a
	* client property of a JComponent.
	*/
	@:public @:static @:final public static var propertyKey(default, null) : String;
	
	/**
	* Key stored as a client property to indicate the base that relative
	* references are resolved against. For example, lets say you keep
	* your images in the directory resources relative to the code path,
	* you would use the following the set the base:
	* <pre>
	*   jComponent.putClientProperty(documentBaseKey,
	*                                xxx.class.getResource("resources/"));
	* </pre>
	*/
	@:public @:static @:final public static var documentBaseKey(default, null) : String;
	
	
}
/**
* The views produced for the ComponentUI implementations aren't
* going to be edited and don't need full html support.  This kit
* alters the HTMLEditorKit to try and trim things down a bit.
* It does the following:
* <ul>
* <li>It doesn't produce Views for things like comments,
* head, title, unknown tags, etc.
* <li>It installs a different set of css settings from the default
* provided by HTMLEditorKit.
* </ul>
*/
@:native('javax$swing$plaf$basic$BasicHTML$BasicEditorKit') @:internal extern class BasicHTML_BasicEditorKit extends javax.swing.text.html.HTMLEditorKit
{
	/**
	* Overriden to return our own slimmed down style sheet.
	*/
	@:overload @:public override public function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* Sets the async policy to flush everything in one chunk, and
	* to not display unknown tags.
	*/
	@:overload @:public public function createDefaultDocument(defaultFont : java.awt.Font, foreground : java.awt.Color) : javax.swing.text.Document;
	
	/**
	* Returns the ViewFactory that is used to make sure the Views don't
	* load in the background.
	*/
	@:overload @:public override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	
}
/**
* BasicHTMLViewFactory extends HTMLFactory to force images to be loaded
* synchronously.
*/
@:native('javax$swing$plaf$basic$BasicHTML$BasicHTMLViewFactory') @:internal extern class BasicHTML_BasicHTMLViewFactory extends javax.swing.text.html.HTMLEditorKit.HTMLEditorKit_HTMLFactory
{
	@:overload @:public override public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	
}
/**
* The subclass of HTMLDocument that is used as the model. getForeground
* is overridden to return the foreground property from the Component this
* was created for.
*/
@:native('javax$swing$plaf$basic$BasicHTML$BasicDocument') @:internal extern class BasicHTML_BasicDocument extends javax.swing.text.html.HTMLDocument
{
	
}
/**
* Root text view that acts as an HTML renderer.
*/
@:native('javax$swing$plaf$basic$BasicHTML$Renderer') @:internal extern class BasicHTML_Renderer extends javax.swing.text.View
{
	/**
	* Fetches the attributes to use when rendering.  At the root
	* level there are no attributes.  If an attribute is resolved
	* up the view hierarchy this is the end of the line.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Determines the preferred span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload @:public override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the span the view would like to be rendered into.
	*         Typically the view is told to render into the span
	*         that is returned, although there is no guarantee.
	*         The parent may choose to resize or break the view.
	*/
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
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
	@:overload @:public override public function preferenceChanged(child : javax.swing.text.View, width : Bool, height : Bool) : Void;
	
	/**
	* Determines the desired alignment for this view along an axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the desired alignment, where 0.0 indicates the origin
	*     and 1.0 the full span away from the origin
	*/
	@:overload @:public override public function getAlignment(axis : Int) : Single;
	
	/**
	* Renders the view.
	*
	* @param g the graphics context
	* @param allocation the region to render into
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Sets the view parent.
	*
	* @param parent the parent view
	*/
	@:overload @:public override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Returns the number of views in this view.  Since
	* this view simply wraps the root of the view hierarchy
	* it has exactly one child.
	*
	* @return the number of views
	* @see #getView
	*/
	@:overload @:public override public function getViewCount() : Int;
	
	/**
	* Gets the n-th view in this container.
	*
	* @param n the number of the view to get
	* @return the view
	*/
	@:overload @:public override public function getView(n : Int) : javax.swing.text.View;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
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
	@:overload @:public override public function modelToView(p0 : Int, b0 : javax.swing.text.Position.Position_Bias, p1 : Int, b1 : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
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
	@:overload @:public override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Returns the document model underlying the view.
	*
	* @return the model
	*/
	@:overload @:public override public function getDocument() : javax.swing.text.Document;
	
	/**
	* Returns the starting offset into the model for this view.
	*
	* @return the starting offset
	*/
	@:overload @:public override public function getStartOffset() : Int;
	
	/**
	* Returns the ending offset into the model for this view.
	*
	* @return the ending offset
	*/
	@:overload @:public override public function getEndOffset() : Int;
	
	/**
	* Gets the element that this view is mapped to.
	*
	* @return the view
	*/
	@:overload @:public override public function getElement() : javax.swing.text.Element;
	
	/**
	* Sets the view size.
	*
	* @param width the width
	* @param height the height
	*/
	@:overload @:public override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Fetches the container hosting the view.  This is useful for
	* things like scheduling a repaint, finding out the host
	* components font, etc.  The default implementation
	* of this is to forward the query to the parent view.
	*
	* @return the container
	*/
	@:overload @:public override public function getContainer() : java.awt.Container;
	
	/**
	* Fetches the factory to be used for building the
	* various view fragments that make up the view that
	* represents the model.  This is what determines
	* how the model will be represented.  This is implemented
	* to fetch the factory provided by the associated
	* EditorKit.
	*
	* @return the factory
	*/
	@:overload @:public override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	
}
