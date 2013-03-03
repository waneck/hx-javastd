package sun.print;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CUPSPrinter
{
	@:public public var nPageSizes : Int;
	
	@:public public var nTrays : Int;
	
	/**
	* Returns array of MediaSizeNames derived from PPD.
	*/
	@:overload @:public public function getMediaSizeNames() : java.NativeArray<javax.print.attribute.standard.MediaSizeName>;
	
	/**
	* Returns array of Custom MediaSizeNames derived from PPD.
	*/
	@:overload @:public public function getCustomMediaSizeNames() : java.NativeArray<sun.print.CustomMediaSizeName>;
	
	/**
	* Returns array of MediaPrintableArea derived from PPD.
	*/
	@:overload @:public public function getMediaPrintableArea() : java.NativeArray<javax.print.attribute.standard.MediaPrintableArea>;
	
	/**
	* Returns array of MediaTrays derived from PPD.
	*/
	@:overload @:public public function getMediaTrays() : java.NativeArray<javax.print.attribute.standard.MediaTray>;
	
	/**
	* Get CUPS default printer using IPP.
	*/
	@:overload @:public @:static public static function getDefaultPrinter() : String;
	
	/**
	* Get list of all CUPS printers using IPP.
	*/
	@:overload @:public @:static public static function getAllPrinters() : java.NativeArray<String>;
	
	/**
	* Returns CUPS server name.
	*/
	@:overload @:public @:static public static function getServer() : String;
	
	/**
	* Returns CUPS port number.
	*/
	@:overload @:public @:static public static function getPort() : Int;
	
	/**
	* Detects if CUPS is running.
	*/
	@:overload @:public @:static public static function isCupsRunning() : Bool;
	
	
}
