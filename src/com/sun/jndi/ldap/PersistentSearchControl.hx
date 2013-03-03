package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class PersistentSearchControl extends com.sun.jndi.ldap.BasicControl
{
	/**
	* The persistent search control's assigned object identifier
	* is 2.16.840.1.113730.3.4.3.
	*/
	@:public @:static @:final public static var OID(default, null) : String;
	
	/**
	* Indicates interest in entries which have been added.
	*/
	@:public @:static @:final public static var ADD(default, null) : Int;
	
	/**
	* Indicates interest in entries which have been deleted.
	*/
	@:public @:static @:final public static var DELETE(default, null) : Int;
	
	/**
	* Indicates interest in entries which have been modified.
	*/
	@:public @:static @:final public static var MODIFY(default, null) : Int;
	
	/**
	* Indicates interest in entries which have been renamed.
	*/
	@:public @:static @:final public static var RENAME(default, null) : Int;
	
	/**
	* Indicates interest in entries which have been added, deleted,
	* modified or renamed.
	*/
	@:public @:static @:final public static var ANY(default, null) : Int;
	
	/**
	* Constructs a persistent search non-critical control.
	* The original entries, any changed entries (additions,
	* deletions, modifications or renames) and entry change
	* controls are requested.
	*
	* @exception IOException If a BER encoding error occurs.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a persistent search control.
	*
	* @param   changeTypes     The change types of interest.
	* @param   changesOnly     Return original entries and changed entries
	*                          or only the changed entries.
	* @param   returnControls  Return entry change controls.
	* @param   criticality     The control's criticality.
	* @exception IOException If a BER encoding error occurs.
	*/
	@:overload @:public public function new(changeTypes : Int, changesOnly : Bool, returnControls : Bool, criticality : Bool) : Void;
	
	
}
