package sun.security.action;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A convenience class for retrieving the string value of a system
* property as a privileged action.
*
* <p>An instance of this class can be used as the argument of
* <code>AccessController.doPrivileged</code>.
*
* <p>The following code retrieves the value of the system
* property named <code>"prop"</code> as a privileged action: <p>
*
* <pre>
* String s = java.security.AccessController.doPrivileged
*                      (new GetPropertyAction("prop"));
* </pre>
*
* @author Roland Schemers
* @see java.security.PrivilegedAction
* @see java.security.AccessController
* @since 1.2
*/
@:require(java2) extern class GetPropertyAction implements java.security.PrivilegedAction<String>
{
	/**
	* Constructor that takes the name of the system property whose
	* string value needs to be determined.
	*
	* @param theProp the name of the system property.
	*/
	@:overload public function new(theProp : String) : Void;
	
	/**
	* Constructor that takes the name of the system property and the default
	* value of that property.
	*
	* @param theProp the name of the system property.
	* @param defaulVal the default value.
	*/
	@:overload public function new(theProp : String, defaultVal : String) : Void;
	
	/**
	* Determines the string value of the system property whose
	* name was specified in the constructor.
	*
	* @return the string value of the system property,
	*         or the default value if there is no property with that key.
	*/
	@:overload public function run() : String;
	
	
}
