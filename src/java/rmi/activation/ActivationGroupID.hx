package java.rmi.activation;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivationGroupID implements java.io.Serializable
{
	/**
	* Constructs a unique group id.
	*
	* @param system the group's activation system
	* @since 1.2
	*/
	@:require(java2) @:overload public function new(system : java.rmi.activation.ActivationSystem) : Void;
	
	/**
	* Returns the group's activation system.
	* @return the group's activation system
	* @since 1.2
	*/
	@:require(java2) @:overload public function getSystem() : java.rmi.activation.ActivationSystem;
	
	/**
	* Returns a hashcode for the group's identifier.  Two group
	* identifiers that refer to the same remote group will have the
	* same hash code.
	*
	* @see java.util.Hashtable
	* @since 1.2
	*/
	@:require(java2) @:overload public function hashCode() : Int;
	
	/**
	* Compares two group identifiers for content equality.
	* Returns true if both of the following conditions are true:
	* 1) the unique identifiers are equivalent (by content), and
	* 2) the activation system specified in each
	*    refers to the same remote object.
	*
	* @param   obj     the Object to compare with
	* @return  true if these Objects are equal; false otherwise.
	* @see             java.util.Hashtable
	* @since 1.2
	*/
	@:require(java2) @:overload public function equals(obj : Dynamic) : Bool;
	
	
}
