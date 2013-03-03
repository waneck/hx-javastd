package sun.awt;
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
@:internal extern class DebugSettings
{
	@:overload @:public public function toString() : String;
	
	/**
	* Gets named boolean property
	* @param key       Name of property
	* @param defval    Default value if property does not exist
	* @return boolean value of the named property
	*/
	@:overload @:public @:synchronized public function getBoolean(key : String, defval : Bool) : Bool;
	
	/**
	* Gets named integer property
	* @param key       Name of property
	* @param defval    Default value if property does not exist
	* @return integer value of the named property
	*/
	@:overload @:public @:synchronized public function getInt(key : String, defval : Int) : Int;
	
	/**
	* Gets named String property
	* @param key       Name of property
	* @param defval    Default value if property does not exist
	* @return string value of the named property
	*/
	@:overload @:public @:synchronized public function getString(key : String, defval : String) : String;
	
	@:overload @:public @:synchronized public function getPropertyNames() : java.util.Enumeration<Dynamic>;
	
	
}
