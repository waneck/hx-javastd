package sun.awt.X11;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XSelection
{
	/* The maximal length of the property data. */
	public static var MAX_LENGTH(default, null) : haxe.Int64;
	
	/*
	* The maximum data size for ChangeProperty request.
	* 100 is for the structure prepended to the request.
	*/
	public static var MAX_PROPERTY_SIZE(default, null) : Int;
	
	/**
	* Creates a selection object.
	*
	* @param atom   the selection atom.
	* @param clpbrd the corresponding clipoboard
	* @exception NullPointerException if atom is <code>null</code>.
	*/
	@:overload public function new(atom : sun.awt.X11.XAtom) : Void;
	
	@:overload public function getSelectionAtom() : sun.awt.X11.XAtom;
	
	@:overload @:synchronized public function setOwner(contents : java.awt.datatransfer.Transferable, formatMap : java.util.Map<Dynamic, Dynamic>, formats : java.NativeArray<haxe.Int64>, time : haxe.Int64) : Bool;
	
	/*
	* Returns the list of atoms that represent the targets for which an attempt
	* to convert the current selection will succeed.
	*/
	@:overload public function getTargets(time : haxe.Int64) : java.NativeArray<haxe.Int64>;
	
	/*
	* Requests the selection data in the specified format and returns
	* the data provided by the owner.
	*/
	@:overload public function getData(format : haxe.Int64, time : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:synchronized public function reset() : Void;
	
	
}
@:native('sun$awt$X11$XSelection$SelectionEventHandler') @:internal extern class XSelection_SelectionEventHandler implements sun.awt.X11.XEventDispatcher
{
	@:overload public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	
}
@:native('sun$awt$X11$XSelection$IncrementalDataProvider') @:internal extern class XSelection_IncrementalDataProvider implements sun.awt.X11.XEventDispatcher
{
	@:overload public function new(requestor : haxe.Int64, property : haxe.Int64, target : haxe.Int64, format : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	
}
@:native('sun$awt$X11$XSelection$IncrementalTransferHandler') @:internal extern class XSelection_IncrementalTransferHandler implements sun.awt.X11.XEventDispatcher
{
	@:overload public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	
}
