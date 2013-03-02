package sun.font;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FontScaler implements sun.java2d.DisposerRecord
{
	/* This is the only place to instantiate new FontScaler.
	* Therefore this is very convinient place to register
	* scaler with Disposer as well as trigger deregistring bad font
	* in case when scaler reports this.
	*/
	@:overload public static function getScaler(font : sun.font.Font2D, indexInCollection : Int, supportsCJK : Bool, filesize : Int) : sun.font.FontScaler;
	
	/*
	* At the moment it is harmless to create 2 null scalers so, technically,
	* syncronized keyword is not needed.
	*
	* But it is safer to keep it to avoid subtle problems if we will be adding
	* checks like whether scaler is null scaler.
	*/
	@:overload @:synchronized public static function getNullScaler() : sun.font.FontScaler;
	
	private var font : java.lang.ref.WeakReference<sun.font.Font2D>;
	
	private var nativeScaler : haxe.Int64;
	
	private var disposed : Bool;
	
	/* Used by Java2D disposer to ensure native resources are released.
	Note: this method does not release any of created
	scaler context objects! */
	@:overload public function dispose() : Void;
	
	
}
