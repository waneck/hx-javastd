package com.sun.tools.internal.xjc.model;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class CCustomizations extends java.util.ArrayList<com.sun.tools.internal.xjc.model.CPluginCustomization>
{
	@:overload public function new() : Void;
	
	@:overload public function new(cPluginCustomizations : java.util.Collection<com.sun.tools.internal.xjc.model.CPluginCustomization>) : Void;
	
	/**
	* Gets the model component that carries this customization.
	*
	* @return never null.
	*/
	@:overload public function getOwner() : com.sun.tools.internal.xjc.model.CCustomizable;
	
	/**
	* Finds the first {@link CPluginCustomization} that belongs to the given namespace URI.
	* @return null if not found
	*/
	@:overload public function find(nsUri : String) : com.sun.tools.internal.xjc.model.CPluginCustomization;
	
	/**
	* Finds the first {@link CPluginCustomization} that belongs to the given namespace URI and the local name.
	* @return null if not found
	*/
	@:overload public function find(nsUri : String, localName : String) : com.sun.tools.internal.xjc.model.CPluginCustomization;
	
	/**
	* Convenient singleton instance that represents an empty {@link CCustomizations}.
	*/
	public static var EMPTY(default, null) : com.sun.tools.internal.xjc.model.CCustomizations;
	
	/**
	* Merges two {@link CCustomizations} objects into one.
	*/
	@:overload public static function merge(lhs : com.sun.tools.internal.xjc.model.CCustomizations, rhs : com.sun.tools.internal.xjc.model.CCustomizations) : com.sun.tools.internal.xjc.model.CCustomizations;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
