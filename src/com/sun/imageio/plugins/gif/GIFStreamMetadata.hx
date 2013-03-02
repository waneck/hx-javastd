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
extern class GIFStreamMetadata extends com.sun.imageio.plugins.gif.GIFMetadata
{
	public static var versionStrings(default, null) : java.NativeArray<String>;
	
	public var version : String;
	
	public var logicalScreenWidth : Int;
	
	public var logicalScreenHeight : Int;
	
	public var colorResolution : Int;
	
	public var pixelAspectRatio : Int;
	
	public var backgroundColorIndex : Int;
	
	public var sortFlag : Bool;
	
	public static var colorTableSizes(default, null) : java.NativeArray<String>;
	
	public var globalColorTable : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function new(standardMetadataFormatSupported : Bool, nativeMetadataFormatName : String, nativeMetadataFormatClassName : String, extraMetadataFormatNames : java.NativeArray<String>, extraMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	@:overload public function new() : Void;
	
	@:overload override public function isReadOnly() : Bool;
	
	@:overload override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload override public function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload override public function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDataNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDocumentNode() : IIOMetadataNode;
	
	@:overload override public function getStandardTextNode() : IIOMetadataNode;
	
	@:overload override public function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload override public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload private function mergeNativeTree(root : org.w3c.dom.Node) : Void;
	
	@:overload private function mergeStandardTree(root : org.w3c.dom.Node) : Void;
	
	@:overload override public function reset() : Void;
	
	
}
