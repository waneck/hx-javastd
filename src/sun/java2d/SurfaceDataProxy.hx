package sun.java2d;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SurfaceDataProxy implements sun.awt.DisplayChangedListener implements sun.awt.image.SurfaceManager.SurfaceManager_FlushableCacheData
{
	@:overload @:public @:static public static function isCachingAllowed() : Bool;
	
	/**
	* Determine if an alternate form for the srcData is needed
	* and appropriate from the given operational parameters.
	*/
	@:overload @:public @:abstract public function isSupportedOperation(srcData : sun.java2d.SurfaceData, txtype : Int, comp : sun.java2d.loops.CompositeType, bgColor : java.awt.Color) : Bool;
	
	/**
	* Construct an alternate form of the given SurfaceData.
	* The contents of the returned SurfaceData may be undefined
	* since the calling code will take care of updating the
	* contents with a subsequent call to updateSurfaceData.
	* <p>
	* If the method returns null then there was a problem with
	* allocating the accelerated surface.  The getRetryTracker()
	* method will be called to track when to attempt another
	* revalidation.
	*/
	@:overload @:public @:abstract public function validateSurfaceData(srcData : sun.java2d.SurfaceData, cachedData : sun.java2d.SurfaceData, w : Int, h : Int) : sun.java2d.SurfaceData;
	
	/**
	* If the subclass is unable to validate or create a cached
	* SurfaceData then this method will be used to get a
	* StateTracker object that will indicate when to attempt
	* to validate the surface again.  Subclasses may return
	* trackers which count down an ever increasing threshold
	* to provide hysteresis on creating surfaces during low
	* memory conditions.  The default implementation just waits
	* another "threshold" number of accesses before trying again.
	*/
	@:overload @:public public function getRetryTracker(srcData : sun.java2d.SurfaceData) : sun.java2d.StateTracker;
	
	/**
	* This instance is for cases where a caching implementation
	* determines that a particular source image will never need
	* to be cached - either the source SurfaceData was of an
	* incompatible type, or it was in an UNTRACKABLE state or
	* some other factor is discovered that permanently prevents
	* acceleration or caching.
	* This class optimally implements NOP variants of all necessary
	* methods to avoid caching with a minimum of fuss.
	*/
	@:public @:static public static var UNCACHED : sun.java2d.SurfaceDataProxy;
	
	/**
	* Create a SurfaceData proxy manager that attempts to create
	* and cache a variant copy of the source SurfaceData after
	* the default threshold number of attempts to copy from the
	* STABLE source.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a SurfaceData proxy manager that attempts to create
	* and cache a variant copy of the source SurfaceData after
	* the specified threshold number of attempts to copy from
	* the STABLE source.
	*/
	@:overload @:public public function new(threshold : Int) : Void;
	
	/**
	* Returns true iff this SurfaceData proxy is still the best
	* way to control caching of the given source on the given
	* destination.
	*/
	@:overload @:public public function isValid() : Bool;
	
	/**
	* Sets the valid state to false so that the next time this
	* proxy is fetched to generate a replacement SurfaceData,
	* the code in SurfaceData knows to replace the proxy first.
	*/
	@:overload @:public public function invalidate() : Void;
	
	/**
	* Flush all cached resources as per the FlushableCacheData interface.
	* The deaccelerated parameter indicates if the flush is
	* happening because the associated surface is no longer
	* being accelerated (for instance the acceleration priority
	* is set below the threshold needed for acceleration).
	* Returns a boolean that indicates if the cached object is
	* no longer needed and should be removed from the cache.
	*/
	@:overload @:public public function flush(deaccelerated : Bool) : Bool;
	
	/**
	* Actively flushes (drops and invalidates) the cached surface
	* so that it can be reclaimed quickly.
	*/
	@:overload @:public @:synchronized public function flush() : Void;
	
	/**
	* Returns true iff this SurfaceData proxy is still valid
	* and if it has a currently cached replacement that is also
	* valid and current.
	*/
	@:overload @:public public function isAccelerated() : Bool;
	
	/**
	* This method should be called from subclasses which create
	* cached SurfaceData objects that depend on the current
	* properties of the display.
	*/
	@:overload @:protected private function activateDisplayListener() : Void;
	
	/**
	* Invoked when the display mode has changed.
	* This method will invalidate and drop the internal cachedSD object.
	*/
	@:overload @:public public function displayChanged() : Void;
	
	/**
	* Invoked when the palette has changed.
	*/
	@:overload @:public public function paletteChanged() : Void;
	
	/**
	* This method attempts to replace the srcData with a cached version.
	* It relies on the subclass to determine if the cached version will
	* be useful given the operational parameters.
	* This method checks any preexisting cached copy for being "up to date"
	* and tries to update it if it is stale or non-existant and the
	* appropriate number of accesses have occured since it last was stale.
	* <p>
	* An outline of the process is as follows:
	* <ol>
	* <li> Check the operational parameters (txtype, comp, bgColor)
	*      to make sure that the operation is supported.  Return the
	*      original SurfaceData if the operation cannot be accelerated.
	* <li> Check the tracker for the source surface to see if it has
	*      remained stable since it was last cached.  Update the state
	*      variables to cause both a threshold countdown and an update
	*      of the cached copy if it is not.  (Setting cacheTracker to
	*      NEVER_CURRENT effectively marks it as "needing to be updated".)
	* <li> Check the tracker for the cached copy to see if is still
	*      valid and up to date.  Note that the cacheTracker may be
	*      non-current if either something happened to the cached copy
	*      (eg. surfaceLost) or if the source was out of date and the
	*      cacheTracker was set to NEVER_CURRENT to force an update.
	*      Decrement the countdown and copy the source to the cache
	*      as necessary and then update the variables to show that
	*      the cached copy is stable.
	* </ol>
	*/
	@:overload @:public public function replaceData(srcData : sun.java2d.SurfaceData, txtype : Int, comp : sun.java2d.loops.CompositeType, bgColor : java.awt.Color) : sun.java2d.SurfaceData;
	
	/**
	* This is the default implementation for updating the cached
	* SurfaceData from the source (primary) SurfaceData.
	* A simple Blit is used to copy the pixels from the source to
	* the destination SurfaceData.
	* A subclass can override this implementation if a more complex
	* operation is required to update its cached copies.
	*/
	@:overload @:public public function updateSurfaceData(srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, w : Int, h : Int) : Void;
	
	/**
	* This is an alternate implementation for updating the cached
	* SurfaceData from the source (primary) SurfaceData using a
	* background color for transparent pixels.
	* A simple BlitBg is used to copy the pixels from the source to
	* the destination SurfaceData with the specified bgColor.
	* A subclass can override the normal updateSurfaceData method
	* and call this implementation instead if it wants to use color
	* keying for bitmask images.
	*/
	@:overload @:public public function updateSurfaceDataBg(srcData : sun.java2d.SurfaceData, dstData : sun.java2d.SurfaceData, w : Int, h : Int, bgColor : java.awt.Color) : Void;
	
	
}
@:native('sun$java2d$SurfaceDataProxy$CountdownTracker') extern class SurfaceDataProxy_CountdownTracker implements sun.java2d.StateTracker
{
	@:overload @:public public function new(threshold : Int) : Void;
	
	@:overload @:public @:synchronized public function isCurrent() : Bool;
	
	
}
