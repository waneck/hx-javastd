package sun.awt.image;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class SurfaceManager
{
	@:overload @:public @:static public static function setImageAccessor(ia : sun.awt.image.SurfaceManager.SurfaceManager_ImageAccessor) : Void;
	
	/**
	* Returns the SurfaceManager object contained within the given Image.
	*/
	@:overload @:public @:static public static function getManager(img : java.awt.Image) : sun.awt.image.SurfaceManager;
	
	@:overload @:public @:static public static function setManager(img : java.awt.Image, mgr : sun.awt.image.SurfaceManager) : Void;
	
	/**
	* Return an arbitrary cached object for an arbitrary cache key.
	* Other objects can use this mechanism to store cached data about
	* the source image that will let them save time when using or
	* manipulating the image in the future.
	* <p>
	* Note that the cache is maintained as a simple Map with no
	* attempts to keep it up to date or invalidate it so any data
	* stored here must either not be dependent on the state of the
	* image or it must be individually tracked to see if it is
	* outdated or obsolete.
	* <p>
	* The SurfaceData object of the primary (destination) surface
	* has a StateTracker mechanism which can help track the validity
	* and "currentness" of any data stored here.
	* For convenience and expediency an object stored as cached
	* data may implement the FlushableCacheData interface specified
	* below so that it may be notified immediately if the flush()
	* method is ever called.
	*/
	@:overload @:public public function getCacheData(key : Dynamic) : Dynamic;
	
	/**
	* Store an arbitrary cached object for an arbitrary cache key.
	* See the getCacheData() method for notes on tracking the
	* validity of data stored using this mechanism.
	*/
	@:overload @:public public function setCacheData(key : Dynamic, value : Dynamic) : Void;
	
	/**
	* Returns the main SurfaceData object that "owns" the pixels for
	* this SurfaceManager.  This SurfaceData is used as the destination
	* surface in a rendering operation and is the most authoritative
	* storage for the current state of the pixels, though other
	* versions might be cached in other locations for efficiency.
	*/
	@:overload @:public @:abstract public function getPrimarySurfaceData() : sun.java2d.SurfaceData;
	
	/**
	* Restores the primary surface being managed, and then returns the
	* replacement surface.  This is called when an accelerated surface has
	* been "lost", in an attempt to auto-restore its contents.
	*/
	@:overload @:public @:abstract public function restoreContents() : sun.java2d.SurfaceData;
	
	/**
	* Notification that any accelerated surfaces associated with this manager
	* have been "lost", which might mean that they need to be manually
	* restored or recreated.
	*
	* The default implementation does nothing, but platform-specific
	* variants which have accelerated surfaces should perform any necessary
	* actions.
	*/
	@:overload @:public public function acceleratedSurfaceLost() : Void;
	
	/**
	* Returns an ImageCapabilities object which can be
	* inquired as to the specific capabilities of this
	* Image.  The capabilities object will return true for
	* isAccelerated() if the image has a current and valid
	* SurfaceDataProxy object cached for the specified
	* GraphicsConfiguration parameter.
	* <p>
	* This class provides a default implementation of the
	* ImageCapabilities that will try to determine if there
	* is an associated SurfaceDataProxy object and if it is
	* up to date, but only works for GraphicsConfiguration
	* objects which implement the ProxiedGraphicsConfig
	* interface defined below.  In practice, all configs
	* which can be accelerated are currently implementing
	* that interface.
	* <p>
	* A null GraphicsConfiguration returns a value based on whether the
	* image is currently accelerated on its default GraphicsConfiguration.
	*
	* @see java.awt.Image#getCapabilities
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getCapabilities(gc : java.awt.GraphicsConfiguration) : java.awt.ImageCapabilities;
	
	/**
	* Releases system resources in use by ancillary SurfaceData objects,
	* such as surfaces cached in accelerated memory.  Subclasses should
	* override to release any of their flushable data.
	* <p>
	* The default implementation will visit all of the value objects
	* in the cacheMap and flush them if they implement the
	* FlushableCacheData interface.
	*/
	@:overload @:public @:synchronized public function flush() : Void;
	
	/**
	* Called when image's acceleration priority is changed.
	* <p>
	* The default implementation will visit all of the value objects
	* in the cacheMap when the priority gets set to 0.0 and flush them
	* if they implement the FlushableCacheData interface.
	*/
	@:overload @:public public function setAccelerationPriority(priority : Single) : Void;
	
	
}
/**
* The abstract base class that manages the various SurfaceData objects that
* represent an Image's contents.  Subclasses can customize how the surfaces
* are organized, whether to cache the original contents in an accelerated
* surface, and so on.
* <p>
* The SurfaceManager also maintains an arbitrary "cache" mechanism which
* allows other agents to store data in it specific to their use of this
* image.  The most common use of the caching mechanism is for destination
* SurfaceData objects to store cached copies of the source image.
*/
@:native('sun$awt$image$SurfaceManager$ImageAccessor') extern class SurfaceManager_ImageAccessor
{
	@:overload @:public @:abstract public function getSurfaceManager(img : java.awt.Image) : sun.awt.image.SurfaceManager;
	
	@:overload @:public @:abstract public function setSurfaceManager(img : java.awt.Image, mgr : sun.awt.image.SurfaceManager) : Void;
	
	
}
@:native('sun$awt$image$SurfaceManager$ImageCapabilitiesGc') @:internal extern class SurfaceManager_ImageCapabilitiesGc extends java.awt.ImageCapabilities
{
	@:overload @:public public function new(gc : java.awt.GraphicsConfiguration) : Void;
	
	@:overload @:public override public function isAccelerated() : Bool;
	
	
}
/**
* An interface for GraphicsConfiguration objects to implement if
* their surfaces accelerate images using SurfaceDataProxy objects.
*
* Implementing this interface facilitates the default
* implementation of getImageCapabilities() above.
*/
@:native('sun$awt$image$SurfaceManager$ProxiedGraphicsConfig') extern interface SurfaceManager_ProxiedGraphicsConfig
{
	/**
	* Return the key that destination surfaces created on the
	* given GraphicsConfiguration use to store SurfaceDataProxy
	* objects for their cached copies.
	*/
	@:overload @:public public function getProxyKey() : Dynamic;
	
	
}
/**
* An interface for Objects used in the SurfaceManager cache
* to implement if they have data that should be flushed when
* the Image is flushed.
*/
@:native('sun$awt$image$SurfaceManager$FlushableCacheData') extern interface SurfaceManager_FlushableCacheData
{
	/**
	* Flush all cached resources.
	* The deaccelerated parameter indicates if the flush is
	* happening because the associated surface is no longer
	* being accelerated (for instance the acceleration priority
	* is set below the threshold needed for acceleration).
	* Returns a boolean that indicates if the cached object is
	* no longer needed and should be removed from the cache.
	*/
	@:overload @:public public function flush(deaccelerated : Bool) : Bool;
	
	
}
