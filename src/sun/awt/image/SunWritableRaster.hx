package sun.awt.image;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SunWritableRaster extends java.awt.image.WritableRaster
{
	@:overload @:public @:static public static function setDataStealer(ds : sun.awt.image.SunWritableRaster.SunWritableRaster_DataStealer) : Void;
	
	@:overload @:public @:static public static function stealData(dbb : java.awt.image.DataBufferByte, bank : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:static public static function stealData(dbus : java.awt.image.DataBufferUShort, bank : Int) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:public @:static public static function stealData(dbi : java.awt.image.DataBufferInt, bank : Int) : java.NativeArray<Int>;
	
	@:overload @:public @:static public static function stealTrackable(db : java.awt.image.DataBuffer) : sun.java2d.StateTrackableDelegate;
	
	@:overload @:public @:static public static function setTrackable(db : java.awt.image.DataBuffer, trackable : sun.java2d.StateTrackableDelegate) : Void;
	
	@:overload @:public @:static public static function makeTrackable(db : java.awt.image.DataBuffer) : Void;
	
	@:native('markDirty') @:overload @:public @:static public static function _markDirty(db : java.awt.image.DataBuffer) : Void;
	
	@:native('markDirty') @:overload @:public @:static public static function _markDirty(wr : java.awt.image.WritableRaster) : Void;
	
	@:native('markDirty') @:overload @:public @:static public static function _markDirty(img : java.awt.Image) : Void;
	
	@:overload @:public public function new(sampleModel : java.awt.image.SampleModel, origin : java.awt.Point) : Void;
	
	@:overload @:public public function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, origin : java.awt.Point) : Void;
	
	@:overload @:public public function new(sampleModel : java.awt.image.SampleModel, dataBuffer : java.awt.image.DataBuffer, aRegion : java.awt.Rectangle, sampleModelTranslate : java.awt.Point, parent : java.awt.image.WritableRaster) : Void;
	
	/**
	* Mark the TrackableDelegate of the associated DataBuffer dirty.
	*/
	@:overload @:public @:final public function markDirty() : Void;
	
	
}
@:native('sun$awt$image$SunWritableRaster$DataStealer') extern interface SunWritableRaster_DataStealer
{
	@:overload @:public public function getData(dbb : java.awt.image.DataBufferByte, bank : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getData(dbus : java.awt.image.DataBufferUShort, bank : Int) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:public public function getData(dbi : java.awt.image.DataBufferInt, bank : Int) : java.NativeArray<Int>;
	
	@:overload @:public public function getTrackable(db : java.awt.image.DataBuffer) : sun.java2d.StateTrackableDelegate;
	
	@:overload @:public public function setTrackable(db : java.awt.image.DataBuffer, trackable : sun.java2d.StateTrackableDelegate) : Void;
	
	
}
