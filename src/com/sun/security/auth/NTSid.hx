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
extern class NTSid implements java.security.Principal implements java.io.Serializable
{
	/**
	* Create an <code>NTSid</code> with a Windows NT SID.
	*
	* <p>
	*
	* @param stringSid the Windows NT SID. <p>
	*
	* @exception NullPointerException if the <code>String</code>
	*                  is <code>null</code>.
	*
	* @exception IllegalArgumentException if the <code>String</code>
	*                  has zero length.
	*/
	@:overload @:public public function new(stringSid : String) : Void;
	
	/**
	* Return a string version of this <code>NTSid</code>.
	*
	* <p>
	*
	* @return a string version of this <code>NTSid</code>
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return a string representation of this <code>NTSid</code>.
	*
	* <p>
	*
	* @return a string representation of this <code>NTSid</code>.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares the specified Object with this <code>NTSid</code>
	* for equality.  Returns true if the given object is also a
	* <code>NTSid</code> and the two NTSids have the same String
	* representation.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	*          <code>NTSid</code>.
	*
	* @return true if the specified Object is equal to this
	*          <code>NTSid</code>.
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Return a hash code for this <code>NTSid</code>.
	*
	* <p>
	*
	* @return a hash code for this <code>NTSid</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
