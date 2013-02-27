package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface RepositoryIdUtility
{
	/**
	* Utility methods for working with repository IDs.
	*/
	@:overload public function isChunkedEncoding(valueTag : Int) : Bool;
	
	@:overload public function isCodeBasePresent(valueTag : Int) : Bool;
	
	public var NO_TYPE_INFO : Int;
	
	public var SINGLE_REP_TYPE_INFO : Int;
	
	public var PARTIAL_LIST_TYPE_INFO : Int;
	
	@:overload public function getTypeInfo(valueTag : Int) : Int;
	
	@:overload public function getStandardRMIChunkedNoRepStrId() : Int;
	
	@:overload public function getCodeBaseRMIChunkedNoRepStrId() : Int;
	
	@:overload public function getStandardRMIChunkedId() : Int;
	
	@:overload public function getCodeBaseRMIChunkedId() : Int;
	
	@:overload public function getStandardRMIUnchunkedId() : Int;
	
	@:overload public function getCodeBaseRMIUnchunkedId() : Int;
	
	@:overload public function getStandardRMIUnchunkedNoRepStrId() : Int;
	
	@:overload public function getCodeBaseRMIUnchunkedNoRepStrId() : Int;
	
	
}
