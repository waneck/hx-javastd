package java.awt.dnd;
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
extern class DropTarget implements java.awt.dnd.DropTargetListener implements java.io.Serializable
{
	/**
	* Creates a new DropTarget given the <code>Component</code>
	* to associate itself with, an <code>int</code> representing
	* the default acceptable action(s) to
	* support, a <code>DropTargetListener</code>
	* to handle event processing, a <code>boolean</code> indicating
	* if the <code>DropTarget</code> is currently accepting drops, and
	* a <code>FlavorMap</code> to use (or null for the default <CODE>FlavorMap</CODE>).
	* <P>
	* The Component will receive drops only if it is enabled.
	* @param c         The <code>Component</code> with which this <code>DropTarget</code> is associated
	* @param ops       The default acceptable actions for this <code>DropTarget</code>
	* @param dtl       The <code>DropTargetListener</code> for this <code>DropTarget</code>
	* @param act       Is the <code>DropTarget</code> accepting drops.
	* @param fm        The <code>FlavorMap</code> to use, or null for the default <CODE>FlavorMap</CODE>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(c : java.awt.Component, ops : Int, dtl : java.awt.dnd.DropTargetListener, act : Bool, fm : java.awt.datatransfer.FlavorMap) : Void;
	
	/**
	* Creates a <code>DropTarget</code> given the <code>Component</code>
	* to associate itself with, an <code>int</code> representing
	* the default acceptable action(s)
	* to support, a <code>DropTargetListener</code>
	* to handle event processing, and a <code>boolean</code> indicating
	* if the <code>DropTarget</code> is currently accepting drops.
	* <P>
	* The Component will receive drops only if it is enabled.
	* @param c         The <code>Component</code> with which this <code>DropTarget</code> is associated
	* @param ops       The default acceptable actions for this <code>DropTarget</code>
	* @param dtl       The <code>DropTargetListener</code> for this <code>DropTarget</code>
	* @param act       Is the <code>DropTarget</code> accepting drops.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(c : java.awt.Component, ops : Int, dtl : java.awt.dnd.DropTargetListener, act : Bool) : Void;
	
	/**
	* Creates a <code>DropTarget</code>.
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>DropTarget</code> given the <code>Component</code>
	* to associate itself with, and the <code>DropTargetListener</code>
	* to handle event processing.
	* <P>
	* The Component will receive drops only if it is enabled.
	* @param c         The <code>Component</code> with which this <code>DropTarget</code> is associated
	* @param dtl       The <code>DropTargetListener</code> for this <code>DropTarget</code>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(c : java.awt.Component, dtl : java.awt.dnd.DropTargetListener) : Void;
	
	/**
	* Creates a <code>DropTarget</code> given the <code>Component</code>
	* to associate itself with, an <code>int</code> representing
	* the default acceptable action(s) to support, and a
	* <code>DropTargetListener</code> to handle event processing.
	* <P>
	* The Component will receive drops only if it is enabled.
	* @param c         The <code>Component</code> with which this <code>DropTarget</code> is associated
	* @param ops       The default acceptable actions for this <code>DropTarget</code>
	* @param dtl       The <code>DropTargetListener</code> for this <code>DropTarget</code>
	* @exception HeadlessException if GraphicsEnvironment.isHeadless()
	*            returns true
	* @see java.awt.GraphicsEnvironment#isHeadless
	*/
	@:overload public function new(c : java.awt.Component, ops : Int, dtl : java.awt.dnd.DropTargetListener) : Void;
	
	/**
	* Note: this interface is required to permit the safe association
	* of a DropTarget with a Component in one of two ways, either:
	* <code> component.setDropTarget(droptarget); </code>
	* or <code> droptarget.setComponent(component); </code>
	* <P>
	* The Component will receive drops only if it is enabled.
	* @param c The new <code>Component</code> this <code>DropTarget</code>
	* is to be associated with.<P>
	*/
	@:overload @:synchronized public function setComponent(c : java.awt.Component) : Void;
	
	/**
	* Gets the <code>Component</code> associated
	* with this <code>DropTarget</code>.
	* <P>
	* @return the current <code>Component</code>
	*/
	@:overload @:synchronized public function getComponent() : java.awt.Component;
	
	/**
	* Sets the default acceptable actions for this <code>DropTarget</code>
	* <P>
	* @param ops the default actions
	* <P>
	* @see java.awt.dnd.DnDConstants
	*/
	@:overload public function setDefaultActions(ops : Int) : Void;
	
	/**
	* Gets an <code>int</code> representing the
	* current action(s) supported by this <code>DropTarget</code>.
	* <P>
	* @return the current default actions
	*/
	@:overload public function getDefaultActions() : Int;
	
	/**
	* Sets the DropTarget active if <code>true</code>,
	* inactive if <code>false</code>.
	* <P>
	* @param isActive sets the <code>DropTarget</code> (in)active.
	*/
	@:overload @:synchronized public function setActive(isActive : Bool) : Void;
	
	/**
	* Reports whether or not
	* this <code>DropTarget</code>
	* is currently active (ready to accept drops).
	* <P>
	* @return <CODE>true</CODE> if active, <CODE>false</CODE> if not
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* Adds a new <code>DropTargetListener</code> (UNICAST SOURCE).
	* <P>
	* @param dtl The new <code>DropTargetListener</code>
	* <P>
	* @throws <code>TooManyListenersException</code> if a
	* <code>DropTargetListener</code> is already added to this
	* <code>DropTarget</code>.
	*/
	@:overload @:synchronized public function addDropTargetListener(dtl : java.awt.dnd.DropTargetListener) : Void;
	
	/**
	* Removes the current <code>DropTargetListener</code> (UNICAST SOURCE).
	* <P>
	* @param dtl the DropTargetListener to deregister.
	*/
	@:overload @:synchronized public function removeDropTargetListener(dtl : java.awt.dnd.DropTargetListener) : Void;
	
	/**
	* Calls <code>dragEnter</code> on the registered
	* <code>DropTargetListener</code> and passes it
	* the specified <code>DropTargetDragEvent</code>.
	* Has no effect if this <code>DropTarget</code>
	* is not active.
	*
	* @param dtde the <code>DropTargetDragEvent</code>
	*
	* @throws NullPointerException if this <code>DropTarget</code>
	*         is active and <code>dtde</code> is <code>null</code>
	*
	* @see #isActive
	*/
	@:overload @:synchronized public function dragEnter(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Calls <code>dragOver</code> on the registered
	* <code>DropTargetListener</code> and passes it
	* the specified <code>DropTargetDragEvent</code>.
	* Has no effect if this <code>DropTarget</code>
	* is not active.
	*
	* @param dtde the <code>DropTargetDragEvent</code>
	*
	* @throws NullPointerException if this <code>DropTarget</code>
	*         is active and <code>dtde</code> is <code>null</code>
	*
	* @see #isActive
	*/
	@:overload @:synchronized public function dragOver(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Calls <code>dropActionChanged</code> on the registered
	* <code>DropTargetListener</code> and passes it
	* the specified <code>DropTargetDragEvent</code>.
	* Has no effect if this <code>DropTarget</code>
	* is not active.
	*
	* @param dtde the <code>DropTargetDragEvent</code>
	*
	* @throws NullPointerException if this <code>DropTarget</code>
	*         is active and <code>dtde</code> is <code>null</code>
	*
	* @see #isActive
	*/
	@:overload @:synchronized public function dropActionChanged(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Calls <code>dragExit</code> on the registered
	* <code>DropTargetListener</code> and passes it
	* the specified <code>DropTargetEvent</code>.
	* Has no effect if this <code>DropTarget</code>
	* is not active.
	* <p>
	* This method itself does not throw any exception
	* for null parameter but for exceptions thrown by
	* the respective method of the listener.
	*
	* @param dte the <code>DropTargetEvent</code>
	*
	* @see #isActive
	*/
	@:overload @:synchronized public function dragExit(dte : java.awt.dnd.DropTargetEvent) : Void;
	
	/**
	* Calls <code>drop</code> on the registered
	* <code>DropTargetListener</code> and passes it
	* the specified <code>DropTargetDropEvent</code>
	* if this <code>DropTarget</code> is active.
	*
	* @param dtde the <code>DropTargetDropEvent</code>
	*
	* @throws NullPointerException if <code>dtde</code> is null
	*         and at least one of the following is true: this
	*         <code>DropTarget</code> is not active, or there is
	*         no a <code>DropTargetListener</code> registered.
	*
	* @see #isActive
	*/
	@:overload @:synchronized public function drop(dtde : java.awt.dnd.DropTargetDropEvent) : Void;
	
	/**
	* Gets the <code>FlavorMap</code>
	* associated with this <code>DropTarget</code>.
	* If no <code>FlavorMap</code> has been set for this
	* <code>DropTarget</code>, it is associated with the default
	* <code>FlavorMap</code>.
	* <P>
	* @return the FlavorMap for this DropTarget
	*/
	@:overload public function getFlavorMap() : java.awt.datatransfer.FlavorMap;
	
	/**
	* Sets the <code>FlavorMap</code> associated
	* with this <code>DropTarget</code>.
	* <P>
	* @param fm the new <code>FlavorMap</code>, or null to
	* associate the default FlavorMap with this DropTarget.
	*/
	@:overload public function setFlavorMap(fm : java.awt.datatransfer.FlavorMap) : Void;
	
	/**
	* Notify the DropTarget that it has been associated with a Component
	*
	**********************************************************************
	* This method is usually called from java.awt.Component.addNotify() of
	* the Component associated with this DropTarget to notify the DropTarget
	* that a ComponentPeer has been associated with that Component.
	*
	* Calling this method, other than to notify this DropTarget of the
	* association of the ComponentPeer with the Component may result in
	* a malfunction of the DnD system.
	**********************************************************************
	* <P>
	* @param peer The Peer of the Component we are associated with!
	*
	*/
	@:overload public function addNotify(peer : java.awt.peer.ComponentPeer) : Void;
	
	/**
	* Notify the DropTarget that it has been disassociated from a Component
	*
	**********************************************************************
	* This method is usually called from java.awt.Component.removeNotify() of
	* the Component associated with this DropTarget to notify the DropTarget
	* that a ComponentPeer has been disassociated with that Component.
	*
	* Calling this method, other than to notify this DropTarget of the
	* disassociation of the ComponentPeer from the Component may result in
	* a malfunction of the DnD system.
	**********************************************************************
	* <P>
	* @param peer The Peer of the Component we are being disassociated from!
	*/
	@:overload public function removeNotify(peer : java.awt.peer.ComponentPeer) : Void;
	
	/**
	* Gets the <code>DropTargetContext</code> associated
	* with this <code>DropTarget</code>.
	* <P>
	* @return the <code>DropTargetContext</code> associated with this <code>DropTarget</code>.
	*/
	@:overload public function getDropTargetContext() : java.awt.dnd.DropTargetContext;
	
	/**
	* Creates the DropTargetContext associated with this DropTarget.
	* Subclasses may override this method to instantiate their own
	* DropTargetContext subclass.
	*
	* This call is typically *only* called by the platform's
	* DropTargetContextPeer as a drag operation encounters this
	* DropTarget. Accessing the Context while no Drag is current
	* has undefined results.
	*/
	@:overload private function createDropTargetContext() : java.awt.dnd.DropTargetContext;
	
	/**
	* create an embedded autoscroller
	* <P>
	* @param c the <code>Component</code>
	* @param p the <code>Point</code>
	*/
	@:overload private function createDropTargetAutoScroller(c : java.awt.Component, p : java.awt.Point) : DropTarget_DropTargetAutoScroller;
	
	/**
	* initialize autoscrolling
	* <P>
	* @param p the <code>Point</code>
	*/
	@:overload private function initializeAutoscrolling(p : java.awt.Point) : Void;
	
	/**
	* update autoscrolling with current cursor locn
	* <P>
	* @param dragCursorLocn the <code>Point</code>
	*/
	@:overload private function updateAutoscroll(dragCursorLocn : java.awt.Point) : Void;
	
	/**
	* clear autoscrolling
	*/
	@:overload private function clearAutoscroll() : Void;
	
	
}
/**
* this protected nested class implements autoscrolling
*/
@:native('java$awt$dnd$DropTarget$DropTargetAutoScroller') extern class DropTarget_DropTargetAutoScroller implements java.awt.event.ActionListener
{
	/**
	* construct a DropTargetAutoScroller
	* <P>
	* @param c the <code>Component</code>
	* @param p the <code>Point</code>
	*/
	@:overload private function new(c : java.awt.Component, p : java.awt.Point) : Void;
	
	/**
	* cause autoscroll to occur
	* <P>
	* @param newLocn the <code>Point</code>
	*/
	@:overload @:synchronized private function updateLocation(newLocn : java.awt.Point) : Void;
	
	/**
	* cause autoscrolling to stop
	*/
	@:overload private function stop() : Void;
	
	/**
	* cause autoscroll to occur
	* <P>
	* @param e the <code>ActionEvent</code>
	*/
	@:overload @:synchronized public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
