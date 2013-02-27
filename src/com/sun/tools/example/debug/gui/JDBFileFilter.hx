package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
////### Renamed from 'ExampleFileFilter.java' provided with Swing demos.
/**
* A convenience implementation of FileFilter that filters out
* all files except for those type extensions that it knows about.
*
* Extensions are of the type ".foo", which is typically found on
* Windows and Unix boxes, but not on Macinthosh. Case is ignored.
*
* Example - create a new filter that filerts out all files
* but gif and jpg image files:
*
*     JFileChooser chooser = new JFileChooser();
*     ExampleFileFilter filter = new ExampleFileFilter(
*                   new String{"gif", "jpg"}, "JPEG & GIF Images")
*     chooser.addChoosableFileFilter(filter);
*     chooser.showOpenDialog(this);
*
* @author Jeff Dinkins
*/
extern class JDBFileFilter extends javax.swing.filechooser.FileFilter
{
	/**
	* Creates a file filter. If no filters are added, then all
	* files are accepted.
	*
	* @see #addExtension
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a file filter that accepts files with the given extension.
	* Example: new JDBFileFilter("jpg");
	*
	* @see #addExtension
	*/
	@:overload public function new(extension : String) : Void;
	
	/**
	* Creates a file filter that accepts the given file type.
	* Example: new JDBFileFilter("jpg", "JPEG Image Images");
	*
	* Note that the "." before the extension is not needed. If
	* provided, it will be ignored.
	*
	* @see #addExtension
	*/
	@:overload public function new(extension : String, description : String) : Void;
	
	/**
	* Creates a file filter from the given string array.
	* Example: new JDBFileFilter(String {"gif", "jpg"});
	*
	* Note that the "." before the extension is not needed adn
	* will be ignored.
	*
	* @see #addExtension
	*/
	@:overload public function new(filters : java.NativeArray<String>) : Void;
	
	/**
	* Creates a file filter from the given string array and description.
	* Example: new JDBFileFilter(String {"gif", "jpg"}, "Gif and JPG Images");
	*
	* Note that the "." before the extension is not needed and will be ignored.
	*
	* @see #addExtension
	*/
	@:overload public function new(filters : java.NativeArray<String>, description : String) : Void;
	
	/**
	* Return true if this file should be shown in the directory pane,
	* false if it shouldn't.
	*
	* Files that begin with "." are ignored.
	*
	* @see #getExtension
	* @see FileFilter#accepts
	*/
	@:overload override public function accept(f : java.io.File) : Bool;
	
	/**
	* Return the extension portion of the file's name .
	*
	* @see #getExtension
	* @see FileFilter#accept
	*/
	@:overload public function getExtension(f : java.io.File) : String;
	
	/**
	* Adds a filetype "dot" extension to filter against.
	*
	* For example: the following code will create a filter that filters
	* out all files except those that end in ".jpg" and ".tif":
	*
	*   JDBFileFilter filter = new JDBFileFilter();
	*   filter.addExtension("jpg");
	*   filter.addExtension("tif");
	*
	* Note that the "." before the extension is not needed and will be ignored.
	*/
	@:overload public function addExtension(extension : String) : Void;
	
	/**
	* Returns the human readable description of this filter. For
	* example: "JPEG and GIF Image Files (*.jpg, *.gif)"
	*
	* @see setDescription
	* @see setExtensionListInDescription
	* @see isExtensionListInDescription
	* @see FileFilter#getDescription
	*/
	@:overload override public function getDescription() : String;
	
	/**
	* Sets the human readable description of this filter. For
	* example: filter.setDescription("Gif and JPG Images");
	*
	* @see setDescription
	* @see setExtensionListInDescription
	* @see isExtensionListInDescription
	*/
	@:overload public function setDescription(description : String) : Void;
	
	/**
	* Determines whether the extension list (.jpg, .gif, etc) should
	* show up in the human readable description.
	*
	* Only relevent if a description was provided in the constructor
	* or using setDescription();
	*
	* @see getDescription
	* @see setDescription
	* @see isExtensionListInDescription
	*/
	@:overload public function setExtensionListInDescription(b : Bool) : Void;
	
	/**
	* Returns whether the extension list (.jpg, .gif, etc) should
	* show up in the human readable description.
	*
	* Only relevent if a description was provided in the constructor
	* or using setDescription();
	*
	* @see getDescription
	* @see setDescription
	* @see setExtensionListInDescription
	*/
	@:overload public function isExtensionListInDescription() : Bool;
	
	
}
