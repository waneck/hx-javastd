package java.util;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class ListResourceBundle extends java.util.ResourceBundle
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:final override public function handleGetObject(key : String) : Dynamic;
	
	/**
	* Returns an <code>Enumeration</code> of the keys contained in
	* this <code>ResourceBundle</code> and its parent bundles.
	*
	* @return an <code>Enumeration</code> of the keys contained in
	*         this <code>ResourceBundle</code> and its parent bundles.
	* @see #keySet()
	*/
	@:overload @:public override public function getKeys() : java.util.Enumeration<String>;
	
	/**
	* Returns a <code>Set</code> of the keys contained
	* <em>only</em> in this <code>ResourceBundle</code>.
	*
	* @return a <code>Set</code> of the keys contained only in this
	*         <code>ResourceBundle</code>
	* @since 1.6
	* @see #keySet()
	*/
	@:require(java6) @:overload @:protected override private function handleKeySet() : java.util.Set<String>;
	
	/**
	* Returns an array in which each item is a pair of objects in an
	* <code>Object</code> array. The first element of each pair is
	* the key, which must be a <code>String</code>, and the second
	* element is the value associated with that key.  See the class
	* description for details.
	*
	* @return an array of an <code>Object</code> array representing a
	* key-value pair.
	*/
	@:overload @:abstract @:protected private function getContents() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	
}
