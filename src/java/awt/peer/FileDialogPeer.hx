package java.awt.peer;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface FileDialogPeer extends java.awt.peer.DialogPeer
{
	/**
	* Sets the selected file for this file dialog.
	*
	* @param file the file to set as selected file, or {@code null} for
	*        no selected file
	*
	* @see FileDialog#setFile(String)
	*/
	@:overload public function setFile(file : String) : Void;
	
	/**
	* Sets the current directory for this file dialog.
	*
	* @param dir the directory to set
	*
	* @see FileDialog#setDirectory(String)
	*/
	@:overload public function setDirectory(dir : String) : Void;
	
	/**
	* Sets the filename filter for filtering the displayed files.
	*
	* @param filter the filter to set
	*
	* @see FileDialog#setFilenameFilter(FilenameFilter)
	*/
	@:overload public function setFilenameFilter(filter : java.io.FilenameFilter) : Void;
	
	
}
