package org.omg.CORBA;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
* The Helper for <tt>ServiceDetail</tt>.  For more information on
* Helper files, see <a href="doc-files/generatedfiles.html#helper">
* "Generated Files: Helper Files"</a>.<P>
*/
extern class ServiceDetailHelper
{
	@:overload public static function write(out : org.omg.CORBA.portable.OutputStream, that : org.omg.CORBA.ServiceDetail) : Void;
	
	@:overload public static function read(_in : org.omg.CORBA.portable.InputStream) : org.omg.CORBA.ServiceDetail;
	
	@:overload public static function extract(a : org.omg.CORBA.Any) : org.omg.CORBA.ServiceDetail;
	
	@:overload public static function insert(a : org.omg.CORBA.Any, that : org.omg.CORBA.ServiceDetail) : Void;
	
	@:overload @:synchronized public static function type() : org.omg.CORBA.TypeCode;
	
	@:overload public static function id() : String;
	
	
}