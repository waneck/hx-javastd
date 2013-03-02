package sun.awt.shell;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DefaultShellFolder extends sun.awt.shell.ShellFolder
{
	/**
	* This method is implemented to make sure that no instances
	* of <code>ShellFolder</code> are ever serialized. An instance of
	* this default implementation can always be represented with a
	* <code>java.io.File</code> object instead.
	*
	* @returns a <code>java.io.File</code> replacement object.
	*/
	@:overload private function writeReplace() : Dynamic;
	
	/**
	* @return An array of shell folders that are children of this shell folder
	* object, null if this shell folder is empty.
	*/
	@:overload public function listFiles() : java.NativeArray<java.io.File>;
	
	/**
	* @return Whether this shell folder is a link
	*/
	@:overload public function isLink() : Bool;
	
	/**
	* @return Whether this shell folder is marked as hidden
	*/
	@:overload public function isHidden() : Bool;
	
	/**
	* @return The shell folder linked to by this shell folder, or null
	* if this shell folder is not a link
	*/
	@:overload public function getLinkLocation() : sun.awt.shell.ShellFolder;
	
	/**
	* @return The name used to display this shell folder
	*/
	@:overload public function getDisplayName() : String;
	
	/**
	* @return The type of shell folder as a string
	*/
	@:overload public function getFolderType() : String;
	
	/**
	* @return The executable type as a string
	*/
	@:overload public function getExecutableType() : String;
	
	
}
