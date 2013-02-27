package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2002, Oracle and/or its affiliates. All rights reserved.
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
* All the Keywords that will be used in Logging Messages for CORBA need to
* be defined here. The LogKeywords will be useful for searching log messages
* based on the standard keywords, it is also useful to work with LogAnalyzing
* tools.
* We will try to standardize these keywords in JSR 117 Logging
*/
extern class LogKeywords
{
	/**
	** Keywords for Lifecycle Loggers.
	** _REVISIT_ After it is clearly defined in JSR 117
	**/
	public static var LIFECYCLE_CREATE(default, null) : String;
	
	public static var LIFECYCLE_INITIALIZE(default, null) : String;
	
	public static var LIFECYCLE_SHUTDOWN(default, null) : String;
	
	public static var LIFECYCLE_DESTROY(default, null) : String;
	
	public static var LIFECYCLE_CREATE_SUCCESS(default, null) : String;
	
	public static var LIFECYCLE_CREATE_FAILURE(default, null) : String;
	
	public static var LIFECYCLE_INITIALIZE_SUCCESS(default, null) : String;
	
	public static var LIFECYCLE_INITIALIZE_FAILURE(default, null) : String;
	
	public static var LIFECYCLE_SHUTDOWN_SUCCESS(default, null) : String;
	
	public static var LIFECYCLE_SHUTDOWN_FAILURE(default, null) : String;
	
	public static var LIFECYCLE_DESTROY_SUCCESS(default, null) : String;
	
	public static var LIFECYCLE_DESTROY_FAILURE(default, null) : String;
	
	/**
	** Keywords for Naming Read Loggers.
	**/
	public static var NAMING_RESOLVE(default, null) : String;
	
	public static var NAMING_LIST(default, null) : String;
	
	public static var NAMING_RESOLVE_SUCCESS(default, null) : String;
	
	public static var NAMING_RESOLVE_FAILURE(default, null) : String;
	
	public static var NAMING_LIST_SUCCESS(default, null) : String;
	
	public static var NAMING_LIST_FAILURE(default, null) : String;
	
	/**
	** Keywords for Naming Update Loggers.
	**/
	public static var NAMING_BIND(default, null) : String;
	
	public static var NAMING_UNBIND(default, null) : String;
	
	public static var NAMING_REBIND(default, null) : String;
	
	public static var NAMING_BIND_SUCCESS(default, null) : String;
	
	public static var NAMING_BIND_FAILURE(default, null) : String;
	
	public static var NAMING_UNBIND_SUCCESS(default, null) : String;
	
	public static var NAMING_UNBIND_FAILURE(default, null) : String;
	
	public static var NAMING_REBIND_SUCCESS(default, null) : String;
	
	public static var NAMING_REBIND_FAILURE(default, null) : String;
	
	
}
