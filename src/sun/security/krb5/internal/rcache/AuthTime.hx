package sun.security.krb5.internal.rcache;
/*
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
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class AuthTime
{
	/**
	* Constructs a new <code>AuthTime</code>.
	* @param time time from the <code>Authenticator</code>.
	* @param cusec microsecond field from the <code>Authenticator</code>.
	*/
	@:overload @:public public function new(time : haxe.Int64, c : Int) : Void;
	
	/**
	* Compares if an object equals to an <code>AuthTime</code> object.
	* @param o an object.
	* @return true if two objects are equivalent, otherwise, return false.
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this <code>AuthTime</code> object.
	*
	* @return  a <code>hash code</code> value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
