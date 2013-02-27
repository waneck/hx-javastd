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
/**
* <p>
* A very important part of the text package is the <code>View</code> class.
* As the name suggests it represents a view of the text model,
* or a piece of the text model.
* It is this class that is responsible for the look of the text component.
* The view is not intended to be some completely new thing that one must
* learn, but rather is much like a lightweight component.
* <p>
By default, a view is very light.  It contains a reference to the parent
view from which it can fetch many things without holding state, and it
contains a reference to a portion of the model (<code>Element</code>).
A view does not
have to exactly represent an element in the model, that is simply a typical
and therefore convenient mapping.  A view can alternatively maintain a couple
of Position objects to maintain its location in the model (i.e. represent
a fragment of an element).  This is typically the result of formatting where
views have been broken down into pieces.  The convenience of a substantial
relationship to the element makes it easier to build factories to produce the
views, and makes it easier  to keep track of the view pieces as the model is
changed and the view must be changed to reflect the model.  Simple views
therefore represent an Element directly and complex views do not.
<p>
A view has the following responsibilities:
<dl>

<dt><b>Participate in layout.</b>
<dd>
<p>The view has a <code>setSize</code> method which is like
<code>doLayout</code> and <code>setSize</code> in <code>Component</code> combined.
The view has a <code>preferenceChanged</code> method which is
like <code>invalidate</code> in <code>Component</code> except that one can
invalidate just one axis
and the child requesting the change is identified.
<p>A View expresses the size that it would like to be in terms of three
values, a minimum, a preferred, and a maximum span.  Layout in a view is
can be done independently upon each axis.  For a properly functioning View
implementation, the minimum span will be &lt;= the preferred span which in turn
will be &lt;= the maximum span.
</p>
<p align=center><img src="doc-files/View-flexibility.jpg"
alt="The above text describes this graphic.">
<p>The minimum set of methods for layout are:
<ul>
<li><a href="#getMinimumSpan(int)">getMinimumSpan</a>
<li><a href="#getPreferredSpan(int)">getPreferredSpan</a>
<li><a href="#getMaximumSpan(int)">getMaximumSpan</a>
<li><a href="#getAlignment(int)">getAlignment</a>
<li><a href="#preferenceChanged(javax.swing.text.View, boolean, boolean)">preferenceChanged</a>
<li><a href="#setSize(float, float)">setSize</a>
</ul>

<p>The <code>setSize</code> method should be prepared to be called a number of times
(i.e. It may be called even if the size didn't change).
The <code>setSize</code> method
is generally called to make sure the View layout is complete prior to trying
to perform an operation on it that requires an up-to-date layout.  A view's
size should <em>always</em> be set to a value within the minimum and maximum
span specified by that view.  Additionally, the view must always call the
<code>preferenceChanged</code> method on the parent if it has changed the
values for the
layout it would like, and expects the parent to honor.  The parent View is
not required to recognize a change until the <code>preferenceChanged</code>
has been sent.
This allows parent View implementations to cache the child requirements if
desired.  The calling sequence looks something like the following:
</p>
<p align=center>
<img src="doc-files/View-layout.jpg"
alt="Sample calling sequence between parent view and child view:
setSize, getMinimum, getPreferred, getMaximum, getAlignment, setSize">
<p>The exact calling sequence is up to the layout functionality of
the parent view (if the view has any children).  The view may collect
the preferences of the children prior to determining what it will give
each child, or it might iteratively update the children one at a time.
</p>

<dt><b>Render a portion of the model.</b>
<dd>
<p>This is done in the paint method, which is pretty much like a component
paint method.  Views are expected to potentially populate a fairly large
tree.  A <code>View</code> has the following semantics for rendering:
</p>
<ul>
<li>The view gets its allocation from the parent at paint time, so it
must be prepared to redo layout if the allocated area is different from
what it is prepared to deal with.
<li>The coordinate system is the same as the hosting <code>Component</code>
(i.e. the <code>Component</code> returned by the
{@link #getContainer getContainer} method).
This means a child view lives in the same coordinate system as the parent
view unless the parent has explicitly changed the coordinate system.
To schedule itself to be repainted a view can call repaint on the hosting
<code>Component</code>.
<li>The default is to <em>not clip</em> the children.  It is more efficient
to allow a view to clip only if it really feels it needs clipping.
<li>The <code>Graphics</code> object given is not initialized in any way.
A view should set any settings needed.
<li>A <code>View</code> is inherently transparent.  While a view may render into its
entire allocation, typically a view does not.  Rendering is performed by
tranversing down the tree of <code>View</code> implementations.
Each <code>View</code> is responsible
for rendering its children.  This behavior is depended upon for thread
safety.  While view implementations do not necessarily have to be implemented
with thread safety in mind, other view implementations that do make use of
concurrency can depend upon a tree traversal to guarantee thread safety.
<li>The order of views relative to the model is up to the implementation.
Although child views will typically be arranged in the same order that they
occur in the model, they may be visually arranged in an entirely different
order.  View implementations may have Z-Order associated with them if the
children are overlapping.
</ul>
<p>The methods for rendering are:
<ul>
<li><a href="#paint(java.awt.Graphics, java.awt.Shape)">paint</a>
</ul>
<p>

<dt><b>Translate between the model and view coordinate systems.</b>
<dd>
<p>Because the view objects are produced from a factory and therefore cannot
necessarily be counted upon to be in a particular pattern, one must be able
to perform translation to properly locate spatial representation of the model.
The methods for doing this are:
<ul>
<li><a href="#modelToView(int, javax.swing.text.Position.Bias, int, javax.swing.text.Position.Bias, java.awt.Shape)">modelToView</a>
<li><a href="#viewToModel(float, float, java.awt.Shape, javax.swing.text.Position.Bias[])">viewToModel</a>
<li><a href="#getDocument()">getDocument</a>
<li><a href="#getElement()">getElement</a>
<li><a href="#getStartOffset()">getStartOffset</a>
<li><a href="#getEndOffset()">getEndOffset</a>
</ul>
<p>The layout must be valid prior to attempting to make the translation.
The translation is not valid, and must not be attempted while changes
are being broadcasted from the model via a <code>DocumentEvent</code>.
</p>

<dt><b>Respond to changes from the model.</b>
<dd>
<p>If the overall view is represented by many pieces (which is the best situation
if one want to be able to change the view and write the least amount of new code),
it would be impractical to have a huge number of <code>DocumentListener</code>s.
If each
view listened to the model, only a few would actually be interested in the
changes broadcasted at any given time.   Since the model has no knowledge of
views, it has no way to filter the broadcast of change information.  The view
hierarchy itself is instead responsible for propagating the change information.
At any level in the view hierarchy, that view knows enough about its children to
best distribute the change information further.   Changes are therefore broadcasted
starting from the root of the view hierarchy.
The methods for doing this are:
<ul>
<li>{@link #insertUpdate insertUpdate}
<li>{@link #removeUpdate removeUpdate}
<li>{@link #changedUpdate changedUpdate}
</ul>
<p>
</dl>
*
* @author  Timothy Prinzing
*/
extern class View implements javax.swing.SwingConstants
{
	/**
	* Creates a new <code>View</code> object.
	*
	* @param elem the <code>Element</code> to represent
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Returns the parent of the view.
	*
	* @return the parent, or <code>null</code> if none exists
	*/
	@:overload public function getParent() : View;
	
	/**
	*  Returns a boolean that indicates whether
	*  the view is visible or not.  By default
	*  all views are visible.
	*
	*  @return always returns true
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return   the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view
	* @see View#getPreferredSpan
	*/
	@:overload @:abstract public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return  the minimum span the view can be rendered into
	* @see View#getPreferredSpan
	*/
	@:overload public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return  the maximum span the view can be rendered into
	* @see View#getPreferredSpan
	*/
	@:overload public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Child views can call this on the parent to indicate that
	* the preference has changed and should be reconsidered
	* for layout.  By default this just propagates upward to
	* the next parent.  The root view will call
	* <code>revalidate</code> on the associated text component.
	*
	* @param child the child view
	* @param width true if the width preference has changed
	* @param height true if the height preference has changed
	* @see javax.swing.JComponent#revalidate
	*/
	@:overload public function preferenceChanged(child : View, width : Bool, height : Bool) : Void;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  The desired alignment is returned.  This should be
	* a value >= 0.0 and <= 1.0, where 0 indicates alignment at
	* the origin and 1.0 indicates alignment to the full span
	* away from the origin.  An alignment of 0.5 would be the
	* center of the view.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return the value 0.5
	*/
	@:overload public function getAlignment(axis : Int) : Single;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  The view may need to do layout and create child
	* views to enable itself to render into the given allocation.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	*/
	@:overload @:abstract public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Establishes the parent view for this view.  This is
	* guaranteed to be called before any other methods if the
	* parent view is functioning properly.  This is also
	* the last method called, since it is called to indicate
	* the view has been removed from the hierarchy as
	* well. When this method is called to set the parent to
	* null, this method does the same for each of its children,
	* propogating the notification that they have been
	* disconnected from the view tree. If this is
	* reimplemented, <code>super.setParent()</code> should
	* be called.
	*
	* @param parent the new parent, or <code>null</code> if the view is
	*          being removed from a parent
	*/
	@:overload public function setParent(parent : View) : Void;
	
	/**
	* Returns the number of views in this view.  Since
	* the default is to not be a composite view this
	* returns 0.
	*
	* @return the number of views >= 0
	* @see View#getViewCount
	*/
	@:overload public function getViewCount() : Int;
	
	/**
	* Gets the <i>n</i>th child view.  Since there are no
	* children by default, this returns <code>null</code>.
	*
	* @param n the number of the view to get, >= 0 && < getViewCount()
	* @return the view
	*/
	@:overload public function getView(n : Int) : View;
	
	/**
	* Removes all of the children.  This is a convenience
	* call to <code>replace</code>.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function removeAll() : Void;
	
	/**
	* Removes one of the children at the given position.
	* This is a convenience call to <code>replace</code>.
	* @since 1.3
	*/
	@:require(java3) @:overload public function remove(i : Int) : Void;
	
	/**
	* Inserts a single child view.  This is a convenience
	* call to <code>replace</code>.
	*
	* @param offs the offset of the view to insert before >= 0
	* @param v the view
	* @see #replace
	* @since 1.3
	*/
	@:require(java3) @:overload public function insert(offs : Int, v : View) : Void;
	
	/**
	* Appends a single child view.  This is a convenience
	* call to <code>replace</code>.
	*
	* @param v the view
	* @see #replace
	* @since 1.3
	*/
	@:require(java3) @:overload public function append(v : View) : Void;
	
	/**
	* Replaces child views.  If there are no views to remove
	* this acts as an insert.  If there are no views to
	* add this acts as a remove.  Views being removed will
	* have the parent set to <code>null</code>, and the internal reference
	* to them removed so that they can be garbage collected.
	* This is implemented to do nothing, because by default
	* a view has no children.
	*
	* @param offset the starting index into the child views to insert
	*   the new views.  This should be a value >= 0 and <= getViewCount
	* @param length the number of existing child views to remove
	*   This should be a value >= 0 and <= (getViewCount() - offset).
	* @param views the child views to add.  This value can be
	*   <code>null</code> to indicate no children are being added
	*   (useful to remove).
	* @since 1.3
	*/
	@:require(java3) @:overload public function replace(offset : Int, length : Int, views : java.NativeArray<View>) : Void;
	
	/**
	* Returns the child view index representing the given position in
	* the model.  By default a view has no children so this is implemented
	* to return -1 to indicate there is no valid child index for any
	* position.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	* @since 1.3
	*/
	@:require(java3) @:overload public function getViewIndex(pos : Int, b : javax.swing.text.Position.Position_Bias) : Int;
	
	/**
	* Fetches the allocation for the given child view.
	* This enables finding out where various views
	* are located, without assuming how the views store
	* their location.  This returns <code>null</code> since the
	* default is to not have any child views.
	*
	* @param index the index of the child, >= 0 && <
	*          <code>getViewCount()</code>
	* @param a  the allocation to this view
	* @return the allocation to the child
	*/
	@:overload public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a way to determine the next visually represented model
	* location at which one might place a caret.
	* Some views may not be visible,
	* they might not be in the same order found in the model, or they just
	* might not allow access to some of the locations in the model.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region in which to render
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This will be one of the following values:
	* <ul>
	* <li>SwingConstants.WEST
	* <li>SwingConstants.EAST
	* <li>SwingConstants.NORTH
	* <li>SwingConstants.SOUTH
	* </ul>
	* @return the location within the model that best represents the next
	*  location visual position
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code>
	*          doesn't have one of the legal values above
	*/
	@:overload public function getNextVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Provides a mapping, for a given character,
	* from the document model coordinate space
	* to the view coordinate space.
	*
	* @param pos the position of the desired character (>=0)
	* @param a the area of the view, which encompasses the requested character
	* @param b the bias toward the previous character or the
	*  next character represented by the offset, in case the
	*  position is a boundary of two views; <code>b</code> will have one
	*  of these values:
	* <ul>
	* <li> <code>Position.Bias.Forward</code>
	* <li> <code>Position.Bias.Backward</code>
	* </ul>
	* @return the bounding box, in view coordinate space,
	*          of the character at the specified position
	* @exception BadLocationException  if the specified position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException if <code>b</code> is not one of the
	*          legal <code>Position.Bias</code> values listed above
	* @see View#viewToModel
	*/
	@:overload @:abstract public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping, for a given region,
	* from the document model coordinate space
	* to the view coordinate space. The specified region is
	* created as a union of the first and last character positions.
	*
	* @param p0 the position of the first character (>=0)
	* @param b0 the bias of the first character position,
	*  toward the previous character or the
	*  next character represented by the offset, in case the
	*  position is a boundary of two views; <code>b0</code> will have one
	*  of these values:
	* <ul>
	* <li> <code>Position.Bias.Forward</code>
	* <li> <code>Position.Bias.Backward</code>
	* </ul>
	* @param p1 the position of the last character (>=0)
	* @param b1 the bias for the second character position, defined
	*          one of the legal values shown above
	* @param a the area of the view, which encompasses the requested region
	* @return the bounding box which is a union of the region specified
	*          by the first and last character positions
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException if <code>b0</code> or
	*          <code>b1</code> are not one of the
	*          legal <code>Position.Bias</code> values listed above
	* @see View#viewToModel
	*/
	@:overload public function modelToView(p0 : Int, b0 : javax.swing.text.Position.Position_Bias, p1 : Int, b1 : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.  The <code>biasReturn</code>
	* argument will be filled in to indicate that the point given is
	* closer to the next character in the model or the previous
	* character in the model.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocated region in which to render
	* @return the location within the model that best represents the
	*  given point in the view >= 0.  The <code>biasReturn</code>
	*  argument will be
	* filled in to indicate that the point given is closer to the next
	* character in the model or the previous character in the model.
	*/
	@:overload @:abstract public function viewToModel(x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into
	* the document in a location that this view is responsible for.
	* To reduce the burden to subclasses, this functionality is
	* spread out into the following calls that subclasses can
	* reimplement:
	* <ol>
	* <li>{@link #updateChildren updateChildren} is called
	* if there were any changes to the element this view is
	* responsible for.  If this view has child views that are
	* represent the child elements, then this method should do
	* whatever is necessary to make sure the child views correctly
	* represent the model.
	* <li>{@link #forwardUpdate forwardUpdate} is called
	* to forward the DocumentEvent to the appropriate child views.
	* <li>{@link #updateLayout updateLayout} is called to
	* give the view a chance to either repair its layout, to reschedule
	* layout, or do nothing.
	* </ol>
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	* To reduce the burden to subclasses, this functionality is
	* spread out into the following calls that subclasses can
	* reimplement:
	* <ol>
	* <li>{@link #updateChildren updateChildren} is called
	* if there were any changes to the element this view is
	* responsible for.  If this view has child views that are
	* represent the child elements, then this method should do
	* whatever is necessary to make sure the child views correctly
	* represent the model.
	* <li>{@link #forwardUpdate forwardUpdate} is called
	* to forward the DocumentEvent to the appropriate child views.
	* <li>{@link #updateLayout updateLayout} is called to
	* give the view a chance to either repair its layout, to reschedule
	* layout, or do nothing.
	* </ol>
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	* To reduce the burden to subclasses, this functionality is
	* spread out into the following calls that subclasses can
	* reimplement:
	* <ol>
	* <li>{@link #updateChildren updateChildren} is called
	* if there were any changes to the element this view is
	* responsible for.  If this view has child views that are
	* represent the child elements, then this method should do
	* whatever is necessary to make sure the child views correctly
	* represent the model.
	* <li>{@link #forwardUpdate forwardUpdate} is called
	* to forward the DocumentEvent to the appropriate child views.
	* <li>{@link #updateLayout updateLayout} is called to
	* give the view a chance to either repair its layout, to reschedule
	* layout, or do nothing.
	* </ol>
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the model associated with the view.
	*
	* @return the view model, <code>null</code> if none
	* @see View#getDocument
	*/
	@:overload public function getDocument() : javax.swing.text.Document;
	
	/**
	* Fetches the portion of the model for which this view is
	* responsible.
	*
	* @return the starting offset into the model >= 0
	* @see View#getStartOffset
	*/
	@:overload public function getStartOffset() : Int;
	
	/**
	* Fetches the portion of the model for which this view is
	* responsible.
	*
	* @return the ending offset into the model >= 0
	* @see View#getEndOffset
	*/
	@:overload public function getEndOffset() : Int;
	
	/**
	* Fetches the structural portion of the subject that this
	* view is mapped to.  The view may not be responsible for the
	* entire portion of the element.
	*
	* @return the subject
	* @see View#getElement
	*/
	@:overload public function getElement() : javax.swing.text.Element;
	
	/**
	* Fetch a <code>Graphics</code> for rendering.
	* This can be used to determine
	* font characteristics, and will be different for a print view
	* than a component view.
	*
	* @return a <code>Graphics</code> object for rendering
	* @since 1.3
	*/
	@:require(java3) @:overload public function getGraphics() : java.awt.Graphics;
	
	/**
	* Fetches the attributes to use when rendering.  By default
	* this simply returns the attributes of the associated element.
	* This method should be used rather than using the element
	* directly to obtain access to the attributes to allow
	* view-specific attributes to be mixed in or to allow the
	* view to have view-specific conversion of attributes by
	* subclasses.
	* Each view should document what attributes it recognizes
	* for the purpose of rendering or layout, and should always
	* access them through the <code>AttributeSet</code> returned
	* by this method.
	*/
	@:overload public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Tries to break this view on the given axis.  This is
	* called by views that try to do formatting of their
	* children.  For example, a view of a paragraph will
	* typically try to place its children into row and
	* views representing chunks of text can sometimes be
	* broken down into smaller pieces.
	* <p>
	* This is implemented to return the view itself, which
	* represents the default behavior on not being
	* breakable.  If the view does support breaking, the
	* starting offset of the view returned should be the
	* given offset, and the end offset should be less than
	* or equal to the end offset of the view being broken.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @param offset the location in the document model
	*   that a broken fragment would occupy >= 0.  This
	*   would be the starting offset of the fragment
	*   returned
	* @param pos the position along the axis that the
	*  broken view would occupy >= 0.  This may be useful for
	*  things like tab calculations
	* @param len specifies the distance along the axis
	*  where a potential break is desired >= 0
	* @return the fragment of the view that represents the
	*  given span, if the view can be broken.  If the view
	*  doesn't support breaking behavior, the view itself is
	*  returned.
	* @see ParagraphView
	*/
	@:overload public function breakView(axis : Int, offset : Int, pos : Single, len : Single) : View;
	
	/**
	* Creates a view that represents a portion of the element.
	* This is potentially useful during formatting operations
	* for taking measurements of fragments of the view.  If
	* the view doesn't support fragmenting (the default), it
	* should return itself.
	*
	* @param p0 the starting offset >= 0.  This should be a value
	*   greater or equal to the element starting offset and
	*   less than the element ending offset.
	* @param p1 the ending offset > p0.  This should be a value
	*   less than or equal to the elements end offset and
	*   greater than the elements starting offset.
	* @return the view fragment, or itself if the view doesn't
	*   support breaking into fragments
	* @see LabelView
	*/
	@:overload public function createFragment(p0 : Int, p1 : Int) : View;
	
	/**
	* Determines how attractive a break opportunity in
	* this view is.  This can be used for determining which
	* view is the most attractive to call <code>breakView</code>
	* on in the process of formatting.  A view that represents
	* text that has whitespace in it might be more attractive
	* than a view that has no whitespace, for example.  The
	* higher the weight, the more attractive the break.  A
	* value equal to or lower than <code>BadBreakWeight</code>
	* should not be considered for a break.  A value greater
	* than or equal to <code>ForcedBreakWeight</code> should
	* be broken.
	* <p>
	* This is implemented to provide the default behavior
	* of returning <code>BadBreakWeight</code> unless the length
	* is greater than the length of the view in which case the
	* entire view represents the fragment.  Unless a view has
	* been written to support breaking behavior, it is not
	* attractive to try and break the view.  An example of
	* a view that does support breaking is <code>LabelView</code>.
	* An example of a view that uses break weight is
	* <code>ParagraphView</code>.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @param pos the potential location of the start of the
	*   broken view >= 0.  This may be useful for calculating tab
	*   positions
	* @param len specifies the relative length from <em>pos</em>
	*   where a potential break is desired >= 0
	* @return the weight, which should be a value between
	*   ForcedBreakWeight and BadBreakWeight
	* @see LabelView
	* @see ParagraphView
	* @see #BadBreakWeight
	* @see #GoodBreakWeight
	* @see #ExcellentBreakWeight
	* @see #ForcedBreakWeight
	*/
	@:overload public function getBreakWeight(axis : Int, pos : Single, len : Single) : Int;
	
	/**
	* Determines the resizability of the view along the
	* given axis.  A value of 0 or less is not resizable.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return the weight
	*/
	@:overload public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view along the given axis, if it
	* has any layout duties.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Fetches the container hosting the view.  This is useful for
	* things like scheduling a repaint, finding out the host
	* components font, etc.  The default implementation
	* of this is to forward the query to the parent view.
	*
	* @return the container, <code>null</code> if none
	*/
	@:overload public function getContainer() : java.awt.Container;
	
	/**
	* Fetches the <code>ViewFactory</code> implementation that is feeding
	* the view hierarchy.  Normally the views are given this
	* as an argument to updates from the model when they
	* are most likely to need the factory, but this
	* method serves to provide it at other times.
	*
	* @return the factory, <code>null</code> if none
	*/
	@:overload public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Returns the tooltip text at the specified location. The default
	* implementation returns the value from the child View identified by
	* the passed in location.
	*
	* @since 1.4
	* @see JTextComponent#getToolTipText
	*/
	@:require(java4) @:overload public function getToolTipText(x : Single, y : Single, allocation : java.awt.Shape) : String;
	
	/**
	* Returns the child view index representing the given position in
	* the view. This iterates over all the children returning the
	* first with a bounds that contains <code>x</code>, <code>y</code>.
	*
	* @param x the x coordinate
	* @param y the y coordinate
	* @param allocation current allocation of the View.
	* @return  index of the view representing the given location, or
	*   -1 if no view represents that position
	* @since 1.4
	*/
	@:require(java4) @:overload public function getViewIndex(x : Single, y : Single, allocation : java.awt.Shape) : Int;
	
	/**
	* Updates the child views in response to receiving notification
	* that the model changed, and there is change record for the
	* element this view is responsible for.  This is implemented
	* to assume the child views are directly responsible for the
	* child elements of the element this view represents.  The
	* <code>ViewFactory</code> is used to create child views for each element
	* specified as added in the <code>ElementChange</code>, starting at the
	* index specified in the given <code>ElementChange</code>.  The number of
	* child views representing the removed elements specified are
	* removed.
	*
	* @param ec the change information for the element this view
	*  is responsible for.  This should not be <code>null</code> if
	*  this method gets called
	* @param e the change information from the associated document
	* @param f the factory to use to build child views
	* @return whether or not the child views represent the
	*  child elements of the element this view is responsible
	*  for.  Some views create children that represent a portion
	*  of the element they are responsible for, and should return
	*  false.  This information is used to determine if views
	*  in the range of the added elements should be forwarded to
	*  or not
	* @see #insertUpdate
	* @see #removeUpdate
	* @see #changedUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload private function updateChildren(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, f : javax.swing.text.ViewFactory) : Bool;
	
	/**
	* Forwards the given <code>DocumentEvent</code> to the child views
	* that need to be notified of the change to the model.
	* If there were changes to the element this view is
	* responsible for, that should be considered when
	* forwarding (i.e. new child views should not get
	* notified).
	*
	* @param ec changes to the element this view is responsible
	*  for (may be <code>null</code> if there were no changes).
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see #insertUpdate
	* @see #removeUpdate
	* @see #changedUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload private function forwardUpdate(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Forwards the <code>DocumentEvent</code> to the give child view.  This
	* simply messages the view with a call to <code>insertUpdate</code>,
	* <code>removeUpdate</code>, or <code>changedUpdate</code> depending
	* upon the type of the event.  This is called by
	* {@link #forwardUpdate forwardUpdate} to forward
	* the event to children that need it.
	*
	* @param v the child view to forward the event to
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see #forwardUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload private function forwardUpdateToView(v : View, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Updates the layout in response to receiving notification of
	* change from the model.  This is implemented to call
	* <code>preferenceChanged</code> to reschedule a new layout
	* if the <code>ElementChange</code> record is not <code>null</code>.
	*
	* @param ec changes to the element this view is responsible
	*  for (may be <code>null</code> if there were no changes)
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @see #insertUpdate
	* @see #removeUpdate
	* @see #changedUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload private function updateLayout(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape) : Void;
	
	/**
	* The weight to indicate a view is a bad break
	* opportunity for the purpose of formatting.  This
	* value indicates that no attempt should be made to
	* break the view into fragments as the view has
	* not been written to support fragmenting.
	*
	* @see #getBreakWeight
	* @see #GoodBreakWeight
	* @see #ExcellentBreakWeight
	* @see #ForcedBreakWeight
	*/
	public static var BadBreakWeight(default, null) : Int;
	
	/**
	* The weight to indicate a view supports breaking,
	* but better opportunities probably exist.
	*
	* @see #getBreakWeight
	* @see #BadBreakWeight
	* @see #ExcellentBreakWeight
	* @see #ForcedBreakWeight
	*/
	public static var GoodBreakWeight(default, null) : Int;
	
	/**
	* The weight to indicate a view supports breaking,
	* and this represents a very attractive place to
	* break.
	*
	* @see #getBreakWeight
	* @see #BadBreakWeight
	* @see #GoodBreakWeight
	* @see #ForcedBreakWeight
	*/
	public static var ExcellentBreakWeight(default, null) : Int;
	
	/**
	* The weight to indicate a view supports breaking,
	* and must be broken to be represented properly
	* when placed in a view that formats its children
	* by breaking them.
	*
	* @see #getBreakWeight
	* @see #BadBreakWeight
	* @see #GoodBreakWeight
	* @see #ExcellentBreakWeight
	*/
	public static var ForcedBreakWeight(default, null) : Int;
	
	/**
	* Axis for format/break operations.
	*/
	public static var X_AXIS(default, null) : Int;
	
	/**
	* Axis for format/break operations.
	*/
	public static var Y_AXIS(default, null) : Int;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it. This is
	* implemented to default the bias to <code>Position.Bias.Forward</code>
	* which was previously implied.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region in which to render
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @see View#modelToView
	* @deprecated
	*/
	@:overload public function modelToView(pos : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocated region in which to render
	* @return the location within the model that best represents the
	*  given point in the view >= 0
	* @see View#viewToModel
	* @deprecated
	*/
	@:overload public function viewToModel(x : Single, y : Single, a : java.awt.Shape) : Int;
	
	
}
