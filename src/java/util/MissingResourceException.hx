package java.util;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
/**
* Signals that a resource is missing.
* @see java.lang.Exception
* @see ResourceBundle
* @author      Mark Davis
* @since       JDK1.1
*/
@:require(java1) extern class MissingResourceException extends java.lang.RuntimeException
{
	/**
	* Constructs a MissingResourceException with the specified information.
	* A detail message is a String that describes this particular exception.
	* @param s the detail message
	* @param className the name of the resource class
	* @param key the key for the missing resource.
	*/
	@:overload public function new(s : String, className : String, key : String) : Void;
	
	/**
	* Gets parameter passed by constructor.
	*
	* @return the name of the resource class
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Gets parameter passed by constructor.
	*
	* @return the key for the missing resource
	*/
	@:overload public function getKey() : String;
	
	
}