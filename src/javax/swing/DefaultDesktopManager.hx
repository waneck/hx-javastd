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
extern class DefaultDesktopManager implements javax.swing.DesktopManager implements java.io.Serializable
{
	/** Normally this method will not be called. If it is, it
	* try to determine the appropriate parent from the desktopIcon of the frame.
	* Will remove the desktopIcon from its parent if it successfully adds the frame.
	*/
	@:overload public function openFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Removes the frame, and, if necessary, the
	* <code>desktopIcon</code>, from its parent.
	* @param f the <code>JInternalFrame</code> to be removed
	*/
	@:overload public function closeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Resizes the frame to fill its parents bounds.
	* @param f the frame to be resized
	*/
	@:overload public function maximizeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Restores the frame back to its size and position prior
	* to a <code>maximizeFrame</code> call.
	* @param f the <code>JInternalFrame</code> to be restored
	*/
	@:overload public function minimizeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Removes the frame from its parent and adds its
	* <code>desktopIcon</code> to the parent.
	* @param f the <code>JInternalFrame</code> to be iconified
	*/
	@:overload public function iconifyFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Removes the desktopIcon from its parent and adds its frame
	* to the parent.
	* @param f the <code>JInternalFrame</code> to be de-iconified
	*/
	@:overload public function deiconifyFrame(f : javax.swing.JInternalFrame) : Void;
	
	/** This will activate <b>f</b> moving it to the front. It will
	* set the current active frame's (if any)
	* <code>IS_SELECTED_PROPERTY</code> to <code>false</code>.
	* There can be only one active frame across all Layers.
	* @param f the <code>JInternalFrame</code> to be activated
	*/
	@:overload public function activateFrame(f : javax.swing.JInternalFrame) : Void;
	
	@:overload public function deactivateFrame(f : javax.swing.JInternalFrame) : Void;
	
	@:overload public function beginDraggingFrame(f : javax.swing.JComponent) : Void;
	
	/**
	* Moves the visible location of the frame being dragged
	* to the location specified.  The means by which this occurs can vary depending
	* on the dragging algorithm being used.  The actual logical location of the frame
	* might not change until <code>endDraggingFrame</code> is called.
	*/
	@:overload public function dragFrame(f : javax.swing.JComponent, newX : Int, newY : Int) : Void;
	
	@:overload public function endDraggingFrame(f : javax.swing.JComponent) : Void;
	
	@:overload public function beginResizingFrame(f : javax.swing.JComponent, direction : Int) : Void;
	
	/**
	* Calls <code>setBoundsForFrame</code> with the new values.
	* @param f the component to be resized
	* @param newX the new x-coordinate
	* @param newY the new y-coordinate
	* @param newWidth the new width
	* @param newHeight the new height
	*/
	@:overload public function resizeFrame(f : javax.swing.JComponent, newX : Int, newY : Int, newWidth : Int, newHeight : Int) : Void;
	
	@:overload public function endResizingFrame(f : javax.swing.JComponent) : Void;
	
	/** This moves the <code>JComponent</code> and repaints the damaged areas. */
	@:overload public function setBoundsForFrame(f : javax.swing.JComponent, newX : Int, newY : Int, newWidth : Int, newHeight : Int) : Void;
	
	/** Convenience method to remove the desktopIcon of <b>f</b> is necessary. */
	@:overload private function removeIconFor(f : javax.swing.JInternalFrame) : Void;
	
	/** The iconifyFrame() code calls this to determine the proper bounds
	* for the desktopIcon.
	*/
	@:overload private function getBoundsForIconOf(f : javax.swing.JInternalFrame) : java.awt.Rectangle;
	
	/**
	* Stores the bounds of the component just before a maximize call.
	* @param f the component about to be resized
	* @param r the normal bounds to be saved away
	*/
	@:overload private function setPreviousBounds(f : javax.swing.JInternalFrame, r : java.awt.Rectangle) : Void;
	
	/**
	* Gets the normal bounds of the component prior to the component
	* being maximized.
	* @param f the <code>JInternalFrame</code> of interest
	* @return the normal bounds of the component
	*/
	@:overload private function getPreviousBounds(f : javax.swing.JInternalFrame) : java.awt.Rectangle;
	
	/**
	* Sets that the component has been iconized and the bounds of the
	* <code>desktopIcon</code> are valid.
	*/
	@:overload private function setWasIcon(f : javax.swing.JInternalFrame, value : Null<Bool>) : Void;
	
	/**
	* Returns <code>true</code> if the component has been iconized
	* and the bounds of the <code>desktopIcon</code> are valid,
	* otherwise returns <code>false</code>.
	*
	* @param f the <code>JInternalFrame</code> of interest
	* @return <code>true</code> if the component has been iconized;
	*    otherwise returns <code>false</code>
	*/
	@:overload private function wasIcon(f : javax.swing.JInternalFrame) : Bool;
	
	
}
