package com.sun.tools.corba.se.logutil;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class Input
{
	/**
	* Parses the specified file to create a new {@link Input}
	* object.
	*
	* @param filename the file to parse.
	* @throws FileNotFoundException if the file can't be found.
	* @throws IOException if an I/O error occurs.
	*/
	@:overload public function new(filename : String) : Void;
	
	/**
	* Returns the name of this group of exceptions.
	*
	* @return the name of this group of exceptions.
	*/
	@:overload public function getGroupName() : String;
	
	/**
	* Returns the name of the package this class will go in.
	*
	* @return the name of the package.
	*/
	@:overload public function getPackageName() : String;
	
	/**
	* Returns the name of the generated class.
	*
	* @return the name of the class.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the exceptions contained in this class.
	*
	* @return the exceptions.
	*/
	@:overload public function getExceptions() : java.util.Queue<com.sun.tools.corba.se.logutil.InputException>;
	
	/**
	* Returns a textual representation of this input.
	*
	* @return a textual representation.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Represents the current state of parsing the input.
*/
@:native('com$sun$tools$corba$se$logutil$Input$State') privateextern enum Input_State
{
	OUTER;
	IN_CLASS;
	IN_EXCEPTION_LIST;
	
}

