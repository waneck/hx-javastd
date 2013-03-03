package com.sun.jndi.cosnaming;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Implements the JNDI NamingEnumeration interface for COS
* Naming. Gets hold of a list of bindings from the COS Naming Server
* and allows the client to iterate through them.
*
* @author Raj Krishnamurthy
* @author Rosanna Lee
*/
@:internal extern class CNBindingEnumeration implements javax.naming.NamingEnumeration<Dynamic>
{
	/**
	* Returns the next binding in the list.
	* @exception NamingException any naming exception.
	*/
	@:overload @:public public function next() : Dynamic;
	
	/**
	* Returns true or false depending on whether there are more bindings.
	* @return boolean value
	*/
	@:overload @:public public function hasMore() : Bool;
	
	/**
	* Returns true or false depending on whether there are more bindings.
	* Need to define this to satisfy the Enumeration api requirement.
	* @return boolean value
	*/
	@:overload @:public public function hasMoreElements() : Bool;
	
	/**
	* Returns the next binding in the list.
	* @exception NoSuchElementException Thrown when the end of the
	* list is reached.
	*/
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:protected private function finalize() : Void;
	
	
}
