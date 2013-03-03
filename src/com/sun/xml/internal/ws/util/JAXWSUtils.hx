package com.sun.xml.internal.ws.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JAXWSUtils
{
	/**
	* @author Vivek Pandey
	*
	* Wrapper utility class to be used from the generated code or run time.
	*/
	@:overload @:public @:static public static function getUUID() : String;
	
	@:overload @:public @:static public static function getFileOrURLName(fileOrURL : String) : String;
	
	@:overload @:public @:static public static function getFileOrURL(fileOrURL : String) : java.net.URL;
	
	@:overload @:public @:static public static function absolutize(name : String) : String;
	
	/**
	* Checks if the system ID is absolute.
	*/
	@:overload @:public @:static public static function checkAbsoluteness(systemId : String) : Void;
	
	/*
	* To match, both QNames must have the same namespace and the local
	* part of the target must match the local part of the 'pattern'
	* QName, which may contain wildcard characters.
	*/
	@:overload @:public @:static public static function matchQNames(target : javax.xml.namespace.QName, pattern : javax.xml.namespace.QName) : Bool;
	
	
}
