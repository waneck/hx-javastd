package java.awt.dnd;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DragSource implements java.io.Serializable
{
	/**
	* The default <code>Cursor</code> to use with a copy operation indicating
	* that a drop is currently allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultCopyDrop(default, null) : java.awt.Cursor;
	
	/**
	* The default <code>Cursor</code> to use with a move operation indicating
	* that a drop is currently allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultMoveDrop(default, null) : java.awt.Cursor;
	
	/**
	* The default <code>Cursor</code> to use with a link operation indicating
	* that a drop is currently allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultLinkDrop(default, null) : java.awt.Cursor;
	
	/**
	* The default <code>Cursor</code> to use with a copy operation indicating
	* that a drop is currently not allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultCopyNoDrop(default, null) : java.awt.Cursor;
	
	/**
	* The default <code>Cursor</code> to use with a move operation indicating
	* that a drop is currently not allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultMoveNoDrop(default, null) : java.awt.Cursor;
	
	/**
	* The default <code>Cursor</code> to use with a link operation indicating
	* that a drop is currently not allowed. <code>null</code> if
	* <code>GraphicsEnvironment.isHeadless()</code> returns <code>true</code>.
	*
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:public @:static @:final public static var DefaultLinkNoDrop(default, null) : java.awt.Cursor;
	
	/**
	* Gets the <code>DragSource</code> object associated with
	* the underlying platform.
	*
	* @return the platform DragSource
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public @:static public static function getDefaultDragSource() : java.awt.dnd.DragSource;
	
	/**
	* Reports
	* whether or not drag
	* <code>Image</code> support
	* is available on the underlying platform.
	* <P>
	* @return if the Drag Image support is available on this platform
	*/
	@:overload @:public @:static public static function isDragImageSupported() : Bool;
	
	/**
	* Creates a new <code>DragSource</code>.
	*
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Start a drag, given the <code>DragGestureEvent</code>
	* that initiated the drag, the initial
	* <code>Cursor</code> to use,
	* the <code>Image</code> to drag,
	* the offset of the <code>Image</code> origin
	* from the hotspot of the <code>Cursor</code> at
	* the instant of the trigger,
	* the <code>Transferable</code> subject data
	* of the drag, the <code>DragSourceListener</code>,
	* and the <code>FlavorMap</code>.
	* <P>
	* @param trigger        the <code>DragGestureEvent</code> that initiated the drag
	* @param dragCursor     the initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param dragImage      the image to drag or {@code null}
	* @param imageOffset    the offset of the <code>Image</code> origin from the hotspot
	*                       of the <code>Cursor</code> at the instant of the trigger
	* @param transferable   the subject data of the drag
	* @param dsl            the <code>DragSourceListener</code>
	* @param flavorMap      the <code>FlavorMap</code> to use, or <code>null</code>
	* <P>
	* @throws java.awt.dnd.InvalidDnDOperationException
	*    if the Drag and Drop
	*    system is unable to initiate a drag operation, or if the user
	*    attempts to start a drag while an existing drag operation
	*    is still executing
	*/
	@:overload @:public public function startDrag(trigger : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, dragImage : java.awt.Image, imageOffset : java.awt.Point, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener, flavorMap : java.awt.datatransfer.FlavorMap) : Void;
	
	/**
	* Start a drag, given the <code>DragGestureEvent</code>
	* that initiated the drag, the initial
	* <code>Cursor</code> to use,
	* the <code>Transferable</code> subject data
	* of the drag, the <code>DragSourceListener</code>,
	* and the <code>FlavorMap</code>.
	* <P>
	* @param trigger        the <code>DragGestureEvent</code> that
	* initiated the drag
	* @param dragCursor     the initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param transferable   the subject data of the drag
	* @param dsl            the <code>DragSourceListener</code>
	* @param flavorMap      the <code>FlavorMap</code> to use or <code>null</code>
	* <P>
	* @throws java.awt.dnd.InvalidDnDOperationException
	*    if the Drag and Drop
	*    system is unable to initiate a drag operation, or if the user
	*    attempts to start a drag while an existing drag operation
	*    is still executing
	*/
	@:overload @:public public function startDrag(trigger : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener, flavorMap : java.awt.datatransfer.FlavorMap) : Void;
	
	/**
	* Start a drag, given the <code>DragGestureEvent</code>
	* that initiated the drag, the initial <code>Cursor</code>
	* to use,
	* the <code>Image</code> to drag,
	* the offset of the <code>Image</code> origin
	* from the hotspot of the <code>Cursor</code>
	* at the instant of the trigger,
	* the subject data of the drag, and
	* the <code>DragSourceListener</code>.
	* <P>
	* @param trigger           the <code>DragGestureEvent</code> that initiated the drag
	* @param dragCursor     the initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param dragImage         the <code>Image</code> to drag or <code>null</code>
	* @param dragOffset        the offset of the <code>Image</code> origin from the hotspot
	*                          of the <code>Cursor</code> at the instant of the trigger
	* @param transferable      the subject data of the drag
	* @param dsl               the <code>DragSourceListener</code>
	* <P>
	* @throws java.awt.dnd.InvalidDnDOperationException
	*    if the Drag and Drop
	*    system is unable to initiate a drag operation, or if the user
	*    attempts to start a drag while an existing drag operation
	*    is still executing
	*/
	@:overload @:public public function startDrag(trigger : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, dragImage : java.awt.Image, dragOffset : java.awt.Point, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Start a drag, given the <code>DragGestureEvent</code>
	* that initiated the drag, the initial
	* <code>Cursor</code> to
	* use,
	* the <code>Transferable</code> subject data
	* of the drag, and the <code>DragSourceListener</code>.
	* <P>
	* @param trigger           the <code>DragGestureEvent</code> that initiated the drag
	* @param dragCursor     the initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a> class
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param transferable      the subject data of the drag
	* @param dsl               the <code>DragSourceListener</code>
	* <P>
	* @throws java.awt.dnd.InvalidDnDOperationException
	*    if the Drag and Drop
	*    system is unable to initiate a drag operation, or if the user
	*    attempts to start a drag while an existing drag operation
	*    is still executing
	*/
	@:overload @:public public function startDrag(trigger : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Creates the {@code DragSourceContext} to handle the current drag
	* operation.
	* <p>
	* To incorporate a new <code>DragSourceContext</code>
	* subclass, subclass <code>DragSource</code> and
	* override this method.
	* <p>
	* If <code>dragImage</code> is <code>null</code>, no image is used
	* to represent the drag over feedback for this drag operation, but
	* <code>NullPointerException</code> is not thrown.
	* <p>
	* If <code>dsl</code> is <code>null</code>, no drag source listener
	* is registered with the created <code>DragSourceContext</code>,
	* but <code>NullPointerException</code> is not thrown.
	*
	* @param dscp          The <code>DragSourceContextPeer</code> for this drag
	* @param dgl           The <code>DragGestureEvent</code> that triggered the
	*                      drag
	* @param dragCursor     The initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a> class
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param dragImage     The <code>Image</code> to drag or <code>null</code>
	* @param imageOffset   The offset of the <code>Image</code> origin from the
	*                      hotspot of the cursor at the instant of the trigger
	* @param t             The subject data of the drag
	* @param dsl           The <code>DragSourceListener</code>
	*
	* @return the <code>DragSourceContext</code>
	*
	* @throws NullPointerException if <code>dscp</code> is <code>null</code>
	* @throws NullPointerException if <code>dgl</code> is <code>null</code>
	* @throws NullPointerException if <code>dragImage</code> is not
	*    <code>null</code> and <code>imageOffset</code> is <code>null</code>
	* @throws NullPointerException if <code>t</code> is <code>null</code>
	* @throws IllegalArgumentException if the <code>Component</code>
	*         associated with the trigger event is <code>null</code>.
	* @throws IllegalArgumentException if the <code>DragSource</code> for the
	*         trigger event is <code>null</code>.
	* @throws IllegalArgumentException if the drag action for the
	*         trigger event is <code>DnDConstants.ACTION_NONE</code>.
	* @throws IllegalArgumentException if the source actions for the
	*         <code>DragGestureRecognizer</code> associated with the trigger
	*         event are equal to <code>DnDConstants.ACTION_NONE</code>.
	*/
	@:overload @:protected private function createDragSourceContext(dscp : java.awt.dnd.peer.DragSourceContextPeer, dgl : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, dragImage : java.awt.Image, imageOffset : java.awt.Point, t : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : java.awt.dnd.DragSourceContext;
	
	/**
	* This method returns the
	* <code>FlavorMap</code> for this <code>DragSource</code>.
	* <P>
	* @return the <code>FlavorMap</code> for this <code>DragSource</code>
	*/
	@:overload @:public public function getFlavorMap() : java.awt.datatransfer.FlavorMap;
	
	/**
	* Creates a new <code>DragGestureRecognizer</code>
	* that implements the specified
	* abstract subclass of
	* <code>DragGestureRecognizer</code>, and
	* sets the specified <code>Component</code>
	* and <code>DragGestureListener</code> on
	* the newly created object.
	* <P>
	* @param recognizerAbstractClass the requested abstract type
	* @param actions                 the permitted source drag actions
	* @param c                       the <code>Component</code> target
	* @param dgl        the <code>DragGestureListener</code> to notify
	* <P>
	* @return the new <code>DragGestureRecognizer</code> or <code>null</code>
	*    if the <code>Toolkit.createDragGestureRecognizer</code> method
	*    has no implementation available for
	*    the requested <code>DragGestureRecognizer</code>
	*    subclass and returns <code>null</code>
	*/
	@:overload @:public public function createDragGestureRecognizer<T : java.awt.dnd.DragGestureRecognizer>(recognizerAbstractClass : Class<T>, c : java.awt.Component, actions : Int, dgl : java.awt.dnd.DragGestureListener) : T;
	
	/**
	* Creates a new <code>DragGestureRecognizer</code>
	* that implements the default
	* abstract subclass of <code>DragGestureRecognizer</code>
	* for this <code>DragSource</code>,
	* and sets the specified <code>Component</code>
	* and <code>DragGestureListener</code> on the
	* newly created object.
	*
	* For this <code>DragSource</code>
	* the default is <code>MouseDragGestureRecognizer</code>.
	* <P>
	* @param c       the <code>Component</code> target for the recognizer
	* @param actions the permitted source actions
	* @param dgl     the <code>DragGestureListener</code> to notify
	* <P>
	* @return the new <code>DragGestureRecognizer</code> or <code>null</code>
	*    if the <code>Toolkit.createDragGestureRecognizer</code> method
	*    has no implementation available for
	*    the requested <code>DragGestureRecognizer</code>
	*    subclass and returns <code>null</code>
	*/
	@:overload @:public public function createDefaultDragGestureRecognizer(c : java.awt.Component, actions : Int, dgl : java.awt.dnd.DragGestureListener) : java.awt.dnd.DragGestureRecognizer;
	
	/**
	* Adds the specified <code>DragSourceListener</code> to this
	* <code>DragSource</code> to receive drag source events during drag
	* operations intiated with this <code>DragSource</code>.
	* If a <code>null</code> listener is specified, no action is taken and no
	* exception is thrown.
	*
	* @param dsl the <code>DragSourceListener</code> to add
	*
	* @see      #removeDragSourceListener
	* @see      #getDragSourceListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function addDragSourceListener(dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Removes the specified <code>DragSourceListener</code> from this
	* <code>DragSource</code>.
	* If a <code>null</code> listener is specified, no action is taken and no
	* exception is thrown.
	* If the listener specified by the argument was not previously added to
	* this <code>DragSource</code>, no action is taken and no exception
	* is thrown.
	*
	* @param dsl the <code>DragSourceListener</code> to remove
	*
	* @see      #addDragSourceListener
	* @see      #getDragSourceListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function removeDragSourceListener(dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Gets all the <code>DragSourceListener</code>s
	* registered with this <code>DragSource</code>.
	*
	* @return all of this <code>DragSource</code>'s
	*         <code>DragSourceListener</code>s or an empty array if no
	*         such listeners are currently registered
	*
	* @see      #addDragSourceListener
	* @see      #removeDragSourceListener
	* @since    1.4
	*/
	@:require(java4) @:overload @:public public function getDragSourceListeners() : java.NativeArray<java.awt.dnd.DragSourceListener>;
	
	/**
	* Adds the specified <code>DragSourceMotionListener</code> to this
	* <code>DragSource</code> to receive drag motion events during drag
	* operations intiated with this <code>DragSource</code>.
	* If a <code>null</code> listener is specified, no action is taken and no
	* exception is thrown.
	*
	* @param dsml the <code>DragSourceMotionListener</code> to add
	*
	* @see      #removeDragSourceMotionListener
	* @see      #getDragSourceMotionListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function addDragSourceMotionListener(dsml : java.awt.dnd.DragSourceMotionListener) : Void;
	
	/**
	* Removes the specified <code>DragSourceMotionListener</code> from this
	* <code>DragSource</code>.
	* If a <code>null</code> listener is specified, no action is taken and no
	* exception is thrown.
	* If the listener specified by the argument was not previously added to
	* this <code>DragSource</code>, no action is taken and no exception
	* is thrown.
	*
	* @param dsml the <code>DragSourceMotionListener</code> to remove
	*
	* @see      #addDragSourceMotionListener
	* @see      #getDragSourceMotionListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function removeDragSourceMotionListener(dsml : java.awt.dnd.DragSourceMotionListener) : Void;
	
	/**
	* Gets all of the  <code>DragSourceMotionListener</code>s
	* registered with this <code>DragSource</code>.
	*
	* @return all of this <code>DragSource</code>'s
	*         <code>DragSourceMotionListener</code>s or an empty array if no
	*         such listeners are currently registered
	*
	* @see      #addDragSourceMotionListener
	* @see      #removeDragSourceMotionListener
	* @since    1.4
	*/
	@:require(java4) @:overload @:public public function getDragSourceMotionListeners() : java.NativeArray<java.awt.dnd.DragSourceMotionListener>;
	
	/**
	* Gets all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s upon this <code>DragSource</code>.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this
	*          <code>DragSource</code>, or an empty array if no such listeners
	*          have been added
	* @exception <code>ClassCastException</code> if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getDragSourceListeners
	* @see #getDragSourceMotionListeners
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Returns the drag gesture motion threshold. The drag gesture motion threshold
	* defines the recommended behavior for {@link MouseDragGestureRecognizer}s.
	* <p>
	* If the system property <code>awt.dnd.drag.threshold</code> is set to
	* a positive integer, this method returns the value of the system property;
	* otherwise if a pertinent desktop property is available and supported by
	* the implementation of the Java platform, this method returns the value of
	* that property; otherwise this method returns some default value.
	* The pertinent desktop property can be queried using
	* <code>java.awt.Toolkit.getDesktopProperty("DnD.gestureMotionThreshold")</code>.
	*
	* @return the drag gesture motion threshold
	* @see MouseDragGestureRecognizer
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getDragThreshold() : Int;
	
	
}
