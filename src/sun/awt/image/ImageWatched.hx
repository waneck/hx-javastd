package sun.awt.image;
/*
* Copyright (c) 1995, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageWatched
{
	public static var endlink : ImageWatched_Link;
	
	public var watcherList : ImageWatched_Link;
	
	@:overload public function new() : Void;
	
	@:overload @:synchronized public function addWatcher(iw : java.awt.image.ImageObserver) : Void;
	
	@:overload @:synchronized public function isWatcher(iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function removeWatcher(iw : java.awt.image.ImageObserver) : Void;
	
	@:overload public function isWatcherListEmpty() : Bool;
	
	@:overload public function newInfo(img : java.awt.Image, info : Int, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:abstract private function notifyWatcherListEmpty() : Void;
	
	
}
/*
* This class defines a node on a linked list of ImageObservers.
* The base class defines the dummy implementation used for the
* last link on all chains and a subsequent subclass then
* defines the standard implementation that manages a weak
* reference to a real ImageObserver.
*/
@:native('sun$awt$image$ImageWatched$Link') extern class ImageWatched_Link
{
	/*
	* Check if iw is the referent of this Link or any
	* subsequent Link objects on this chain.
	*/
	@:overload public function isWatcher(iw : java.awt.image.ImageObserver) : Bool;
	
	/*
	* Remove this Link from the chain if its referent
	* is the indicated target or if it has been nulled
	* out by the garbage collector.
	* Return the new remainder of the chain.
	* The argument may be null which will trigger
	* the chain to remove only the dead (null) links.
	* This method is only ever called inside a
	* synchronized block so Link.next modifications
	* will be safe.
	*/
	@:overload public function removeWatcher(iw : java.awt.image.ImageObserver) : ImageWatched_Link;
	
	/*
	* Deliver the indicated image update information
	* to the referent of this Link and return a boolean
	* indicating whether or not some referent became
	* null or has indicated a lack of interest in
	* further updates to its imageUpdate() method.
	* This method is not called inside a synchronized
	* block so Link.next modifications are not safe.
	*/
	@:overload public function newInfo(img : java.awt.Image, info : Int, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	
}
/*
* Standard Link implementation to manage a Weak Reference
* to an ImageObserver.
*/
@:native('sun$awt$image$ImageWatched$WeakLink') extern class ImageWatched_WeakLink extends ImageWatched_Link
{
	@:overload public function new(obs : java.awt.image.ImageObserver, next : ImageWatched_Link) : Void;
	
	@:overload override public function isWatcher(iw : java.awt.image.ImageObserver) : Bool;
	
	@:overload override public function removeWatcher(iw : java.awt.image.ImageObserver) : ImageWatched_Link;
	
	@:overload override public function newInfo(img : java.awt.Image, info : Int, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	
}
