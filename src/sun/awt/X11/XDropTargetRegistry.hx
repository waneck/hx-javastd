package sun.awt.X11;
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
@:internal extern class XDropTargetRegistry
{
	@:overload @:public public function updateEmbedderDropSite(embedder : haxe.Int64) : Void;
	
	/*
	* Returns a drop site that is embedded in the specified embedder window and
	* contains the point with the specified root coordinates.
	*/
	@:overload @:public public function getEmbeddedDropSite(embedder : haxe.Int64, x : Int, y : Int) : haxe.Int64;
	
	/*
	* Note: this method should be called under AWT lock.
	*/
	@:overload @:public public function registerDropSite(window : haxe.Int64) : Void;
	
	/*
	* Note: this method should be called under AWT lock.
	*/
	@:overload @:public public function unregisterDropSite(window : haxe.Int64) : Void;
	
	@:overload @:public public function registerXEmbedClient(canvasWindow : haxe.Int64, clientWindow : haxe.Int64) : Void;
	
	@:overload @:public public function unregisterXEmbedClient(canvasWindow : haxe.Int64, clientWindow : haxe.Int64) : Void;
	
	
}
@:native('sun$awt$X11$XDropTargetRegistry$EmbeddedDropSiteEntry') @:internal extern class XDropTargetRegistry_EmbeddedDropSiteEntry
{
	@:overload @:public public function new(root : haxe.Int64, event_mask : haxe.Int64, supportedProtocols : java.util.List<sun.awt.X11.XDropTargetProtocol>) : Void;
	
	@:overload @:public public function getRoot() : haxe.Int64;
	
	@:overload @:public public function getEventMask() : haxe.Int64;
	
	@:overload @:public public function hasNonXEmbedClientSites() : Bool;
	
	@:overload @:public @:synchronized public function addSite(window : haxe.Int64, isXEmbedClient : Bool) : Void;
	
	@:overload @:public @:synchronized public function removeSite(window : haxe.Int64) : Void;
	
	@:overload @:public public function setSupportedProtocols(list : java.util.List<sun.awt.X11.XDropTargetProtocol>) : Void;
	
	@:overload @:public public function getSupportedProtocols() : java.util.List<sun.awt.X11.XDropTargetProtocol>;
	
	@:overload @:public public function hasSites() : Bool;
	
	@:overload @:public public function getSites() : java.NativeArray<haxe.Int64>;
	
	@:overload @:public public function getSite(x : Int, y : Int) : haxe.Int64;
	
	
}
