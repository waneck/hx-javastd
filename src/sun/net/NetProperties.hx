package sun.net;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class NetProperties
{
	/**
	* Get a networking system property. If no system property was defined
	* returns the default value, if it exists, otherwise returns
	* <code>null</code>.
	* @param      key  the property name.
	* @throws  SecurityException  if a security manager exists and its
	*          <code>checkPropertiesAccess</code> method doesn't allow access
	*          to the system properties.
	* @return the <code>String</code> value for the property,
	*         or <code>null</code>
	*/
	@:overload public static function get(key : String) : String;
	
	/**
	* Get an Integer networking system property. If no system property was
	* defined returns the default value, if it exists, otherwise returns
	* <code>null</code>.
	* @param   key     the property name.
	* @param   defval  the default value to use if the property is not found
	* @throws  SecurityException  if a security manager exists and its
	*          <code>checkPropertiesAccess</code> method doesn't allow access
	*          to the system properties.
	* @return the <code>Integer</code> value for the property,
	*         or <code>null</code>
	*/
	@:overload public static function getInteger(key : String, defval : Int) : Null<Int>;
	
	/**
	* Get a Boolean networking system property. If no system property was
	* defined returns the default value, if it exists, otherwise returns
	* <code>null</code>.
	* @param   key     the property name.
	* @throws  SecurityException  if a security manager exists and its
	*          <code>checkPropertiesAccess</code> method doesn't allow access
	*          to the system properties.
	* @return the <code>Boolean</code> value for the property,
	*         or <code>null</code>
	*/
	@:overload public static function getBoolean(key : String) : Null<Bool>;
	
	
}
