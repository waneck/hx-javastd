package sun.net.www;
/*
* Copyright (c) 1994, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class MimeEntry implements java.lang.Cloneable
{
	public static var UNKNOWN(default, null) : Int;
	
	public static var LOAD_INTO_BROWSER(default, null) : Int;
	
	public static var SAVE_TO_FILE(default, null) : Int;
	
	public static var LAUNCH_APPLICATION(default, null) : Int;
	
	/**
	* Construct an empty entry of the given type and subtype.
	*/
	@:overload public function new(type : String) : Void;
	
	@:overload @:synchronized public function getType() : String;
	
	@:overload @:synchronized public function setType(type : String) : Void;
	
	@:overload @:synchronized public function getAction() : Int;
	
	@:overload @:synchronized public function setAction(action : Int, command : String) : Void;
	
	@:overload @:synchronized public function setAction(action : Int) : Void;
	
	@:overload @:synchronized public function getLaunchString() : String;
	
	@:overload @:synchronized public function setCommand(command : String) : Void;
	
	@:overload @:synchronized public function getDescription() : String;
	
	@:overload @:synchronized public function setDescription(description : String) : Void;
	
	@:overload public function getImageFileName() : String;
	
	@:overload @:synchronized public function setImageFileName(filename : String) : Void;
	
	@:overload public function getTempFileTemplate() : String;
	
	@:overload @:synchronized public function getExtensions() : java.NativeArray<String>;
	
	@:overload @:synchronized public function getExtensionsAsList() : String;
	
	@:overload @:synchronized public function setExtensions(extensionString : String) : Void;
	
	/**
	* Invoke the MIME type specific behavior for this MIME type.
	* Returned value can be one of several types:
	* <ol>
	* <li>A thread -- the caller can choose when to launch this thread.
	* <li>A string -- the string is loaded into the browser directly.
	* <li>An input stream -- the caller can read from this byte stream and
	*     will typically store the results in a file.
	* <li>A document (?) --
	* </ol>
	*/
	@:overload public function launch(urlc : java.net.URLConnection, is : java.io.InputStream, mt : sun.net.www.MimeTable) : Dynamic;
	
	@:overload public function matches(type : String) : Bool;
	
	@:overload public function clone() : Dynamic;
	
	@:overload @:synchronized public function toProperty() : String;
	
	@:overload public function toString() : String;
	
	
}
