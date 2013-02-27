package javax.naming.spi;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ResolveResult implements java.io.Serializable
{
	/**
	* Field containing the Object that was resolved to successfully.
	* It can be null only when constructed using a subclass.
	* Constructors should always initialize this.
	* @serial
	*/
	private var resolvedObj : Dynamic;
	
	/**
	* Field containing the remaining name yet to be resolved.
	* It can be null only when constructed using a subclass.
	* Constructors should always initialize this.
	* @serial
	*/
	private var remainingName : javax.naming.Name;
	
	/**
	* Constructs an instance of ResolveResult with the
	* resolved object and remaining name both initialized to null.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructs a new instance of ResolveResult consisting of
	* the resolved object and the remaining unresolved component.
	*
	* @param robj The non-null object resolved to.
	* @param rcomp The single remaining name component that has yet to be
	*                 resolved. Cannot be null (but can be empty).
	*/
	@:overload public function new(robj : Dynamic, rcomp : String) : Void;
	
	/**
	* Constructs a new instance of ResolveResult consisting of
	* the resolved Object and the remaining name.
	*
	* @param robj The non-null Object resolved to.
	* @param rname The non-null remaining name that has yet to be resolved.
	*/
	@:overload public function new(robj : Dynamic, rname : javax.naming.Name) : Void;
	
	/**
	* Retrieves the remaining unresolved portion of the name.
	*
	* @return The remaining unresolved portion of the name.
	*          Cannot be null but empty OK.
	* @see #appendRemainingName
	* @see #appendRemainingComponent
	* @see #setRemainingName
	*/
	@:overload public function getRemainingName() : javax.naming.Name;
	
	/**
	* Retrieves the Object to which resolution was successful.
	*
	* @return The Object to which resolution was successful. Cannot be null.
	* @see #setResolvedObj
	*/
	@:overload public function getResolvedObj() : Dynamic;
	
	/**
	* Sets the remaining name field of this result to name.
	* A copy of name is made so that modifying the copy within
	* this ResolveResult does not affect <code>name</code> and
	* vice versa.
	*
	* @param name The name to set remaining name to. Cannot be null.
	* @see #getRemainingName
	* @see #appendRemainingName
	* @see #appendRemainingComponent
	*/
	@:overload public function setRemainingName(name : javax.naming.Name) : Void;
	
	/**
	* Adds components to the end of remaining name.
	*
	* @param name The components to add. Can be null.
	* @see #getRemainingName
	* @see #setRemainingName
	* @see #appendRemainingComponent
	*/
	@:overload public function appendRemainingName(name : javax.naming.Name) : Void;
	
	/**
	* Adds a single component to the end of remaining name.
	*
	* @param name The component to add. Can be null.
	* @see #getRemainingName
	* @see #appendRemainingName
	*/
	@:overload public function appendRemainingComponent(name : String) : Void;
	
	/**
	* Sets the resolved Object field of this result to obj.
	*
	* @param obj The object to use for setting the resolved obj field.
	*            Cannot be null.
	* @see #getResolvedObj
	*/
	@:overload public function setResolvedObj(obj : Dynamic) : Void;
	
	
}
