package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PackerImpl extends com.sun.java.util.jar.pack.TLGlobals implements java.util.jar.Pack200.Pack200_Packer
{
	/**
	* Constructs a Packer object and sets the initial state of
	* the packer engines.
	*/
	@:overload public function new() : Void;
	
	/**
	* Get the set of options for the pack and unpack engines.
	* @return A sorted association of option key strings to option values.
	*/
	@:overload public function properties() : java.util.SortedMap<String, String>;
	
	/**
	* Takes a JarFile and converts into a pack-stream.
	* <p>
	* Closes its input but not its output.  (Pack200 archives are appendable.)
	* @param in a JarFile
	* @param out an OutputStream
	* @exception IOException if an error is encountered.
	*/
	@:overload @:synchronized public function pack(_in : java.util.jar.JarFile, out : java.io.OutputStream) : Void;
	
	/**
	* Takes a JarInputStream and converts into a pack-stream.
	* <p>
	* Closes its input but not its output.  (Pack200 archives are appendable.)
	* <p>
	* The modification time and deflation hint attributes are not available,
	* for the jar-manifest file and the directory containing the file.
	*
	* @see #MODIFICATION_TIME
	* @see #DEFLATION_HINT
	* @param in a JarInputStream
	* @param out an OutputStream
	* @exception IOException if an error is encountered.
	*/
	@:overload @:synchronized public function pack(_in : java.util.jar.JarInputStream, out : java.io.OutputStream) : Void;
	
	/**
	* Register a listener for changes to options.
	* @param listener  An object to be invoked when a property is changed.
	*/
	@:overload public function addPropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Remove a listener for the PropertyChange event.
	* @param listener  The PropertyChange listener to be removed.
	*/
	@:overload public function removePropertyChangeListener(listener : java.beans.PropertyChangeListener) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$PackerImpl$DoPack') @:internal extern class PackerImpl_DoPack
{
	
}
@:native('com$sun$java$util$jar$pack$PackerImpl$DoPack$InFile') @:internal extern class PackerImpl_DoPack_InFile
{
	@:overload public function toString() : String;
	
	
}
