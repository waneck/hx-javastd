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
extern class RepaintManager
{
	/**
	* Return the RepaintManager for the calling thread given a Component.
	*
	* @param c a Component -- unused in the default implementation, but could
	*          be used by an overridden version to return a different RepaintManager
	*          depending on the Component
	* @return the RepaintManager object
	*/
	@:overload @:public @:static public static function currentManager(c : java.awt.Component) : javax.swing.RepaintManager;
	
	/**
	* Return the RepaintManager for the calling thread given a JComponent.
	* <p>
	* Note: This method exists for backward binary compatibility with earlier
	* versions of the Swing library. It simply returns the result returned by
	* {@link #currentManager(Component)}.
	*
	* @param c a JComponent -- unused
	* @return the RepaintManager object
	*/
	@:overload @:public @:static public static function currentManager(c : javax.swing.JComponent) : javax.swing.RepaintManager;
	
	/**
	* Set the RepaintManager that should be used for the calling
	* thread. <b>aRepaintManager</b> will become the current RepaintManager
	* for the calling thread's thread group.
	* @param aRepaintManager  the RepaintManager object to use
	*/
	@:overload @:public @:static public static function setCurrentManager(aRepaintManager : javax.swing.RepaintManager) : Void;
	
	/**
	* Create a new RepaintManager instance. You rarely call this constructor.
	* directly. To get the default RepaintManager, use
	* RepaintManager.currentManager(JComponent) (normally "this").
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Mark the component as in need of layout and queue a runnable
	* for the event dispatching thread that will validate the components
	* first isValidateRoot() ancestor.
	*
	* @see JComponent#isValidateRoot
	* @see #removeInvalidComponent
	*/
	@:overload @:public @:synchronized public function addInvalidComponent(invalidComponent : javax.swing.JComponent) : Void;
	
	/**
	* Remove a component from the list of invalid components.
	*
	* @see #addInvalidComponent
	*/
	@:overload @:public @:synchronized public function removeInvalidComponent(component : javax.swing.JComponent) : Void;
	
	/**
	* Add a component in the list of components that should be refreshed.
	* If <i>c</i> already has a dirty region, the rectangle <i>(x,y,w,h)</i>
	* will be unioned with the region that should be redrawn.
	*
	* @param c Component to repaint, null results in nothing happening.
	* @param x X coordinate of the region to repaint
	* @param y Y coordinate of the region to repaint
	* @param w Width of the region to repaint
	* @param h Height of the region to repaint
	* @see JComponent#repaint
	*/
	@:overload @:public public function addDirtyRegion(c : javax.swing.JComponent, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Adds <code>window</code> to the list of <code>Component</code>s that
	* need to be repainted.
	*
	* @param window Window to repaint, null results in nothing happening.
	* @param x X coordinate of the region to repaint
	* @param y Y coordinate of the region to repaint
	* @param w Width of the region to repaint
	* @param h Height of the region to repaint
	* @see JFrame#repaint
	* @see JWindow#repaint
	* @see JDialog#repaint
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function addDirtyRegion(window : java.awt.Window, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Adds <code>applet</code> to the list of <code>Component</code>s that
	* need to be repainted.
	*
	* @param applet Applet to repaint, null results in nothing happening.
	* @param x X coordinate of the region to repaint
	* @param y Y coordinate of the region to repaint
	* @param w Width of the region to repaint
	* @param h Height of the region to repaint
	* @see JApplet#repaint
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function addDirtyRegion(applet : java.applet.Applet, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/** Return the current dirty region for a component.
	*  Return an empty rectangle if the component is not
	*  dirty.
	*/
	@:overload @:public public function getDirtyRegion(aComponent : javax.swing.JComponent) : java.awt.Rectangle;
	
	/**
	* Mark a component completely dirty. <b>aComponent</b> will be
	* completely painted during the next paintDirtyRegions() call.
	*/
	@:overload @:public public function markCompletelyDirty(aComponent : javax.swing.JComponent) : Void;
	
	/**
	* Mark a component completely clean. <b>aComponent</b> will not
	* get painted during the next paintDirtyRegions() call.
	*/
	@:overload @:public public function markCompletelyClean(aComponent : javax.swing.JComponent) : Void;
	
	/**
	* Convenience method that returns true if <b>aComponent</b> will be completely
	* painted during the next paintDirtyRegions(). If computing dirty regions is
	* expensive for your component, use this method and avoid computing dirty region
	* if it return true.
	*/
	@:overload @:public public function isCompletelyDirty(aComponent : javax.swing.JComponent) : Bool;
	
	/**
	* Validate all of the components that have been marked invalid.
	* @see #addInvalidComponent
	*/
	@:overload @:public public function validateInvalidComponents() : Void;
	
	/**
	* Paint all of the components that have been marked dirty.
	*
	* @see #addDirtyRegion
	*/
	@:overload @:public public function paintDirtyRegions() : Void;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload @:public @:synchronized public function toString() : String;
	
	/**
	* Return the offscreen buffer that should be used as a double buffer with
	* the component <code>c</code>.
	* By default there is a double buffer per RepaintManager.
	* The buffer might be smaller than <code>(proposedWidth,proposedHeight)</code>
	* This happens when the maximum double buffer size as been set for the receiving
	* repaint manager.
	*/
	@:overload @:public public function getOffscreenBuffer(c : java.awt.Component, proposedWidth : Int, proposedHeight : Int) : java.awt.Image;
	
	/**
	* Return a volatile offscreen buffer that should be used as a
	* double buffer with the specified component <code>c</code>.
	* The image returned will be an instance of VolatileImage, or null
	* if a VolatileImage object could not be instantiated.
	* This buffer might be smaller than <code>(proposedWidth,proposedHeight)</code>.
	* This happens when the maximum double buffer size has been set for this
	* repaint manager.
	*
	* @see java.awt.image.VolatileImage
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getVolatileOffscreenBuffer(c : java.awt.Component, proposedWidth : Int, proposedHeight : Int) : java.awt.Image;
	
	/** Set the maximum double buffer size. **/
	@:overload @:public public function setDoubleBufferMaximumSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the maximum double buffer size.
	*
	* @return a Dimension object representing the maximum size
	*/
	@:overload @:public public function getDoubleBufferMaximumSize() : java.awt.Dimension;
	
	/**
	* Enables or disables double buffering in this RepaintManager.
	* CAUTION: The default value for this property is set for optimal
	* paint performance on the given platform and it is not recommended
	* that programs modify this property directly.
	*
	* @param aFlag  true to activate double buffering
	* @see #isDoubleBufferingEnabled
	*/
	@:overload @:public public function setDoubleBufferingEnabled(aFlag : Bool) : Void;
	
	/**
	* Returns true if this RepaintManager is double buffered.
	* The default value for this property may vary from platform
	* to platform.  On platforms where native double buffering
	* is supported in the AWT, the default value will be <code>false</code>
	* to avoid unnecessary buffering in Swing.
	* On platforms where native double buffering is not supported,
	* the default value will be <code>true</code>.
	*
	* @return true if this object is double buffered
	*/
	@:overload @:public public function isDoubleBufferingEnabled() : Bool;
	
	
}
/**
* PaintManager is used to handle all double buffered painting for
* Swing.  Subclasses should call back into the JComponent method
* <code>paintToOffscreen</code> to handle the actual painting.
*/
@:native('javax$swing$RepaintManager$PaintManager') @:internal extern class RepaintManager_PaintManager
{
	/**
	* RepaintManager the PaintManager has been installed on.
	*/
	@:protected private var repaintManager : javax.swing.RepaintManager;
	
	/**
	* Paints a region of a component
	*
	* @param paintingComponent Component to paint
	* @param bufferComponent Component to obtain buffer for
	* @param g Graphics to paint to
	* @param x X-coordinate
	* @param y Y-coordinate
	* @param w Width
	* @param h Height
	* @return true if painting was successful.
	*/
	@:overload @:public public function paint(paintingComponent : javax.swing.JComponent, bufferComponent : javax.swing.JComponent, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Does a copy area on the specified region.
	*/
	@:overload @:public public function copyArea(c : javax.swing.JComponent, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, deltaX : Int, deltaY : Int, clip : Bool) : Void;
	
	/**
	* Invoked prior to any calls to paint or copyArea.
	*/
	@:overload @:public public function beginPaint() : Void;
	
	/**
	* Invoked to indicate painting has been completed.
	*/
	@:overload @:public public function endPaint() : Void;
	
	/**
	* Shows a region of a previously rendered component.  This
	* will return true if successful, false otherwise.  The default
	* implementation returns false.
	*/
	@:overload @:public public function show(c : java.awt.Container, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	/**
	* Invoked when the doubleBuffered or useTrueDoubleBuffering
	* properties of a JRootPane change.  This may come in on any thread.
	*/
	@:overload @:public public function doubleBufferingChanged(rootPane : javax.swing.JRootPane) : Void;
	
	/**
	* Paints a portion of a component to an offscreen buffer.
	*/
	@:overload @:protected private function paintDoubleBuffered(c : javax.swing.JComponent, image : java.awt.Image, g : java.awt.Graphics, clipX : Int, clipY : Int, clipW : Int, clipH : Int) : Void;
	
	/**
	* Schedules a repaint for the specified component.  This differs
	* from <code>root.repaint</code> in that if the RepaintManager is
	* currently processing paint requests it'll process this request
	* with the current set of requests.
	*/
	@:overload @:protected private function repaintRoot(root : javax.swing.JComponent) : Void;
	
	/**
	* Returns true if the component being painted is the root component
	* that was previously passed to <code>repaintRoot</code>.
	*/
	@:overload @:protected private function isRepaintingRoot() : Bool;
	
	/**
	* Cleans up any state.  After invoked the PaintManager will no
	* longer be used anymore.
	*/
	@:overload @:protected private function dispose() : Void;
	
	
}
@:native('javax$swing$RepaintManager$DoubleBufferInfo') @:internal extern class RepaintManager_DoubleBufferInfo
{
	@:public public var image : java.awt.Image;
	
	@:public public var size : java.awt.Dimension;
	
	@:public public var needsReset : Bool;
	
	
}
/**
* Listener installed to detect display changes. When display changes,
* schedules a callback to notify all RepaintManagers of the display
* changes. Only one DisplayChangedHandler is ever installed. The
* singleton instance will schedule notification for all AppContexts.
*/
@:native('javax$swing$RepaintManager$DisplayChangedHandler') @:internal extern class RepaintManager_DisplayChangedHandler implements sun.awt.DisplayChangedListener
{
	@:overload @:public public function displayChanged() : Void;
	
	@:overload @:public public function paletteChanged() : Void;
	
	
}
@:native('javax$swing$RepaintManager$DisplayChangedRunnable') @:internal extern class RepaintManager_DisplayChangedRunnable implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
/**
* Runnable used to process all repaint/revalidate requests.
*/
@:native('javax$swing$RepaintManager$ProcessingRunnable') @:internal extern class RepaintManager_ProcessingRunnable implements java.lang.Runnable
{
	/**
	* Marks this processing runnable as pending. If this was not
	* already marked as pending, true is returned.
	*/
	@:overload @:public @:synchronized public function markPending() : Bool;
	
	@:overload @:public public function run() : Void;
	
	
}
