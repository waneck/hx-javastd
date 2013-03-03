package javax.swing.filechooser;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class FileNameExtensionFilter extends javax.swing.filechooser.FileFilter
{
	/**
	* Creates a {@code FileNameExtensionFilter} with the specified
	* description and file name extensions. The returned {@code
	* FileNameExtensionFilter} will accept all directories and any
	* file with a file name extension contained in {@code extensions}.
	*
	* @param description textual description for the filter, may be
	*                    {@code null}
	* @param extensions the accepted file name extensions
	* @throws IllegalArgumentException if extensions is {@code null}, empty,
	*         contains {@code null}, or contains an empty string
	* @see #accept
	*/
	@:overload @:public public function new(description : String, extensions : java.NativeArray<String>) : Void;
	
	/**
	* Tests the specified file, returning true if the file is
	* accepted, false otherwise. True is returned if the extension
	* matches one of the file name extensions of this {@code
	* FileFilter}, or the file is a directory.
	*
	* @param f the {@code File} to test
	* @return true if the file is to be accepted, false otherwise
	*/
	@:overload @:public override public function accept(f : java.io.File) : Bool;
	
	/**
	* The description of this filter. For example: "JPG and GIF Images."
	*
	* @return the description of this filter
	*/
	@:overload @:public override public function getDescription() : String;
	
	/**
	* Returns the set of file name extensions files are tested against.
	*
	* @return the set of file name extensions files are tested against
	*/
	@:overload @:public public function getExtensions() : java.NativeArray<String>;
	
	/**
	* Returns a string representation of the {@code FileNameExtensionFilter}.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this {@code FileNameExtensionFilter}
	*/
	@:overload @:public public function toString() : String;
	
	
}
