package java.security;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SecurityPermission extends java.security.BasicPermission
{
	/**
	* Creates a new SecurityPermission with the specified name.
	* The name is the symbolic name of the SecurityPermission. An asterisk
	* may appear at the end of the name, following a ".", or by itself, to
	* signify a wildcard match.
	*
	* @param name the name of the SecurityPermission
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a new SecurityPermission object with the specified name.
	* The name is the symbolic name of the SecurityPermission, and the
	* actions String is currently unused and should be null.
	*
	* @param name the name of the SecurityPermission
	* @param actions should be null.
	*
	* @throws NullPointerException if <code>name</code> is <code>null</code>.
	* @throws IllegalArgumentException if <code>name</code> is empty.
	*/
	@:overload @:public public function new(name : String, actions : String) : Void;
	
	
}
