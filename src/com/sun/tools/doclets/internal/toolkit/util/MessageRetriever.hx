package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class MessageRetriever
{
	/**
	* Initilize the ResourceBundle with the given resource.
	*
	* @param rb the esource bundle to read.
	*/
	@:overload public function new(rb : java.util.ResourceBundle) : Void;
	
	/**
	* Initilize the ResourceBundle with the given resource.
	*
	* @param configuration the configuration
	* @param resourcelocation Resource.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, resourcelocation : String) : Void;
	
	/**
	* Get and format message string from resource
	*
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	* @throws MissingResourceException when the key does not
	* exist in the properties file.
	*/
	@:overload public function getText(key : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Print error message, increment error count.
	*
	* @param pos the position of the source
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function error(pos : com.sun.javadoc.SourcePosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print error message, increment error count.
	*
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function error(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param pos the position of the source
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function warning(pos : com.sun.javadoc.SourcePosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print warning message, increment warning count.
	*
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function warning(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print a message.
	*
	* @param pos the position of the source
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function notice(pos : com.sun.javadoc.SourcePosition, key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Print a message.
	*
	* @param key selects message from resource
	* @param args arguments to be replaced in the message.
	*/
	@:overload public function notice(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}
