package com.sun.corba.se.spi.servicecontext;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
*/
extern class MaxStreamFormatVersionServiceContext extends com.sun.corba.se.spi.servicecontext.ServiceContext
{
	public static var singleton(default, null) : MaxStreamFormatVersionServiceContext;
	
	@:overload public function new() : Void;
	
	@:overload public function new(maxStreamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload public function new(is : org.omg.CORBA_2_3.portable.InputStream, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	public static var SERVICE_CONTEXT_ID(default, null) : Int;
	
	@:overload override public function getId() : Int;
	
	@:overload override public function writeData(os : org.omg.CORBA_2_3.portable.OutputStream) : Void;
	
	@:overload public function getMaximumStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload override public function toString() : String;
	
	
}
