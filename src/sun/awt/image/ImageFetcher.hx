package sun.awt.image;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ImageFetcher extends java.lang.Thread
{
	/**
	* Adds an ImageFetchable to the queue of items to fetch.  Instantiates
	* a new ImageFetcher if it's reasonable to do so.
	* If there is no available fetcher to process an ImageFetchable, then
	* reports failure to caller.
	*/
	@:overload @:public @:static public static function add(src : sun.awt.image.ImageFetchable) : Bool;
	
	/**
	* Removes an ImageFetchable from the queue of items to fetch.
	*/
	@:overload @:public @:static public static function remove(src : sun.awt.image.ImageFetchable) : Void;
	
	/**
	* Checks to see if the given thread is one of the ImageFetchers.
	*/
	@:overload @:public @:static public static function isFetcher(t : java.lang.Thread) : Bool;
	
	/**
	* Checks to see if the current thread is one of the ImageFetchers.
	*/
	@:overload @:public @:static public static function amFetcher() : Bool;
	
	/**
	* The main run() method of an ImageFetcher Thread.  Calls fetchloop()
	* to do the work, then removes itself from the array of ImageFetchers.
	*/
	@:overload @:public override public function run() : Void;
	
	
}
@:internal extern class FetcherInfo
{
	
}
