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
	@:native('nativeMetadataFormatName') public static var _nativeMetadataFormatName(default, null) : String;
	
	public var bmpVersion : String;
	
	public var width : Int;
	
	public var height : Int;
	
	public var bitsPerPixel : java.StdTypes.Int16;
	
	public var compression : Int;
	
	public var imageSize : Int;
	
	public var xPixelsPerMeter : Int;
	
	public var yPixelsPerMeter : Int;
	
	public var colorsUsed : Int;
	
	public var colorsImportant : Int;
	
	public var redMask : Int;
	
	public var greenMask : Int;
	
	public var blueMask : Int;
	
	public var alphaMask : Int;
	
	public var colorSpace : Int;
	
	public var redX : Float;
	
	public var redY : Float;
	
	public var redZ : Float;
	
	public var greenX : Float;
	
	public var greenY : Float;
	
	public var greenZ : Float;
	
	public var blueX : Float;
	
	public var blueY : Float;
	
	public var blueZ : Float;
	
	public var gammaRed : Int;
	
	public var gammaGreen : Int;
	
	public var gammaBlue : Int;
	
	public var intent : Int;
	
	public var palette : java.NativeArray<java.StdTypes.Int8>;
	
	public var paletteSize : Int;
	
	public var red : Int;
	
	public var green : Int;
	
	public var blue : Int;
	
	public var comments : java.util.List<Dynamic>;
	
	@:overload public function new() : Void;
	
	@:overload override public function isReadOnly() : Bool;
	
	@:overload override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload override private function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload override private function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload override private function getStandardDataNode() : IIOMetadataNode;
	
	@:overload override private function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload override public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload override public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload override public function reset() : Void;
	
	
}
