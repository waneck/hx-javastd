package com.sun.corba.se.impl.naming.cosnaming;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class InterOperableNamingImpl
{
	/**
	* Method which stringifies the Name Components given as the input
	* parameter.
	*
	* @param n Array of Name Components (Simple or Compound Names)
	* @return string which is the stringified reference.
	*/
	@:overload @:public public function convertToString(theNameComponents : java.NativeArray<org.omg.CosNaming.NameComponent>) : String;
	
	/**
	* Method which converts the Stringified name into Array of Name Components.
	*
	* @param string which is the stringified name.
	* @return  Array of Name Components (Simple or Compound Names)
	*/
	@:overload @:public public function convertToNameComponent(theStringifiedName : String) : java.NativeArray<org.omg.CosNaming.NameComponent>;
	
	/**
	* Method which converts the Stringified name  and Host Name Address into
	* a URL based Name
	*
	* @param address which is ip based host name
	* @param name which is the stringified name.
	* @return  url based Name.
	*/
	@:overload @:public public function createURLBasedAddress(address : String, name : String) : String;
	
	
}
