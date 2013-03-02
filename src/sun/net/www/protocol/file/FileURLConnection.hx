package sun.net.www.protocol.file;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* Open an file input stream given a URL.
* @author      James Gosling
* @author      Steven B. Byrne
*/
extern class FileURLConnection extends java.net.URLConnection
{
	@:overload private function new(u : java.net.URL, file : java.io.File) : Void;
	
	/*
	* Note: the semantics of FileURLConnection object is that the
	* results of the various URLConnection calls, such as
	* getContentType, getInputStream or getContentLength reflect
	* whatever was true when connect was called.
	*/
	@:overload override public function connect() : Void;
	
	@:overload override public function getHeaderField(name : String) : String;
	
	@:overload override public function getHeaderField(n : Int) : String;
	
	@:overload override public function getContentLength() : Int;
	
	@:overload override public function getContentLengthLong() : haxe.Int64;
	
	@:overload override public function getHeaderFieldKey(n : Int) : String;
	
	@:overload public function getProperties() : sun.net.www.MessageHeader;
	
	@:overload override public function getLastModified() : haxe.Int64;
	
	@:overload @:synchronized override public function getInputStream() : java.io.InputStream;
	
	/* since getOutputStream isn't supported, only read permission is
	* relevant
	*/
	@:overload override public function getPermission() : java.security.Permission;
	
	
}
