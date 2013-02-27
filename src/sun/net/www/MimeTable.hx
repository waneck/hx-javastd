package sun.net.www;
/*
* Copyright (c) 1994, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeTable implements java.net.FileNameMap
{
	/**
	* Get the single instance of this class.  First use will load the
	* table from a data file.
	*/
	@:overload public static function getDefaultTable() : MimeTable;
	
	/**
	*
	*/
	@:overload public static function loadTable() : java.net.FileNameMap;
	
	@:overload @:synchronized public function getSize() : Int;
	
	@:overload @:synchronized public function getContentTypeFor(fileName : String) : String;
	
	@:overload @:synchronized public function add(m : sun.net.www.MimeEntry) : Void;
	
	@:overload @:synchronized public function remove(type : String) : sun.net.www.MimeEntry;
	
	@:overload @:synchronized public function remove(entry : sun.net.www.MimeEntry) : sun.net.www.MimeEntry;
	
	@:overload @:synchronized public function find(type : String) : sun.net.www.MimeEntry;
	
	/**
	* Locate a MimeEntry by the file extension that has been associated
	* with it. Parses general file names, and URLs.
	*/
	@:overload public function findByFileName(fname : String) : sun.net.www.MimeEntry;
	
	/**
	* Locate a MimeEntry by the file extension that has been associated
	* with it.
	*/
	@:overload @:synchronized public function findByExt(fileExtension : String) : sun.net.www.MimeEntry;
	
	@:overload @:synchronized public function findByDescription(description : String) : sun.net.www.MimeEntry;
	
	@:overload @:synchronized public function elements() : java.util.Enumeration<sun.net.www.MimeEntry>;
	
	private static var mailcapLocations : java.NativeArray<String>;
	
	@:overload @:synchronized public function load() : Void;
	
	@:overload @:synchronized public function save(filename : String) : Bool;
	
	@:overload public function getAsProperties() : java.util.Properties;
	
	@:overload private function saveAsProperties(file : java.io.File) : Bool;
	
	
}
@:native('sun$net$www$MimeTable$DefaultInstanceHolder') @:internal extern class MimeTable_DefaultInstanceHolder
{
	
}
