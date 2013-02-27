package com.sun.jndi.cosnaming;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class IiopUrl
{
	@:overload public function getAddresses() : java.util.Vector<Dynamic>;
	
	/**
	* Returns a possibly empty but non-null string that is the "string_name"
	* portion of the URL.
	*/
	@:overload public function getStringName() : String;
	
	@:overload public function getCosName() : javax.naming.Name;
	
	@:overload public function new(url : String) : Void;
	
	
}
@:native('com$sun$jndi$cosnaming$IiopUrl$Address') extern class IiopUrl_Address
{
	public var port : Int;
	
	public var major : Int;
	
	public var host : String;
	
	@:overload public function new(hostPortVers : String, oldFormat : Bool) : Void;
	
	
}
