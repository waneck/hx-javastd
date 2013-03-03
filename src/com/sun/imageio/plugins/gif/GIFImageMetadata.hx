package com.sun.imageio.plugins.gif;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class GIFImageMetadata extends com.sun.imageio.plugins.gif.GIFMetadata
{
	@:public public var imageLeftPosition : Int;
	
	@:public public var imageTopPosition : Int;
	
	@:public public var imageWidth : Int;
	
	@:public public var imageHeight : Int;
	
	@:public public var interlaceFlag : Bool;
	
	@:public public var sortFlag : Bool;
	
	@:public public var localColorTable : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var disposalMethod : Int;
	
	@:public public var userInputFlag : Bool;
	
	@:public public var transparentColorFlag : Bool;
	
	@:public public var delayTime : Int;
	
	@:public public var transparentColorIndex : Int;
	
	@:public public var hasPlainTextExtension : Bool;
	
	@:public public var textGridLeft : Int;
	
	@:public public var textGridTop : Int;
	
	@:public public var textGridWidth : Int;
	
	@:public public var textGridHeight : Int;
	
	@:public public var characterCellWidth : Int;
	
	@:public public var characterCellHeight : Int;
	
	@:public public var textForegroundColor : Int;
	
	@:public public var textBackgroundColor : Int;
	
	@:public public var text : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var applicationIDs : java.util.List<Dynamic>;
	
	@:public public var authenticationCodes : java.util.List<Dynamic>;
	
	@:public public var applicationData : java.util.List<Dynamic>;
	
	@:public public var comments : java.util.List<Dynamic>;
	
	@:overload @:protected private function new(standardMetadataFormatSupported : Bool, nativeMetadataFormatName : String, nativeMetadataFormatClassName : String, extraMetadataFormatNames : java.NativeArray<String>, extraMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function isReadOnly() : Bool;
	
	@:overload @:public override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload @:public override public function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardDataNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardTextNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload @:public override public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload @:protected override private function mergeNativeTree(root : org.w3c.dom.Node) : Void;
	
	@:overload @:protected override private function mergeStandardTree(root : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	
}
