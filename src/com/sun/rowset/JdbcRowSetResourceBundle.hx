package com.sun.rowset;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to help in localization of resources,
* especially the exception strings.
*
* @author Amit Handa
*/
extern class JdbcRowSetResourceBundle implements java.io.Serializable
{
	/**
	* This method is used to get a handle to the
	* initialized instance of this class. Note that
	* at any time there is only one instance of this
	* class initialized which will be returned.
	*
	* @throws IOException if unable to find the RowSetResourceBundle.properties
	*/
	@:overload public static function getJdbcRowSetResourceBundle() : JdbcRowSetResourceBundle;
	
	/**
	* This method returns an enumerated handle of the keys
	* which correspond to values translated to various locales.
	*
	* @return an enumeration of keys which have messages tranlated to
	* corresponding locales.
	*/
	@:overload public function getKeys() : java.util.Enumeration<Dynamic>;
	
	/**
	* This method takes the key as an argument and
	* returns the corresponding value reading it
	* from the Resource Bundle loaded earlier.
	*
	* @return value in locale specific language
	* according to the key passed.
	*/
	@:overload public function handleGetObject(key : String) : Dynamic;
	
	
}
