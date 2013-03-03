package com.sun.imageio.plugins.gif;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GIFMetadata extends javax.imageio.metadata.IIOMetadata
{
	@:overload @:protected @:static private static function fatal(node : org.w3c.dom.Node, reason : String) : Void;
	
	@:overload @:protected @:static private static function getStringAttribute(node : org.w3c.dom.Node, name : String, defaultValue : String, required : Bool, range : java.NativeArray<String>) : String;
	
	@:overload @:protected @:static private static function getIntAttribute(node : org.w3c.dom.Node, name : String, defaultValue : Int, required : Bool, bounded : Bool, min : Int, max : Int) : Int;
	
	@:overload @:protected @:static private static function getFloatAttribute(node : org.w3c.dom.Node, name : String, defaultValue : Single, required : Bool) : Single;
	
	@:overload @:protected @:static private static function getIntAttribute(node : org.w3c.dom.Node, name : String, bounded : Bool, min : Int, max : Int) : Int;
	
	@:overload @:protected @:static private static function getFloatAttribute(node : org.w3c.dom.Node, name : String) : Single;
	
	@:overload @:protected @:static private static function getBooleanAttribute(node : org.w3c.dom.Node, name : String, defaultValue : Bool, required : Bool) : Bool;
	
	@:overload @:protected @:static private static function getBooleanAttribute(node : org.w3c.dom.Node, name : String) : Bool;
	
	@:overload @:protected @:static private static function getEnumeratedAttribute(node : org.w3c.dom.Node, name : String, legalNames : java.NativeArray<String>, defaultValue : Int, required : Bool) : Int;
	
	@:overload @:protected @:static private static function getEnumeratedAttribute(node : org.w3c.dom.Node, name : String, legalNames : java.NativeArray<String>) : Int;
	
	@:overload @:protected @:static private static function getAttribute(node : org.w3c.dom.Node, name : String, defaultValue : String, required : Bool) : String;
	
	@:overload @:protected @:static private static function getAttribute(node : org.w3c.dom.Node, name : String) : String;
	
	@:overload @:protected private function new(standardMetadataFormatSupported : Bool, nativeMetadataFormatName : String, nativeMetadataFormatClassName : String, extraMetadataFormatNames : java.NativeArray<String>, extraMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	@:overload @:public override public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload @:protected private function getColorTable(colorTableNode : org.w3c.dom.Node, entryNodeName : String, lengthExpected : Bool, expectedLength : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected @:abstract private function mergeNativeTree(root : org.w3c.dom.Node) : Void;
	
	@:overload @:protected @:abstract private function mergeStandardTree(root : org.w3c.dom.Node) : Void;
	
	
}
