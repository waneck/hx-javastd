package com.sun.xml.internal.stream;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class StaxErrorReporter extends com.sun.org.apache.xerces.internal.impl.XMLErrorReporter
{
	/**
	*
	* @author  neeraj
	*/
	private var fXMLReporter : javax.xml.stream.XMLReporter;
	
	/** Creates a new instance of StaxErrorReporter */
	@:overload public function new(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/** Creates a new instance of StaxErrorReporter
	* If this constructor is used to create the object, one must invoke reset() on this object.
	*/
	@:overload public function new() : Void;
	
	/**
	*One must call reset before using any of the function.
	*/
	@:overload public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Reports an error at a specific location.
	*
	* @param location  The error location.
	* @param domain    The error domain.
	* @param key       The key of the error message.
	* @param arguments The replacement arguments for the error message,
	*                  if needed.
	* @param severity  The severity of the error.
	*
	* @see #SEVERITY_WARNING
	* @see #SEVERITY_ERROR
	* @see #SEVERITY_FATAL_ERROR
	*/
	@:overload override public function reportError(location : com.sun.org.apache.xerces.internal.xni.XMLLocator, domain : String, key : String, arguments : java.NativeArray<Dynamic>, severity : java.StdTypes.Int16) : String;
	
	
}
