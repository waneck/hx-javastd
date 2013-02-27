package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* COMPONENT_NAME: idl.toJava
*
* ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997, 1999
* RMI-IIOP v1.0
*
*/
//// NOTES:
//// -D62023<klr> Add corbaLevel=2.4
/**
*
**/
extern class Factories extends com.sun.tools.corba.se.idl.Factories
{
	@:overload override public function genFactory() : com.sun.tools.corba.se.idl.GenFactory;
	
	@:overload override public function arguments() : com.sun.tools.corba.se.idl.Arguments;
	
	@:overload override public function languageKeywords() : java.NativeArray<String>;
	
	@:overload public function helper() : com.sun.tools.corba.se.idl.toJavaPortable.Helper;
	
	@:overload public function valueFactory() : com.sun.tools.corba.se.idl.toJavaPortable.ValueFactory;
	
	@:overload public function defaultFactory() : com.sun.tools.corba.se.idl.toJavaPortable.DefaultFactory;
	
	@:overload public function holder() : com.sun.tools.corba.se.idl.toJavaPortable.Holder;
	
	@:overload public function skeleton() : com.sun.tools.corba.se.idl.toJavaPortable.Skeleton;
	
	@:overload public function stub() : com.sun.tools.corba.se.idl.toJavaPortable.Stub;
	
	
}