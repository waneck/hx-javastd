package com.sun.tools.internal.jxc;
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
extern class SchemaGenerator
{
	/**
	* Runs the schema generator.
	*/
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload public static function run(args : java.NativeArray<String>) : Int;
	
	/**
	* Runs the schema generator.
	*
	* @param classLoader
	*      the schema generator will run in this classLoader.
	*      It needs to be able to load APT and JAXB RI classes. Note that
	*      JAXB RI classes refer to APT classes. Must not be null.
	*
	* @return
	*      exit code. 0 if success.
	*
	*/
	@:overload public static function run(args : java.NativeArray<String>, classLoader : java.lang.ClassLoader) : Int;
	
	
}
@:native('com$sun$tools$internal$jxc$SchemaGenerator$Runner') extern class SchemaGenerator_Runner
{
	@:overload public static function main(args : java.NativeArray<String>, episode : java.io.File) : Int;
	
	
}
