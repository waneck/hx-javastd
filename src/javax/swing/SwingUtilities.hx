package javax.swing;
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
extern class SwingUtilities implements javax.swing.SwingConstants
{
	/**
	* Return true if <code>a</code> contains <code>b</code>
	*/
	@:overload @:public @:static @:final public static function isRectangleContainingRectangle(a : java.awt.Rectangle, b : java.awt.Rectangle) : Bool;
	
	/**
	* Return the rectangle (0,0,bounds.width,bounds.height) for the component <code>aComponent</code>
	*/
	@:overload @:public @:static public static function getLocalBounds(aComponent : java.awt.Component) : java.awt.Rectangle;
	
	/**
	* Returns the first <code>Window </code> ancestor of <code>c</code>, or
	* {@code null} if <code>c</code> is not contained inside a <code>Window</code>.
	*
	* @param c <code>Component</code> to get <code>Window</code> ancestor
	*        of.
	* @return the first <code>Window </code> ancestor of <code>c</code>, or
	*         {@code null} if <code>c</code> is not contained inside a
	*         <code>Window</code>.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function getWindowAncestor(c : java.awt.Component) : java.awt.Window;
	
	/**
	* Convert a <code>aPoint</code> in <code>source</code> coordinate system to
	* <code>destination</code> coordinate system.
	* If <code>source</code> is {@code null}, <code>aPoint</code> is assumed to be in <code>destination</code>'s
	* root component coordinate system.
	* If <code>destination</code> is {@code null}, <code>aPoint</code> will be converted to <code>source</code>'s
	* root component coordinate system.
	* If both <code>source</code> and <code>destination</code> are {@code null}, return <code>aPoint</code>
	* without any conversion.
	*/
	@:overload @:public @:static public static function convertPoint(source : java.awt.Component, aPoint : java.awt.Point, destination : java.awt.Component) : java.awt.Point;
	
	/**
	* Convert the point <code>(x,y)</code> in <code>source</code> coordinate system to
	* <code>destination</code> coordinate system.
	* If <code>source</code> is {@code null}, <code>(x,y)</code> is assumed to be in <code>destination</code>'s
	* root component coordinate system.
	* If <code>destination</code> is {@code null}, <code>(x,y)</code> will be converted to <code>source</code>'s
	* root component coordinate system.
	* If both <code>source</code> and <code>destination</code> are {@code null}, return <code>(x,y)</code>
	* without any conversion.
	*/
	@:overload @:public @:static public static function convertPoint(source : java.awt.Component, x : Int, y : Int, destination : java.awt.Component) : java.awt.Point;
	
	/**
	* Convert the rectangle <code>aRectangle</code> in <code>source</code> coordinate system to
	* <code>destination</code> coordinate system.
	* If <code>source</code> is {@code null}, <code>aRectangle</code> is assumed to be in <code>destination</code>'s
	* root component coordinate system.
	* If <code>destination</code> is {@code null}, <code>aRectangle</code> will be converted to <code>source</code>'s
	* root component coordinate system.
	* If both <code>source</code> and <code>destination</code> are {@code null}, return <code>aRectangle</code>
	* without any conversion.
	*/
	@:overload @:public @:static public static function convertRectangle(source : java.awt.Component, aRectangle : java.awt.Rectangle, destination : java.awt.Component) : java.awt.Rectangle;
	
	/**
	* Convenience method for searching above <code>comp</code> in the
	* component hierarchy and returns the first object of class <code>c</code> it
	* finds. Can return {@code null}, if a class <code>c</code> cannot be found.
	*/
	@:overload @:public @:static public static function getAncestorOfClass(c : Class<Dynamic>, comp : java.awt.Component) : java.awt.Container;
	
	/**
	* Convenience method for searching above <code>comp</code> in the
	* component hierarchy and returns the first object of <code>name</code> it
	* finds. Can return {@code null}, if <code>name</code> cannot be found.
	*/
	@:overload @:public @:static public static function getAncestorNamed(name : String, comp : java.awt.Component) : java.awt.Container;
	
	/**
	* Returns the deepest visible descendent Component of <code>parent</code>
	* that contains the location <code>x</code>, <code>y</code>.
	* If <code>parent</code> does not contain the specified location,
	* then <code>null</code> is returned.  If <code>parent</code> is not a
	* container, or none of <code>parent</code>'s visible descendents
	* contain the specified location, <code>parent</code> is returned.
	*
	* @param parent the root component to begin the search
	* @param x the x target location
	* @param y the y target location
	*/
	@:overload @:public @:static public static function getDeepestComponentAt(parent : java.awt.Component, x : Int, y : Int) : java.awt.Component;
	
	/**
	* Returns a MouseEvent similar to <code>sourceEvent</code> except that its x
	* and y members have been converted to <code>destination</code>'s coordinate
	* system.  If <code>source</code> is {@code null}, <code>sourceEvent</code> x and y members
	* are assumed to be into <code>destination</code>'s root component coordinate system.
	* If <code>destination</code> is <code>null</code>, the
	* returned MouseEvent will be in <code>source</code>'s coordinate system.
	* <code>sourceEvent</code> will not be changed. A new event is returned.
	* the <code>source</code> field of the returned event will be set
	* to <code>destination</code> if destination is non-{@code null}
	* use the translateMouseEvent() method to translate a mouse event from
	* one component to another without changing the source.
	*/
	@:overload @:public @:static public static function convertMouseEvent(source : java.awt.Component, sourceEvent : java.awt.event.MouseEvent, destination : java.awt.Component) : java.awt.event.MouseEvent;
	
	/**
	* Convert a point from a component's coordinate system to
	* screen coordinates.
	*
	* @param p  a Point object (converted to the new coordinate system)
	* @param c  a Component object
	*/
	@:overload @:public @:static public static function convertPointToScreen(p : java.awt.Point, c : java.awt.Component) : Void;
	
	/**
	* Convert a point from a screen coordinates to a component's
	* coordinate system
	*
	* @param p  a Point object (converted to the new coordinate system)
	* @param c  a Component object
	*/
	@:overload @:public @:static public static function convertPointFromScreen(p : java.awt.Point, c : java.awt.Component) : Void;
	
	/**
	* Returns the first <code>Window </code> ancestor of <code>c</code>, or
	* {@code null} if <code>c</code> is not contained inside a <code>Window</code>.
	* <p>
	* Note: This method provides the same functionality as
	* <code>getWindowAncestor</code>.
	*
	* @param c <code>Component</code> to get <code>Window</code> ancestor
	*        of.
	* @return the first <code>Window </code> ancestor of <code>c</code>, or
	*         {@code null} if <code>c</code> is not contained inside a
	*         <code>Window</code>.
	*/
	@:overload @:public @:static public static function windowForComponent(c : java.awt.Component) : java.awt.Window;
	
	/**
	* Return <code>true</code> if a component <code>a</code> descends from a component <code>b</code>
	*/
	@:overload @:public @:static public static function isDescendingFrom(a : java.awt.Component, b : java.awt.Component) : Bool;
	
	/**
	* Convenience to calculate the intersection of two rectangles
	* without allocating a new rectangle.
	* If the two rectangles don't intersect,
	* then the returned rectangle begins at (0,0)
	* and has zero width and height.
	*
	* @param x       the X coordinate of the first rectangle's top-left point
	* @param y       the Y coordinate of the first rectangle's top-left point
	* @param width   the width of the first rectangle
	* @param height  the height of the first rectangle
	* @param dest    the second rectangle
	*
	* @return <code>dest</code>, modified to specify the intersection
	*/
	@:overload @:public @:static public static function computeIntersection(x : Int, y : Int, width : Int, height : Int, dest : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Convenience method that calculates the union of two rectangles
	* without allocating a new rectangle.
	*
	* @param x the x-coordinate of the first rectangle
	* @param y the y-coordinate of the first rectangle
	* @param width the width of the first rectangle
	* @param height the height of the first rectangle
	* @param dest  the coordinates of the second rectangle; the union
	*    of the two rectangles is returned in this rectangle
	* @return the <code>dest</code> <code>Rectangle</code>
	*/
	@:overload @:public @:static public static function computeUnion(x : Int, y : Int, width : Int, height : Int, dest : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Convenience returning an array of rect representing the regions within
	* <code>rectA</code> that do not overlap with <code>rectB</code>. If the
	* two Rects do not overlap, returns an empty array
	*/
	@:overload @:public @:static public static function computeDifference(rectA : java.awt.Rectangle, rectB : java.awt.Rectangle) : java.NativeArray<java.awt.Rectangle>;
	
	/**
	* Returns true if the mouse event specifies the left mouse button.
	*
	* @param anEvent  a MouseEvent object
	* @return true if the left mouse button was active
	*/
	@:overload @:public @:static public static function isLeftMouseButton(anEvent : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Returns true if the mouse event specifies the middle mouse button.
	*
	* @param anEvent  a MouseEvent object
	* @return true if the middle mouse button was active
	*/
	@:overload @:public @:static public static function isMiddleMouseButton(anEvent : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Returns true if the mouse event specifies the right mouse button.
	*
	* @param anEvent  a MouseEvent object
	* @return true if the right mouse button was active
	*/
	@:overload @:public @:static public static function isRightMouseButton(anEvent : java.awt.event.MouseEvent) : Bool;
	
	/**
	* Compute the width of the string using a font with the specified
	* "metrics" (sizes).
	*
	* @param fm   a FontMetrics object to compute with
	* @param str  the String to compute
	* @return an int containing the string width
	*/
	@:overload @:public @:static public static function computeStringWidth(fm : java.awt.FontMetrics, str : String) : Int;
	
	/**
	* Compute and return the location of the icons origin, the
	* location of origin of the text baseline, and a possibly clipped
	* version of the compound labels string.  Locations are computed
	* relative to the viewR rectangle.
	* The JComponents orientation (LEADING/TRAILING) will also be taken
	* into account and translated into LEFT/RIGHT values accordingly.
	*/
	@:overload @:public @:static public static function layoutCompoundLabel(c : javax.swing.JComponent, fm : java.awt.FontMetrics, text : String, icon : javax.swing.Icon, verticalAlignment : Int, horizontalAlignment : Int, verticalTextPosition : Int, horizontalTextPosition : Int, viewR : java.awt.Rectangle, iconR : java.awt.Rectangle, textR : java.awt.Rectangle, textIconGap : Int) : String;
	
	/**
	* Compute and return the location of the icons origin, the
	* location of origin of the text baseline, and a possibly clipped
	* version of the compound labels string.  Locations are computed
	* relative to the viewR rectangle.
	* This layoutCompoundLabel() does not know how to handle LEADING/TRAILING
	* values in horizontalTextPosition (they will default to RIGHT) and in
	* horizontalAlignment (they will default to CENTER).
	* Use the other version of layoutCompoundLabel() instead.
	*/
	@:overload @:public @:static public static function layoutCompoundLabel(fm : java.awt.FontMetrics, text : String, icon : javax.swing.Icon, verticalAlignment : Int, horizontalAlignment : Int, verticalTextPosition : Int, horizontalTextPosition : Int, viewR : java.awt.Rectangle, iconR : java.awt.Rectangle, textR : java.awt.Rectangle, textIconGap : Int) : String;
	
	/**
	* Paints a component to the specified <code>Graphics</code>.
	* This method is primarily useful to render
	* <code>Component</code>s that don't exist as part of the visible
	* containment hierarchy, but are used for rendering.  For
	* example, if you are doing your own rendering and want to render
	* some text (or even HTML), you could make use of
	* <code>JLabel</code>'s text rendering support and have it paint
	* directly by way of this method, without adding the label to the
	* visible containment hierarchy.
	* <p>
	* This method makes use of <code>CellRendererPane</code> to handle
	* the actual painting, and is only recommended if you use one
	* component for rendering.  If you make use of multiple components
	* to handle the rendering, as <code>JTable</code> does, use
	* <code>CellRendererPane</code> directly.  Otherwise, as described
	* below, you could end up with a <code>CellRendererPane</code>
	* per <code>Component</code>.
	* <p>
	* If <code>c</code>'s parent is not a <code>CellRendererPane</code>,
	* a new <code>CellRendererPane</code> is created, <code>c</code> is
	* added to it, and the <code>CellRendererPane</code> is added to
	* <code>p</code>.  If <code>c</code>'s parent is a
	* <code>CellRendererPane</code> and the <code>CellRendererPane</code>s
	* parent is not <code>p</code>, it is added to <code>p</code>.
	* <p>
	* The component should either descend from <code>JComponent</code>
	* or be another kind of lightweight component.
	* A lightweight component is one whose "lightweight" property
	* (returned by the <code>Component</code>
	* <code>isLightweight</code> method)
	* is true. If the Component is not lightweight, bad things map happen:
	* crashes, exceptions, painting problems...
	*
	* @param g  the <code>Graphics</code> object to draw on
	* @param c  the <code>Component</code> to draw
	* @param p  the intermediate <code>Container</code>
	* @param x  an int specifying the left side of the area draw in, in pixels,
	*           measured from the left edge of the graphics context
	* @param y  an int specifying the top of the area to draw in, in pixels
	*           measured down from the top edge of the graphics context
	* @param w  an int specifying the width of the area draw in, in pixels
	* @param h  an int specifying the height of the area draw in, in pixels
	*
	* @see CellRendererPane
	* @see java.awt.Component#isLightweight
	*/
	@:overload @:public @:static public static function paintComponent(g : java.awt.Graphics, c : java.awt.Component, p : java.awt.Container, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints a component to the specified <code>Graphics</code>.  This
	* is a cover method for
	* {@link #paintComponent(Graphics,Component,Container,int,int,int,int)}.
	* Refer to it for more information.
	*
	* @param g  the <code>Graphics</code> object to draw on
	* @param c  the <code>Component</code> to draw
	* @param p  the intermediate <code>Container</code>
	* @param r  the <code>Rectangle</code> to draw in
	*
	* @see #paintComponent(Graphics,Component,Container,int,int,int,int)
	* @see CellRendererPane
	*/
	@:overload @:public @:static public static function paintComponent(g : java.awt.Graphics, c : java.awt.Component, p : java.awt.Container, r : java.awt.Rectangle) : Void;
	
	/**
	* A simple minded look and feel change: ask each node in the tree
	* to <code>updateUI()</code> -- that is, to initialize its UI property
	* with the current look and feel.
	*/
	@:overload @:public @:static public static function updateComponentTreeUI(c : java.awt.Component) : Void;
	
	/**
	* Causes <i>doRun.run()</i> to be executed asynchronously on the
	* AWT event dispatching thread.  This will happen after all
	* pending AWT events have been processed.  This method should
	* be used when an application thread needs to update the GUI.
	* In the following example the <code>invokeLater</code> call queues
	* the <code>Runnable</code> object <code>doHelloWorld</code>
	* on the event dispatching thread and
	* then prints a message.
	* <pre>
	* Runnable doHelloWorld = new Runnable() {
	*     public void run() {
	*         System.out.println("Hello World on " + Thread.currentThread());
	*     }
	* };
	*
	* SwingUtilities.invokeLater(doHelloWorld);
	* System.out.println("This might well be displayed before the other message.");
	* </pre>
	* If invokeLater is called from the event dispatching thread --
	* for example, from a JButton's ActionListener -- the <i>doRun.run()</i> will
	* still be deferred until all pending events have been processed.
	* Note that if the <i>doRun.run()</i> throws an uncaught exception
	* the event dispatching thread will unwind (not the current thread).
	* <p>
	* Additional documentation and examples for this method can be
	* found in
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How to Use Threads</a>,
	* in <em>The Java Tutorial</em>.
	* <p>
	* As of 1.3 this method is just a cover for <code>java.awt.EventQueue.invokeLater()</code>.
	* <p>
	* Unlike the rest of Swing, this method can be invoked from any thread.
	*
	* @see #invokeAndWait
	*/
	@:overload @:public @:static public static function invokeLater(doRun : java.lang.Runnable) : Void;
	
	/**
	* Causes <code>doRun.run()</code> to be executed synchronously on the
	* AWT event dispatching thread.  This call blocks until
	* all pending AWT events have been processed and (then)
	* <code>doRun.run()</code> returns. This method should
	* be used when an application thread needs to update the GUI.
	* It shouldn't be called from the event dispatching thread.
	* Here's an example that creates a new application thread
	* that uses <code>invokeAndWait</code> to print a string from the event
	* dispatching thread and then, when that's finished, print
	* a string from the application thread.
	* <pre>
	* final Runnable doHelloWorld = new Runnable() {
	*     public void run() {
	*         System.out.println("Hello World on " + Thread.currentThread());
	*     }
	* };
	*
	* Thread appThread = new Thread() {
	*     public void run() {
	*         try {
	*             SwingUtilities.invokeAndWait(doHelloWorld);
	*         }
	*         catch (Exception e) {
	*             e.printStackTrace();
	*         }
	*         System.out.println("Finished on " + Thread.currentThread());
	*     }
	* };
	* appThread.start();
	* </pre>
	* Note that if the <code>Runnable.run</code> method throws an
	* uncaught exception
	* (on the event dispatching thread) it's caught and rethrown, as
	* an <code>InvocationTargetException</code>, on the caller's thread.
	* <p>
	* Additional documentation and examples for this method can be
	* found in
	* <A HREF="http://java.sun.com/docs/books/tutorial/uiswing/misc/threads.html">How to Use Threads</a>,
	* in <em>The Java Tutorial</em>.
	* <p>
	* As of 1.3 this method is just a cover for
	* <code>java.awt.EventQueue.invokeAndWait()</code>.
	*
	* @exception  InterruptedException if we're interrupted while waiting for
	*             the event dispatching thread to finish excecuting
	*             <code>doRun.run()</code>
	* @exception  InvocationTargetException  if an exception is thrown
	*             while running <code>doRun</code>
	*
	* @see #invokeLater
	*/
	@:overload @:public @:static public static function invokeAndWait(doRun : java.lang.Runnable) : Void;
	
	/**
	* Returns true if the current thread is an AWT event dispatching thread.
	* <p>
	* As of 1.3 this method is just a cover for
	* <code>java.awt.EventQueue.isDispatchThread()</code>.
	*
	* @return true if the current thread is an AWT event dispatching thread
	*/
	@:overload @:public @:static public static function isEventDispatchThread() : Bool;
	
	/**
	* Get the index of this object in its accessible parent.<p>
	*
	* Note: as of the Java 2 platform v1.3, it is recommended that developers call
	* Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
	* of using this method.
	*
	* @return -1 of this object does not have an accessible parent.
	* Otherwise, the index of the child in its accessible parent.
	*/
	@:overload @:public @:static public static function getAccessibleIndexInParent(c : java.awt.Component) : Int;
	
	/**
	* Returns the <code>Accessible</code> child contained at the
	* local coordinate <code>Point</code>, if one exists.
	* Otherwise returns <code>null</code>.
	*
	* @return the <code>Accessible</code> at the specified location,
	*    if it exists; otherwise <code>null</code>
	*/
	@:overload @:public @:static public static function getAccessibleAt(c : java.awt.Component, p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Get the state of this object. <p>
	*
	* Note: as of the Java 2 platform v1.3, it is recommended that developers call
	* Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
	* of using this method.
	*
	* @return an instance of AccessibleStateSet containing the current state
	* set of the object
	* @see AccessibleState
	*/
	@:overload @:public @:static public static function getAccessibleStateSet(c : java.awt.Component) : javax.accessibility.AccessibleStateSet;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement Accessible, than this
	* method should return the number of children of this object. <p>
	*
	* Note: as of the Java 2 platform v1.3, it is recommended that developers call
	* Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
	* of using this method.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload @:public @:static public static function getAccessibleChildrenCount(c : java.awt.Component) : Int;
	
	/**
	* Return the nth Accessible child of the object. <p>
	*
	* Note: as of the Java 2 platform v1.3, it is recommended that developers call
	* Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
	* of using this method.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload @:public @:static public static function getAccessibleChild(c : java.awt.Component, i : Int) : javax.accessibility.Accessible;
	
	/**
	* Return the child <code>Component</code> of the specified
	* <code>Component</code> that is the focus owner, if any.
	*
	* @param c the root of the <code>Component</code> hierarchy to
	*        search for the focus owner
	* @return the focus owner, or <code>null</code> if there is no focus
	*         owner, or if the focus owner is not <code>comp</code>, or a
	*         descendant of <code>comp</code>
	*
	* @see java.awt.KeyboardFocusManager#getFocusOwner
	* @deprecated As of 1.4, replaced by
	*   <code>KeyboardFocusManager.getFocusOwner()</code>.
	*/
	@:overload @:public @:static public static function findFocusOwner(c : java.awt.Component) : java.awt.Component;
	
	/**
	* If c is a JRootPane descendant return its JRootPane ancestor.
	* If c is a RootPaneContainer then return its JRootPane.
	* @return the JRootPane for Component c or {@code null}.
	*/
	@:overload @:public @:static public static function getRootPane(c : java.awt.Component) : javax.swing.JRootPane;
	
	/**
	* Returns the root component for the current component tree.
	* @return the first ancestor of c that's a Window or the last Applet ancestor
	*/
	@:overload @:public @:static public static function getRoot(c : java.awt.Component) : java.awt.Component;
	
	/**
	* Process the key bindings for the <code>Component</code> associated with
	* <code>event</code>. This method is only useful if
	* <code>event.getComponent()</code> does not descend from
	* <code>JComponent</code>, or your are not invoking
	* <code>super.processKeyEvent</code> from within your
	* <code>JComponent</code> subclass. <code>JComponent</code>
	* automatically processes bindings from within its
	* <code>processKeyEvent</code> method, hence you rarely need
	* to directly invoke this method.
	*
	* @param event KeyEvent used to identify which bindings to process, as
	*              well as which Component has focus.
	* @return true if a binding has found and processed
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function processKeyBindings(event : java.awt.event.KeyEvent) : Bool;
	
	/**
	* Invokes <code>actionPerformed</code> on <code>action</code> if
	* <code>action</code> is enabled (and non-{@code null}). The command for the
	* ActionEvent is determined by:
	* <ol>
	*   <li>If the action was registered via
	*       <code>registerKeyboardAction</code>, then the command string
	*       passed in ({@code null} will be used if {@code null} was passed in).
	*   <li>Action value with name Action.ACTION_COMMAND_KEY, unless {@code null}.
	*   <li>String value of the KeyEvent, unless <code>getKeyChar</code>
	*       returns KeyEvent.CHAR_UNDEFINED..
	* </ol>
	* This will return true if <code>action</code> is non-{@code null} and
	* actionPerformed is invoked on it.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function notifyAction(action : javax.swing.Action, ks : javax.swing.KeyStroke, event : java.awt.event.KeyEvent, sender : Dynamic, modifiers : Int) : Bool;
	
	/**
	* Convenience method to change the UI InputMap for <code>component</code>
	* to <code>uiInputMap</code>. If <code>uiInputMap</code> is {@code null},
	* this removes any previously installed UI InputMap.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function replaceUIInputMap(component : javax.swing.JComponent, type : Int, uiInputMap : javax.swing.InputMap) : Void;
	
	/**
	* Convenience method to change the UI ActionMap for <code>component</code>
	* to <code>uiActionMap</code>. If <code>uiActionMap</code> is {@code null},
	* this removes any previously installed UI ActionMap.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function replaceUIActionMap(component : javax.swing.JComponent, uiActionMap : javax.swing.ActionMap) : Void;
	
	/**
	* Returns the InputMap provided by the UI for condition
	* <code>condition</code> in component <code>component</code>.
	* <p>This will return {@code null} if the UI has not installed a InputMap
	* of the specified type.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function getUIInputMap(component : javax.swing.JComponent, condition : Int) : javax.swing.InputMap;
	
	/**
	* Returns the ActionMap provided by the UI
	* in component <code>component</code>.
	* <p>This will return {@code null} if the UI has not installed an ActionMap.
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function getUIActionMap(component : javax.swing.JComponent) : javax.swing.ActionMap;
	
	/**
	* Stores the position and size of
	* the inner painting area of the specified component
	* in <code>r</code> and returns <code>r</code>.
	* The position and size specify the bounds of the component,
	* adjusted so as not to include the border area (the insets).
	* This method is useful for classes
	* that implement painting code.
	*
	* @param c  the JComponent in question; if {@code null}, this method returns {@code null}
	* @param r  the Rectangle instance to be modified;
	*           may be {@code null}
	* @return {@code null} if the Component is {@code null};
	*         otherwise, returns the passed-in rectangle (if non-{@code null})
	*         or a new rectangle specifying position and size information
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public @:static public static function calculateInnerArea(c : javax.swing.JComponent, r : java.awt.Rectangle) : java.awt.Rectangle;
	
	/**
	* Returns the first ancestor of the {@code component}
	* which is not an instance of {@link JLayer}.
	*
	* @param component {@code Component} to get
	* the first ancestor of, which is not a {@link JLayer} instance.
	*
	* @return the first ancestor of the {@code component}
	* which is not an instance of {@link JLayer}.
	* If such an ancestor can not be found, {@code null} is returned.
	*
	* @throws NullPointerException if {@code component} is {@code null}
	* @see JLayer
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getUnwrappedParent(component : java.awt.Component) : java.awt.Container;
	
	/**
	* Returns the first {@code JViewport}'s descendant
	* which is not an instance of {@code JLayer}.
	* If such a descendant can not be found, {@code null} is returned.
	*
	* If the {@code viewport}'s view component is not a {@code JLayer},
	* this method is equivalent to {@link JViewport#getView()}
	* otherwise {@link JLayer#getView()} will be recursively
	* called on all descending {@code JLayer}s.
	*
	* @param viewport {@code JViewport} to get the first descendant of,
	* which in not a {@code JLayer} instance.
	*
	* @return the first {@code JViewport}'s descendant
	* which is not an instance of {@code JLayer}.
	* If such a descendant can not be found, {@code null} is returned.
	*
	* @throws NullPointerException if {@code viewport} is {@code null}
	* @see JViewport#getView()
	* @see JLayer
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:static public static function getUnwrappedView(viewport : javax.swing.JViewport) : java.awt.Component;
	
	
}
@:native('javax$swing$SwingUtilities$SharedOwnerFrame') @:internal extern class SwingUtilities_SharedOwnerFrame extends java.awt.Frame implements java.awt.event.WindowListener
{
	@:overload @:public override public function addNotify() : Void;
	
	/**
	* Watches for displayability changes and disposes shared instance if there are no
	* displayable children left.
	*/
	@:overload @:public public function windowClosed(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowOpened(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowClosing(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowIconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeiconified(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowActivated(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowDeactivated(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public override public function show() : Void;
	
	@:overload @:public override public function dispose() : Void;
	
	
}
