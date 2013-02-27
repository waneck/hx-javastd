package com.sun.security.auth;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class X500Principal implements java.security.Principal implements java.io.Serializable
{
	/**
	* Create a X500Principal with an X.500 Name,
	* such as "CN=Duke, OU=JavaSoft, O=Sun Microsystems, C=US"
	* (RFC 1779 style).
	*
	* <p>
	*
	* @param name the X.500 name
	*
	* @exception NullPointerException if the <code>name</code>
	*                  is <code>null</code>. <p>
	*
	* @exception IllegalArgumentException if the <code>name</code>
	*                  is improperly specified.
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Return the Unix username for this <code>X500Principal</code>.
	*
	* <p>
	*
	* @return the Unix username for this <code>X500Principal</code>
	*/
	@:overload public function getName() : String;
	
	/**
	* Return a string representation of this <code>X500Principal</code>.
	*
	* <p>
	*
	* @return a string representation of this <code>X500Principal</code>.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified Object with this <code>X500Principal</code>
	* for equality.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	*          <code>X500Principal</code>.
	*
	* @return true if the specified Object is equal equal to this
	*          <code>X500Principal</code>.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Return a hash code for this <code>X500Principal</code>.
	*
	* <p>
	*
	* @return a hash code for this <code>X500Principal</code>.
	*/
	@:overload public function hashCode() : Int;
	
	
}