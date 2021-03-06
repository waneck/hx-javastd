package javax.management.remote;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXPrincipal implements java.security.Principal implements java.io.Serializable
{
	/**
	* <p>Creates a JMXPrincipal for a given identity.</p>
	*
	* @param name the JMX Remote API name for this identity.
	*
	* @exception NullPointerException if the <code>name</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Returns the name of this principal.
	*
	* <p>
	*
	* @return the name of this <code>JMXPrincipal</code>.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns a string representation of this <code>JMXPrincipal</code>.
	*
	* <p>
	*
	* @return a string representation of this <code>JMXPrincipal</code>.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Compares the specified Object with this <code>JMXPrincipal</code>
	* for equality.  Returns true if the given object is also a
	* <code>JMXPrincipal</code> and the two JMXPrincipals
	* have the same name.
	*
	* <p>
	*
	* @param o Object to be compared for equality with this
	* <code>JMXPrincipal</code>.
	*
	* @return true if the specified Object is equal to this
	* <code>JMXPrincipal</code>.
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a hash code for this <code>JMXPrincipal</code>.
	*
	* <p>
	*
	* @return a hash code for this <code>JMXPrincipal</code>.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
