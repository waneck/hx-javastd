package sun.awt.image;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* This SurfaceManager variant manages an accelerated volatile surface, if it
* is possible to create that surface.  If there is limited accelerated
* memory, or if the volatile surface disappears due to an operating system
* event, the VolatileSurfaceManager will attempt to restore the
* accelerated surface.  If that fails, a system memory surface will be
* created in its place.
*/
extern class VolatileSurfaceManager extends sun.awt.image.SurfaceManager implements sun.awt.DisplayChangedListener
{
	/**
	* A reference to the VolatileImage whose contents are being managed.
	*/
	private var vImg : sun.awt.image.SunVolatileImage;
	
	/**
	* The accelerated SurfaceData object.
	*/
	private var sdAccel : sun.java2d.SurfaceData;
	
	/**
	* The software-based SurfaceData object.  Only create when first asked
	* to (otherwise it is a waste of memory as it will only be used in
	* situations of surface loss).
	*/
	private var sdBackup : sun.java2d.SurfaceData;
	
	/**
	* The current SurfaceData object.
	*/
	private var sdCurrent : sun.java2d.SurfaceData;
	
	/**
	* A record-keeping object.  This keeps track of which SurfaceData was
	* in use during the last call to validate().  This lets us see whether
	* the SurfaceData object has changed since then and allows us to return
	* the correct returnCode to the user in the validate() call.
	*/
	private var sdPrevious : sun.java2d.SurfaceData;
	
	/**
	* Tracks loss of surface contents; queriable by user to see whether
	* contents need to be restored.
	*/
	private var lostSurface : Bool;
	
	/**
	* Context for extra initialization parameters.
	*/
	private var context : Dynamic;
	
	@:overload private function new(vImg : sun.awt.image.SunVolatileImage, context : Dynamic) : Void;
	
	/**
	* This init function is separate from the constructor because the
	* things we are doing here necessitate the object's existence.
	* Otherwise, we end up calling into a subclass' overridden method
	* during construction, before that subclass is completely constructed.
	*/
	@:overload public function initialize() : Void;
	
	@:overload override public function getPrimarySurfaceData() : sun.java2d.SurfaceData;
	
	/**
	* Returns true if acceleration is enabled.  If not, we simply use the
	* backup SurfaceData object and return quickly from most methods
	* in this class.
	*/
	@:overload @:abstract private function isAccelerationEnabled() : Bool;
	
	/**
	* Get the image ready for rendering.  This method is called to make
	* sure that the accelerated SurfaceData exists and is
	* ready to be used.  Users call this method prior to any set of
	* rendering to or from the image, to make sure the image is ready
	* and compatible with the given GraphicsConfiguration.
	*
	* The image may not be "ready" if either we had problems creating
	* it in the first place (e.g., there was no space in vram) or if
	* the surface became lost (e.g., some other app or the OS caused
	* vram surfaces to be removed).
	*
	* Note that we want to return RESTORED in any situation where the
	* SurfaceData is different than it was last time.  So whether it's
	* software or hardware, if we have a different SurfaceData object,
	* then the contents have been altered and we must reflect that
	* change to the user.
	*/
	@:overload public function validate(gc : java.awt.GraphicsConfiguration) : Int;
	
	/**
	* Returns true if rendering data was lost since the last validate call.
	*
	* @see java.awt.image.VolatileImage#contentsLost
	*/
	@:overload public function contentsLost() : Bool;
	
	/**
	* Creates a new accelerated surface that is compatible with the
	* current GraphicsConfiguration.  Returns the new accelerated
	* SurfaceData object, or null if the surface creation was not successful.
	*
	* Platform-specific subclasses should initialize an accelerated
	* surface (e.g. a DirectDraw surface on Windows, an OpenGL pbuffer,
	* or an X11 pixmap).
	*/
	@:overload @:abstract private function initAcceleratedSurface() : sun.java2d.SurfaceData;
	
	/**
	* Creates a software-based surface (of type BufImgSurfaceData).
	* The software representation is only created when needed, which
	* is only during some situation in which the hardware surface
	* cannot be allocated.  This allows apps to at least run,
	* albeit more slowly than they would otherwise.
	*/
	@:overload private function getBackupSurface() : sun.java2d.SurfaceData;
	
	/**
	* Set contents of the current SurfaceData to default state (i.e. clear
	* the background).
	*/
	@:overload public function initContents() : Void;
	
	/**
	* Called from a SurfaceData object, indicating that our
	* accelerated surface has been lost and should be restored (perhaps
	* using a backup system memory surface).  Returns the newly restored
	* primary SurfaceData object.
	*/
	@:overload override public function restoreContents() : sun.java2d.SurfaceData;
	
	/**
	* If the accelerated surface is the current SurfaceData for this manager,
	* sets the variable lostSurface to true, which indicates that something
	* happened to the image under management.  This variable is used in the
	* validate method to tell the caller that the surface contents need to
	* be restored.
	*/
	@:overload override public function acceleratedSurfaceLost() : Void;
	
	/**
	* Restore sdAccel in case it was lost.  Do nothing in this
	* default case; platform-specific implementations may do more in
	* this situation as appropriate.
	*/
	@:overload private function restoreAcceleratedSurface() : Void;
	
	/**
	* Called from SunGraphicsEnv when there has been a display mode change.
	* Note that we simply invalidate hardware surfaces here; we do not
	* attempt to recreate or re-render them.  This is to avoid threading
	* conflicts with the native toolkit and associated threads.  Instead,
	* we just nullify the old surface data object and wait for a future
	* method in the rendering process to recreate the surface.
	*/
	@:overload public function displayChanged() : Void;
	
	/**
	* When device palette changes, need to force a new copy
	* of the image into our hardware cache to update the
	* color indices of the pixels (indexed mode only).
	*/
	@:overload public function paletteChanged() : Void;
	
	/**
	* Called by validate() to see whether the GC passed in is ok for
	* rendering to.  This generic implementation checks to see
	* whether the GC is either null or is from the same
	* device as the one that this image was created on.  Platform-
	* specific implementations may perform other checks as
	* appropriate.
	*/
	@:overload private function isConfigValid(gc : java.awt.GraphicsConfiguration) : Bool;
	
	@:overload override public function getCapabilities(gc : java.awt.GraphicsConfiguration) : java.awt.ImageCapabilities;
	
	/**
	* Releases any associated hardware memory for this image by
	* calling flush on sdAccel.  This method forces a lostSurface
	* situation so any future operations on the image will need to
	* revalidate the image first.
	*/
	@:overload override public function flush() : Void;
	
	
}
@:native('sun$awt$image$VolatileSurfaceManager$AcceleratedImageCapabilities') @:internal extern class VolatileSurfaceManager_AcceleratedImageCapabilities extends java.awt.ImageCapabilities
{
	@:overload override public function isAccelerated() : Bool;
	
	@:overload override public function isTrueVolatile() : Bool;
	
	
}
