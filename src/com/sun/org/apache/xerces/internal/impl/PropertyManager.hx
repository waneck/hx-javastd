package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PropertyManager
{
	/**
	*  This class manages different properties related to Stax specification and its implementation.
	* This class constructor also takes itself (PropertyManager object) as parameter and initializes the
	* object with the property taken from the object passed.
	*
	* @author  Neeraj Bajaj, neeraj.bajaj@sun.com
	* @author K.Venugopal@sun.com
	* @author Sunitha Reddy, sunitha.reddy@sun.com
	*/
	public static var STAX_NOTATIONS(default, null) : String;
	
	public static var STAX_ENTITIES(default, null) : String;
	
	public static var CONTEXT_READER(default, null) : Int;
	
	public static var CONTEXT_WRITER(default, null) : Int;
	
	/** Creates a new instance of PropertyManager */
	@:overload public function new(context : Int) : Void;
	
	/**
	* Initialize this object with the properties taken from passed PropertyManager object.
	*/
	@:overload public function new(propertyManager : PropertyManager) : Void;
	
	/**
	* public void reset(){
	* supportedProps.clear() ;
	* }
	*/
	@:overload public function containsProperty(property : String) : Bool;
	
	@:overload public function getProperty(property : String) : Dynamic;
	
	@:overload public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload public function toString() : String;
	
	
}
