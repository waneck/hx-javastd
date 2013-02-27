package com.sun.tools.attach;
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
extern class VirtualMachineDescriptor
{
	/**
	* Creates a virtual machine descriptor from the given components.
	*
	* @param   provider      The AttachProvider to attach to the Java virtual machine.
	* @param   id            The virtual machine identifier.
	* @param   displayName   The display name.
	*
	* @throws  NullPointerException
	*          If any of the arguments are <code>null</code>
	*/
	@:overload public function new(provider : com.sun.tools.attach.spi.AttachProvider, id : String, displayName : String) : Void;
	
	/**
	* Creates a virtual machine descriptor from the given components.
	*
	* <p> This convenience constructor works as if by invoking the
	* three-argument constructor as follows:
	*
	* <blockquote><tt>
	* new&nbsp;{@link #VirtualMachineDescriptor(AttachProvider, String, String)
	* VirtualMachineDescriptor}(provider, &nbsp;id, &nbsp;id);
	* </tt></blockquote>
	*
	* <p> That is, it creates a virtual machine descriptor such that
	* the <i>display name</i> is the same as the virtual machine
	* identifier.
	*
	* @param   provider      The AttachProvider to attach to the Java virtual machine.
	* @param   id            The virtual machine identifier.
	*
	* @throws  NullPointerException
	*          If <tt>provider</tt> or <tt>id</tt> is <tt>null</tt>.
	*/
	@:overload public function new(provider : com.sun.tools.attach.spi.AttachProvider, id : String) : Void;
	
	/**
	* Return the <code>AttachProvider</code> that this descriptor references.
	*
	* @return The <code>AttachProvider</code> that this descriptor references.
	*/
	@:overload public function provider() : com.sun.tools.attach.spi.AttachProvider;
	
	/**
	* Return the identifier component of this descriptor.
	*
	* @return  The identifier component of this descriptor.
	*/
	@:overload public function id() : String;
	
	/**
	* Return the <i>display name</i> component of this descriptor.
	*
	* @return  The display name component of this descriptor.
	*/
	@:overload public function displayName() : String;
	
	/**
	* Returns a hash-code value for this VirtualMachineDescriptor. The hash
	* code is based upon the descriptor's components, and satifies
	* the general contract of the {@link java.lang.Object#hashCode()
	* Object.hashCode} method.
	*
	* @return  A hash-code value for this descriptor.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Tests this VirtualMachineDescriptor for equality with another object.
	*
	* <p> If the given object is not a VirtualMachineDescriptor then this
	* method returns <tt>false</tt>. For two VirtualMachineDescriptors to
	* be considered equal requires that they both reference the same
	* provider, and their {@link #id() identifiers} are equal. </p>
	*
	* <p> This method satisfies the general contract of the {@link
	* java.lang.Object#equals(Object) Object.equals} method. </p>
	*
	* @param   ob   The object to which this object is to be compared
	*
	* @return  <tt>true</tt> if, and only if, the given object is
	*                a VirtualMachineDescriptor that is equal to this
	*                VirtualMachineDescriptor.
	*/
	@:overload public function equals(ob : Dynamic) : Bool;
	
	/**
	* Returns the string representation of the <code>VirtualMachineDescriptor</code>.
	*/
	@:overload public function toString() : String;
	
	
}
