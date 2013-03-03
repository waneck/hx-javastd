package com.sun.jndi.cosnaming;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class CNNameParser implements javax.naming.NameParser
{
	/**
	* Constructs a new name parser for parsing names in INS syntax.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns a CompoundName given a string in INS syntax.
	* @param name The non-null string representation of the name.
	* @return a non-null CompoundName
	*/
	@:overload @:public public function parse(name : String) : javax.naming.Name;
	
	
}
/**
* An implementation of CompoundName that bypasses the parsing
* and stringifying code of the default CompoundName.
*/
@:native('com$sun$jndi$cosnaming$CNNameParser$CNCompoundName') @:internal extern class CNNameParser_CNCompoundName extends javax.naming.CompoundName
{
	@:overload @:public override public function clone() : Dynamic;
	
	@:overload @:public override public function getPrefix(posn : Int) : javax.naming.Name;
	
	@:overload @:public override public function getSuffix(posn : Int) : javax.naming.Name;
	
	@:overload @:public override public function toString() : String;
	
	
}
