package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface VMModifiers
{
	public var PUBLIC : Int;
	
	/* visible to everyone */
	public var PRIVATE : Int;
	
	/* visible only to the defining class */
	public var PROTECTED : Int;
	
	/* visible to subclasses */
	public var STATIC : Int;
	
	/* instance variable is static */
	public var FINAL : Int;
	
	/* no further subclassing, overriding */
	public var SYNCHRONIZED : Int;
	
	/* wrap method call in monitor lock */
	public var VOLATILE : Int;
	
	/* can cache in registers */
	public var BRIDGE : Int;
	
	/* Bridge method generated by compiler */
	public var TRANSIENT : Int;
	
	/* not persistant */
	public var VARARGS : Int;
	
	/* Method accepts var. args*/
	public var NATIVE : Int;
	
	/* implemented in C */
	public var INTERFACE : Int;
	
	/* class is an interface */
	public var ABSTRACT : Int;
	
	/* no definition provided */
	public var ENUM_CONSTANT : Int;
	
	/* enum constant field*/
	public var SYNTHETIC : Int;
	
	
}
