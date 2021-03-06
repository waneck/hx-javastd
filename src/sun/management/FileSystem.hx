package sun.management;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class FileSystem
{
	@:overload @:protected private function new() : Void;
	
	/**
	* Opens the file system
	*/
	@:overload @:public @:static public static function open() : sun.management.FileSystem;
	
	/**
	* Tells whether or not the specified file is located on a
	* file system that supports file security or not.
	*
	* @throws  IOException     if an I/O error occurs.
	*/
	@:overload @:public @:abstract public function supportsFileSecurity(f : java.io.File) : Bool;
	
	/**
	* Tell whether or not the specified file is accessible
	* by anything other than the file owner.
	*
	* @throws  IOException     if an I/O error occurs.
	*
	* @throws  UnsupportedOperationException
	*          If file is located on a file system that doesn't support
	*          file security.
	*/
	@:overload @:public @:abstract public function isAccessUserOnly(f : java.io.File) : Bool;
	
	
}
