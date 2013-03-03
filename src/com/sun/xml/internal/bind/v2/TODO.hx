package com.sun.xml.internal.bind.v2;
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
/**
* Place holder for TODOs.
*
* @author Kohsuke Kawaguchi (kk@kohsuke.org)
*/
extern class TODO
{
	/**
	* When this method is called,
	* that means we need to check the spec and corrects
	* the behavior.
	*
	* Search the usage of this method.
	*/
	@:overload @:public @:static public static function checkSpec() : Void;
	
	@:overload @:public @:static public static function checkSpec(comment : String) : Void;
	
	/**
	* When this method iscalled,
	* that means the current code is a mock up and
	* it needs to be properly implemented later.
	*/
	@:overload @:public @:static public static function prototype() : Void;
	
	@:overload @:public @:static public static function prototype(comment : String) : Void;
	
	/**
	* When this method is called, it means that there is an
	* unimplemeted portion of the spec in the schema generator.
	*/
	@:overload @:public @:static public static function schemaGenerator(comment : String) : Void;
	
	
}
