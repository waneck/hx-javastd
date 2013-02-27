package com.sun.tools.internal.ws.resources;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JavacompilerMessages
{
	@:overload public static function localizableJAVACOMPILER_CLASSPATH_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* {0} is not available in the classpath, requires Sun's JDK version 5.0 or latter.
	*
	*/
	@:overload public static function JAVACOMPILER_CLASSPATH_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableJAVACOMPILER_NOSUCHMETHOD_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* There is no such method {0} available, requires Sun's JDK version 5.0 or latter.
	*
	*/
	@:overload public static function JAVACOMPILER_NOSUCHMETHOD_ERROR(arg0 : Dynamic) : String;
	
	@:overload public static function localizableJAVACOMPILER_ERROR(arg0 : Dynamic) : com.sun.xml.internal.ws.util.localization.Localizable;
	
	/**
	* error : {0}.
	*
	*/
	@:overload public static function JAVACOMPILER_ERROR(arg0 : Dynamic) : String;
	
	
}
