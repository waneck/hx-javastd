package com.sun.imageio.plugins.bmp;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BMPMetadata extends javax.imageio.metadata.IIOMetadata implements com.sun.imageio.plugins.bmp.BMPConstants
{
	@:native('nativeMetadataFormatName') @:public @:static @:final public static var _nativeMetadataFormatName(default, null) : String;
	
	@:public public var bmpVersion : String;
	
	@:public public var width : Int;
	
	@:public public var height : Int;
	
	@:public public var bitsPerPixel : java.StdTypes.Int16;
	
	@:public public var compression : Int;
	
	@:public public var imageSize : Int;
	
	@:public public var xPixelsPerMeter : Int;
	
	@:public public var yPixelsPerMeter : Int;
	
	@:public public var colorsUsed : Int;
	
	@:public public var colorsImportant : Int;
	
	@:public public var redMask : Int;
	
	@:public public var greenMask : Int;
	
	@:public public var blueMask : Int;
	
	@:public public var alphaMask : Int;
	
	@:public public var colorSpace : Int;
	
	@:public public var redX : Float;
	
	@:public public var redY : Float;
	
	@:public public var redZ : Float;
	
	@:public public var greenX : Float;
	
	@:public public var greenY : Float;
	
	@:public public var greenZ : Float;
	
	@:public public var blueX : Float;
	
	@:public public var blueY : Float;
	
	@:public public var blueZ : Float;
	
	@:public public var gammaRed : Int;
	
	@:public public var gammaGreen : Int;
	
	@:public public var gammaBlue : Int;
	
	@:public public var intent : Int;
	
	@:public public var palette : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var paletteSize : Int;
	
	@:public public var red : Int;
	
	@:public public var green : Int;
	
	@:public public var blue : Int;
	
	@:public public var comments : java.util.List<Dynamic>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function isReadOnly() : Bool;
	
	@:overload @:public override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload @:protected override private function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload @:protected override private function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload @:protected override private function getStandardDataNode() : IIOMetadataNode;
	
	@:overload @:protected override private function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload @:public override public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	
}
