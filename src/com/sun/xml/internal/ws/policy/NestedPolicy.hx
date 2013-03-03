package com.sun.xml.internal.ws.policy;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class NestedPolicy extends com.sun.xml.internal.ws.policy.Policy
{
	/**
	* Returns the AssertionSet instance representing a single policy alterantive held wihtin this nested policy object.
	* If the nested policy represents a policy with no alternatives (i.e. nothing is allowed) the method returns {@code null}.
	*
	* @return nested policy alternative represented by AssertionSet object. May return {@code null} in case the nested policy
	* represents 'nothing allowed' policy.
	*/
	@:overload @:public public function getAssertionSet() : com.sun.xml.internal.ws.policy.AssertionSet;
	
	/**
	* An {@code Object.equals(Object obj)} method override.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
