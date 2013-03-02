package javax.smartcardio;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CardPermission extends java.security.Permission
{
	/**
	* Constructs a new CardPermission with the specified actions.
	* <code>terminalName</code> is the name of a CardTerminal or <code>*</code>
	* if this permission applies to all terminals. <code>actions</code>
	* contains a comma-separated list of the individual actions
	* or <code>*</code> to signify all actions. For more information,
	* see the documentation at the top of this {@linkplain CardPermission
	* class}.
	*
	* @param terminalName the name of the card terminal, or <code>*</code>
	* @param actions the action string (or null if the set of permitted
	*   actions is empty)
	*
	* @throws NullPointerException if terminalName is null
	* @throws IllegalArgumentException if actions is an invalid actions
	*   specification
	*/
	@:overload public function new(terminalName : String, actions : String) : Void;
	
	/**
	* Returns the canonical string representation of the actions.
	* It is <code>*</code> to signify all actions defined by this class or
	* the string concatenation of the comma-separated,
	* lexicographically sorted list of individual actions.
	*
	* @return the canonical string representation of the actions.
	*/
	@:overload override public function getActions() : String;
	
	/**
	* Checks if this CardPermission object implies the specified permission.
	* That is the case, if and only if
	* <ul>
	* <li><p><code>permission</code> is an instance of CardPermission,</p>
	* <li><p><code>permission</code>'s actions are a proper subset of this
	*   object's actions, and</p>
	* <li><p>this object's <code>getName()</code> method is either
	*   <code>*</code> or equal to <code>permission</code>'s <code>name</code>.
	*   </p>
	* </ul>
	*
	* @param permission the permission to check against
	* @return true if and only if this CardPermission object implies the
	*   specified permission.
	*/
	@:overload override public function implies(permission : java.security.Permission) : Bool;
	
	/**
	* Compares the specified object with this CardPermission for equality.
	* This CardPermission is equal to another Object <code>object</code>, if
	* and only if
	* <ul>
	* <li><p><code>object</code> is an instance of CardPermission,</p>
	* <li><p><code>this.getName()</code> is equal to
	* <code>((CardPermission)object).getName()</code>, and</p>
	* <li><p><code>this.getActions()</code> is equal to
	* <code>((CardPermission)object).getActions()</code>.</p>
	* </ul>
	*
	* @param obj the object to be compared for equality with this CardPermission
	* @return true if and only if the specified object is equal to this
	*   CardPermission
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this CardPermission object.
	*
	* @return the hash code value for this CardPermission object.
	*/
	@:overload override public function hashCode() : Int;
	
	
}
