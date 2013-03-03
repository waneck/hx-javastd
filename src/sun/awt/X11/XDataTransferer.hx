package sun.awt.X11;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class XDataTransferer extends sun.awt.datatransfer.DataTransferer
{
	@:overload @:public override public function getDefaultUnicodeEncoding() : String;
	
	@:overload @:public override public function isLocaleDependentTextFormat(format : haxe.Int64) : Bool;
	
	@:overload @:public override public function isTextFormat(format : haxe.Int64) : Bool;
	
	@:overload @:protected override private function getCharsetForTextFormat(lFormat : Null<haxe.Int64>) : String;
	
	@:overload @:protected override private function isURIListFormat(format : haxe.Int64) : Bool;
	
	@:overload @:public override public function isFileFormat(format : haxe.Int64) : Bool;
	
	@:overload @:public override public function isImageFormat(format : haxe.Int64) : Bool;
	
	@:overload @:protected override private function getFormatForNativeAsLong(str : String) : Null<haxe.Int64>;
	
	@:overload @:protected override private function getNativeForFormat(format : haxe.Int64) : String;
	
	@:overload @:public override public function getToolkitThreadBlockedHandler() : sun.awt.datatransfer.ToolkitThreadBlockedHandler;
	
	@:overload @:protected override private function imageToPlatformBytes(image : java.awt.Image, format : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected override private function convertFileListToBytes(fileList : java.util.ArrayList<String>) : java.io.ByteArrayOutputStream;
	
	/**
	* Translates either a byte array or an input stream which contain
	* platform-specific image data in the given format into an Image.
	*/
	@:overload @:protected override private function platformImageBytesOrStreamToImage(inputStream : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, format : haxe.Int64) : java.awt.Image;
	
	@:overload @:protected override private function dragQueryFile(bytes : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	@:overload @:protected override private function dragQueryURIs(stream : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, format : haxe.Int64, localeTransferable : java.awt.datatransfer.Transferable) : java.NativeArray<java.net.URI>;
	
	/*
	* The XDnD protocol prescribes that the Atoms used as targets for data
	* transfer should have string names that represent the corresponding MIME
	* types.
	* To meet this requirement we check if the passed native format constitutes
	* a valid MIME and return a list of flavors to which the data in this MIME
	* type can be translated by the Data Transfer subsystem.
	*/
	@:overload @:public override public function getPlatformMappingsForNative(nat : String) : java.util.List<Dynamic>;
	
	/*
	* The XDnD protocol prescribes that the Atoms used as targets for data
	* transfer should have string names that represent the corresponding MIME
	* types.
	* To meet this requirement we return a list of formats that represent
	* MIME types to which the data in this flavor can be translated by the Data
	* Transfer subsystem.
	*/
	@:overload @:public override public function getPlatformMappingsForFlavor(df : java.awt.datatransfer.DataFlavor) : java.util.List<Dynamic>;
	
	
}
