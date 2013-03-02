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
	public var imageLeftPosition : Int;
	
	public var imageTopPosition : Int;
	
	public var imageWidth : Int;
	
	public var imageHeight : Int;
	
	public var interlaceFlag : Bool;
	
	public var sortFlag : Bool;
	
	public var localColorTable : java.NativeArray<java.StdTypes.Int8>;
	
	public var disposalMethod : Int;
	
	public var userInputFlag : Bool;
	
	public var transparentColorFlag : Bool;
	
	public var delayTime : Int;
	
	public var transparentColorIndex : Int;
	
	public var hasPlainTextExtension : Bool;
	
	public var textGridLeft : Int;
	
	public var textGridTop : Int;
	
	public var textGridWidth : Int;
	
	public var textGridHeight : Int;
	
	public var characterCellWidth : Int;
	
	public var characterCellHeight : Int;
	
	public var textForegroundColor : Int;
	
	public var textBackgroundColor : Int;
	
	public var text : java.NativeArray<java.StdTypes.Int8>;
	
	public var applicationIDs : java.util.List<Dynamic>;
	
	public var authenticationCodes : java.util.List<Dynamic>;
	
	public var applicationData : java.util.List<Dynamic>;
	
	public var comments : java.util.List<Dynamic>;
	
	@:overload private function new(standardMetadataFormatSupported : Bool, nativeMetadataFormatName : String, nativeMetadataFormatClassName : String, extraMetadataFormatNames : java.NativeArray<String>, extraMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function isReadOnly() : Bool;
	
	@:overload public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload public function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload public function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload public function getStandardDataNode() : IIOMetadataNode;
	
	@:overload public function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload public function getStandardTextNode() : IIOMetadataNode;
	
	@:overload public function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload private function mergeNativeTree(root : org.w3c.dom.Node) : Void;
	
	@:overload private function mergeStandardTree(root : org.w3c.dom.Node) : Void;
	
	@:overload public function reset() : Void;
	
	
}
