package sun.tools.jar;
/*
* Copyright (c) 1996, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class Manifest
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	/**
	* Parse a manifest from a stream, optionally computing hashes
	* for the files.
	*/
	@:overload @:public public function new(is : java.io.InputStream, compute : Bool) : Void;
	
	/* recursively generate manifests from directory tree */
	@:overload @:public public function new(files : java.NativeArray<String>) : Void;
	
	@:overload @:public public function addEntry(entry : sun.net.www.MessageHeader) : Void;
	
	@:overload @:public public function getEntry(name : String) : sun.net.www.MessageHeader;
	
	@:overload @:public public function entryAt(i : Int) : sun.net.www.MessageHeader;
	
	@:overload @:public public function entries() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function addFiles(dir : java.io.File, files : java.NativeArray<String>) : Void;
	
	@:overload @:public public function addFile(f : java.io.File) : Void;
	
	@:overload @:public public function doHashes(mh : sun.net.www.MessageHeader) : Void;
	
	/* Add a manifest file at current position in a stream
	*/
	@:overload @:public public function stream(os : java.io.OutputStream) : Void;
	
	@:overload @:public @:static public static function isManifestName(name : String) : Bool;
	
	
}
