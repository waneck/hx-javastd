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
extern class RepIdDelegator implements com.sun.corba.se.impl.orbutil.RepositoryIdStrings implements com.sun.corba.se.impl.orbutil.RepositoryIdUtility implements com.sun.corba.se.impl.orbutil.RepositoryIdInterface
{
	/**
	* Delegates to the current RepositoryId implementation in
	* com.sun.corba.se.impl.util.  This is necessary to
	* overcome the fact that many of RepositoryId's methods
	* are static.
	*/
	@:overload @:public public function createForAnyType(type : Class<Dynamic>) : String;
	
	@:overload @:public public function createForJavaType(ser : java.io.Serializable) : String;
	
	@:overload @:public public function createForJavaType(clz : Class<Dynamic>) : String;
	
	@:overload @:public public function createSequenceRepID(ser : Dynamic) : String;
	
	@:overload @:public public function createSequenceRepID(clazz : Class<Dynamic>) : String;
	
	@:overload @:public public function getFromString(repIdString : String) : com.sun.corba.se.impl.orbutil.RepositoryIdInterface;
	
	@:overload @:public public function isChunkedEncoding(valueTag : Int) : Bool;
	
	@:overload @:public public function isCodeBasePresent(valueTag : Int) : Bool;
	
	@:overload @:public public function getClassDescValueRepId() : String;
	
	@:overload @:public public function getWStringValueRepId() : String;
	
	@:overload @:public public function getTypeInfo(valueTag : Int) : Int;
	
	@:overload @:public public function getStandardRMIChunkedNoRepStrId() : Int;
	
	@:overload @:public public function getCodeBaseRMIChunkedNoRepStrId() : Int;
	
	@:overload @:public public function getStandardRMIChunkedId() : Int;
	
	@:overload @:public public function getCodeBaseRMIChunkedId() : Int;
	
	@:overload @:public public function getStandardRMIUnchunkedId() : Int;
	
	@:overload @:public public function getCodeBaseRMIUnchunkedId() : Int;
	
	@:overload @:public public function getStandardRMIUnchunkedNoRepStrId() : Int;
	
	@:overload @:public public function getCodeBaseRMIUnchunkedNoRepStrId() : Int;
	
	@:overload @:public public function getClassFromType() : Class<Dynamic>;
	
	@:overload @:public public function getClassFromType(codebaseURL : String) : Class<Dynamic>;
	
	@:overload @:public public function getClassFromType(expectedType : Class<Dynamic>, codebaseURL : String) : Class<Dynamic>;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
