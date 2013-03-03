package com.sun.servicetag;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**
* A service tag registry is a XML-based registry containing
* the list of {@link ServiceTag service tags} installed in the system.
* The {@code Registry} class provides interfaces
* to add, remove, update, and get a service tag from a service tag
* registry.
* This {@code Registry} class may not be supported
* on all systems. The {@link #isSupported} method
* can be called to determine if it is supported.
* <p>
* A registry may implement restrictions to only allow certain users
* to {@link #updateServiceTag update} and
* to {@link #removeServiceTag remove} a service tag record. Typically,
* only the owner of the service tag, the owner of the registry
* and superuser are authorized to update or remove a service tag in
* the registry.
*
* @see <a href="https://sn-tools.central.sun.com/twiki/bin/view/ServiceTags/ServiceTagDevGuideHelper">
* Service Tag User Guide</a>
*/
extern class Registry
{
	/**
	* Returns the system service tag registry. The {@code Registry} class
	* may not be supported on some platforms; use the {@link #isSupported}
	* method to determine if it is supported.
	*
	* @return the {@code Registry} object for the system service tag registry.
	*
	* @throws UnsupportedOperationException if the {@code Registry} class is
	* not supported.
	*/
	@:overload @:public @:static public static function getSystemRegistry() : com.sun.servicetag.Registry;
	
	/**
	* Returns {@code true} if the {@code Registry} class is supported on this system.
	*
	* @return {@code true} if the {@code Registry} class is supported;
	* otherwise, return {@code false}.
	*/
	@:overload @:public @:static @:synchronized public static function isSupported() : Bool;
	
	/**
	* Adds a service tag to this registry.
	* If the given service tag has an empty <tt>instance_urn</tt>,
	* this helper class will generate a URN and place it in the
	* copy of the service tag in this registry.
	* This method will return the {@code ServiceTag} representing
	* the service tag entry to this registry.
	*
	* @param st {@code ServiceTag} object
	* @return a {@code ServiceTag} object representing the service tag
	*         entry to this registry.
	*
	* @throws IllegalArgumentException if a service tag of the same
	* <tt>instance_urn</tt> already exists in this registry.
	*
	* @throws java.io.IOException if an I/O error occurs in this operation.
	*/
	@:overload @:public public function addServiceTag(st : com.sun.servicetag.ServiceTag) : com.sun.servicetag.ServiceTag;
	
	/**
	* Removes a service tag of the given <tt>instance_urn</tt> from this
	* registry.
	*
	* @param instanceURN the <tt>instance_urn</tt> of the service tag
	*        to be removed.
	*
	* @return the {@code ServiceTag} object removed from this registry;
	* or {@code null} if the service tag does not exist in this registry.
	*
	* @throws UnauthorizedAccessException if the user is not authorized to
	* remove the service tag of the given <tt>instance_urn</tt>
	* from this registry.
	*
	* @throws java.io.IOException if an I/O error occurs in this operation.
	*/
	@:overload @:public public function removeServiceTag(instanceURN : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Updates the <tt>product_defined_instance_id</tt> in the service tag
	* of the specified <tt>instance_urn</tt> in this registry.
	*
	* @param instanceURN the <tt>instance_urn</tt> of the service tag to be updated.
	* @param productDefinedInstanceID the value of the
	* <tt>product_defined_instance_id</tt> to be set.
	*
	* @return the updated {@code ServiceTag} object;
	* or {@code null} if the service tag does not exist in this
	* registry.
	*
	* @throws UnauthorizedAccessException if the user is not authorized to
	* update the service tag from this registry.
	*
	* @throws IOException if an I/O error occurs in this operation.
	*/
	@:overload @:public public function updateServiceTag(instanceURN : String, productDefinedInstanceID : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Returns a {@code ServiceTag} object of the given  <tt>instance_urn</tt>
	* in this registry.
	*
	* @param instanceURN the  <tt>instance_urn</tt> of the service tag
	* @return a {@code ServiceTag} object of the given <tt>instance_urn</tt>
	* in this registry; or {@code null} if not found.
	*
	* @throws java.io.IOException if an I/O error occurs in this operation.
	*/
	@:overload @:public public function getServiceTag(instanceURN : String) : com.sun.servicetag.ServiceTag;
	
	/**
	* Returns the service tags of the specified
	* <tt>product_urn</tt> in this registry.
	*
	* @param productURN the  <tt>product_urn</tt> to look up
	* @return a {@code Set} of {@code ServiceTag} objects
	* of the specified <tt>product_urn</tt> in this registry.
	*
	* @throws java.io.IOException if an I/O error occurs in this operation.
	*/
	@:overload @:public public function findServiceTags(productURN : String) : java.util.Set<com.sun.servicetag.ServiceTag>;
	
	
}
