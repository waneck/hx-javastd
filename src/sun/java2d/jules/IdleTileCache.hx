package sun.java2d.jules;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class IdleTileCache
{
	/**
	* Return a cached Tile, if possible from cache.
	* Allowed caller: Rasterizer/Producer-Thread
	*
	* @param: maxCache - Specify the maximum amount of tiles needed
	*/
	@:overload @:public public function getIdleTileWorker(maxCache : Int) : sun.java2d.jules.JulesTile;
	
	/**
	* Release tile and allow it to be re-used by another thread. Allowed
	*  Allowed caller: MaskBlit/Consumer-Thread
	*/
	@:overload @:public public function releaseTile(tile : sun.java2d.jules.JulesTile) : Void;
	
	/**
	* Releases thread-local tiles cached for use by the rasterizing thread.
	* Allowed caller: Rasterizer/Producer-Thread
	*/
	@:overload @:public public function disposeRasterizerResources() : Void;
	
	/**
	* Releases thread-local tiles cached for performance reasons. Allowed
	* Allowed caller: MaskBlit/Consumer-Thread
	*/
	@:overload @:public public function disposeConsumerResources() : Void;
	
	/**
	* Release a list of tiles and allow it to be re-used by another thread.
	* Thread safe.
	*/
	@:overload @:public public function releaseTiles(tileList : java.util.List<sun.java2d.jules.JulesTile>) : Void;
	
	
}
