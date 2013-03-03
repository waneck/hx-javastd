package sun.java2d.cmm;
/*
* Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CMSManager
{
	@:public @:static public static var GRAYspace : java.awt.color.ColorSpace;
	
	@:public @:static public static var LINEAR_RGBspace : java.awt.color.ColorSpace;
	
	@:overload @:public @:static @:synchronized public static function getModule() : sun.java2d.cmm.PCMM;
	
	
}
/* CMM trace routines */
@:native('sun$java2d$cmm$CMSManager$CMMTracer') extern class CMSManager_CMMTracer implements sun.java2d.cmm.PCMM
{
	@:overload @:public public function new(tcmm : sun.java2d.cmm.PCMM) : Void;
	
	@:overload @:public public function loadProfile(data : java.NativeArray<java.StdTypes.Int8>) : haxe.Int64;
	
	@:overload @:public public function freeProfile(profileID : haxe.Int64) : Void;
	
	@:overload @:public public function getProfileSize(profileID : haxe.Int64) : Int;
	
	@:overload @:public public function getProfileData(profileID : haxe.Int64, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function getTagSize(profileID : haxe.Int64, tagSignature : Int) : Int;
	
	@:overload @:public public function getTagData(profileID : haxe.Int64, tagSignature : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function setTagData(profileID : haxe.Int64, tagSignature : Int, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/* methods for creating ColorTransforms */
	@:overload @:public public function createTransform(profile : java.awt.color.ICC_Profile, renderType : Int, transformType : Int) : sun.java2d.cmm.ColorTransform;
	
	@:overload @:public public function createTransform(transforms : java.NativeArray<sun.java2d.cmm.ColorTransform>) : sun.java2d.cmm.ColorTransform;
	
	
}
