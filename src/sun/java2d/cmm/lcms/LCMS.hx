package sun.java2d.cmm.lcms;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class LCMS implements sun.java2d.cmm.PCMM
{
	/* methods invoked from ICC_Profile */
	@:overload @:public @:native public function loadProfile(data : java.NativeArray<java.StdTypes.Int8>) : haxe.Int64;
	
	@:overload @:public @:native public function freeProfile(profileID : haxe.Int64) : Void;
	
	@:overload @:public @:native @:synchronized public function getProfileSize(profileID : haxe.Int64) : Int;
	
	@:overload @:public @:native @:synchronized public function getProfileData(profileID : haxe.Int64, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:native @:synchronized public function getTagSize(profileID : haxe.Int64, tagSignature : Int) : Int;
	
	@:overload @:public @:native @:synchronized public function getTagData(profileID : haxe.Int64, tagSignature : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:native @:synchronized public function setTagData(profileID : haxe.Int64, tagSignature : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:static @:native public static function getProfileID(profile : java.awt.color.ICC_Profile) : haxe.Int64;
	
	@:overload @:public @:static @:native public static function createNativeTransform(profileIDs : java.NativeArray<haxe.Int64>, renderType : Int, inFormatter : Int, outFormatter : Int, disposerRef : Dynamic) : haxe.Int64;
	
	/**
	* Constructs ColorTransform object corresponding to an ICC_profile
	*/
	@:overload @:public public function createTransform(profile : java.awt.color.ICC_Profile, renderType : Int, transformType : Int) : sun.java2d.cmm.ColorTransform;
	
	/**
	* Constructs an ColorTransform object from a list of ColorTransform
	* objects
	*/
	@:overload @:public @:synchronized public function createTransform(transforms : java.NativeArray<sun.java2d.cmm.ColorTransform>) : sun.java2d.cmm.ColorTransform;
	
	/* methods invoked from LCMSTransform */
	@:overload @:public @:static @:native public static function colorConvert(trans : sun.java2d.cmm.lcms.LCMSTransform, src : sun.java2d.cmm.lcms.LCMSImageLayout, dest : sun.java2d.cmm.lcms.LCMSImageLayout) : Void;
	
	@:overload @:public @:static @:native public static function freeTransform(ID : haxe.Int64) : Void;
	
	@:overload @:public @:static @:native public static function initLCMS(Trans : Class<Dynamic>, IL : Class<Dynamic>, Pf : Class<Dynamic>) : Void;
	
	
}
