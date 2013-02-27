package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class FVDCodeBaseImpl extends _CodeBaseImplBase
{
	@:overload public function get_ir() : com.sun.org.omg.CORBA.Repository;
	
	@:overload public function implementation(x : String) : String;
	
	@:overload public function implementations(x : java.NativeArray<String>) : java.NativeArray<String>;
	
	@:overload public function meta(x : String) : com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription;
	
	@:overload public function metas(x : java.NativeArray<String>) : java.NativeArray<com.sun.org.omg.CORBA.ValueDefPackage.FullValueDescription>;
	
	@:overload public function bases(x : String) : java.NativeArray<String>;
	
	
}