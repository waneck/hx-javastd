package com.sun.tools.corba.se.idl.toJavaPortable;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class NameModifierImpl implements com.sun.tools.corba.se.idl.toJavaPortable.NameModifier
{
	@:overload public function new() : Void;
	
	@:overload public function new(prefix : String, suffix : String) : Void;
	
	/** Construct a NameModifier from a pattern of the form xxx%xxx.
	* The pattern must consist of characters chosen from the
	* set [A-Za-z0-9%$_]. In addition, the pattern must contain
	* exactly one % character.  Finally, if % is not the first char in
	* the pattern, the pattern must not start with a number.
	* <p>
	* The semantics of makeName are very simply: just replace the
	* % character with the base in the pattern and return the result.
	*/
	@:overload public function new(pattern : String) : Void;
	
	@:overload public function makeName(base : String) : String;
	
	
}
