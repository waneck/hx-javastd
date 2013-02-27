package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Policies
{
	public static var defaultPolicies(default, null) : Policies;
	
	public static var rootPOAPolicies(default, null) : Policies;
	
	@:overload public function toString() : String;
	
	@:overload public function get_effective_policy(type : Int) : org.omg.CORBA.Policy;
	
	/* Thread Policies */
	@:overload @:final public function isOrbControlledThreads() : Bool;
	
	@:overload @:final public function isSingleThreaded() : Bool;
	
	/* Lifespan */
	@:overload @:final public function isTransient() : Bool;
	
	@:overload @:final public function isPersistent() : Bool;
	
	/* ID Uniqueness */
	@:overload @:final public function isUniqueIds() : Bool;
	
	@:overload @:final public function isMultipleIds() : Bool;
	
	/* ID Assignment */
	@:overload @:final public function isUserAssignedIds() : Bool;
	
	@:overload @:final public function isSystemAssignedIds() : Bool;
	
	/* Servant Rentention */
	@:overload @:final public function retainServants() : Bool;
	
	/* Request Processing */
	@:overload @:final public function useActiveMapOnly() : Bool;
	
	@:overload @:final public function useDefaultServant() : Bool;
	
	@:overload @:final public function useServantManager() : Bool;
	
	/* Implicit Activation */
	@:overload @:final public function isImplicitlyActivated() : Bool;
	
	/* proprietary servant caching policy */
	@:overload @:final public function servantCachingLevel() : Int;
	
	@:overload @:final public function forceZeroPort() : Bool;
	
	@:overload @:final public function getCopierId() : Int;
	
	
}
