package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class Repository
{
	/**
	* Construct a new repository with the given default domain.
	*/
	@:overload public function new(domain : String) : Void;
	
	/**
	* Construct a new repository with the given default domain.
	*/
	@:overload public function new(domain : String, fairLock : Bool) : Void;
	
	/**
	* Returns the list of domains in which any MBean is currently
	* registered.
	*
	*/
	@:overload public function getDomains() : java.NativeArray<String>;
	
	/**
	* Stores an MBean associated with its object name in the repository.
	*
	* @param object  MBean to be stored in the repository.
	* @param name    MBean object name.
	* @param context A registration context. If non null, the repository
	*                will call {@link RegistrationContext#registering()
	*                context.registering()} from within the repository
	*                lock, when it has determined that the {@code object}
	*                can be stored in the repository with that {@code name}.
	*                If {@link RegistrationContext#registering()
	*                context.registering()} throws an exception, the
	*                operation is abandonned, the MBean is not added to the
	*                repository, and a {@link RuntimeOperationsException}
	*                is thrown.
	*/
	@:overload public function addMBean(object : javax.management.DynamicMBean, name : javax.management.ObjectName, context : Repository_RegistrationContext) : Void;
	
	/**
	* Checks whether an MBean of the name specified is already stored in
	* the repository.
	*
	* @param name name of the MBean to find.
	*
	* @return  true if the MBean is stored in the repository,
	*          false otherwise.
	*/
	@:overload public function contains(name : javax.management.ObjectName) : Bool;
	
	/**
	* Retrieves the MBean of the name specified from the repository. The
	* object name must match exactly.
	*
	* @param name name of the MBean to retrieve.
	*
	* @return  The retrieved MBean if it is contained in the repository,
	*          null otherwise.
	*/
	@:overload public function retrieve(name : javax.management.ObjectName) : javax.management.DynamicMBean;
	
	/**
	* Selects and retrieves the list of MBeans whose names match the specified
	* object name pattern and which match the specified query expression
	* (optionally).
	*
	* @param pattern The name of the MBean(s) to retrieve - may be a specific
	* object or a name pattern allowing multiple MBeans to be selected.
	* @param query query expression to apply when selecting objects - this
	* parameter will be ignored when the Repository Service does not
	* support filtering.
	*
	* @return  The list of MBeans selected. There may be zero, one or many
	*          MBeans returned in the set.
	*/
	@:overload public function query(pattern : javax.management.ObjectName, query : javax.management.QueryExp) : java.util.Set<com.sun.jmx.mbeanserver.NamedObject>;
	
	/**
	* Removes an MBean from the repository.
	*
	* @param name name of the MBean to remove.
	* @param context A registration context. If non null, the repository
	*                will call {@link RegistrationContext#unregistered()
	*                context.unregistered()} from within the repository
	*                lock, just after the mbean associated with
	*                {@code name} is removed from the repository.
	*                If {@link RegistrationContext#unregistered()
	*                context.unregistered()} is not expected to throw any
	*                exception. If it does, the exception is logged
	*                and swallowed.
	*
	* @exception InstanceNotFoundException The MBean does not exist in
	*            the repository.
	*/
	@:overload public function remove(name : javax.management.ObjectName, context : Repository_RegistrationContext) : Void;
	
	/**
	* Gets the number of MBeans stored in the repository.
	*
	* @return  Number of MBeans.
	*/
	@:overload public function getCount() : Null<Int>;
	
	/**
	* Gets the name of the domain currently used by default in the
	* repository.
	*
	* @return  A string giving the name of the default domain name.
	*/
	@:overload public function getDefaultDomain() : String;
	
	
}
/**
* An interface that allows the caller to get some control
* over the registration.
* @see #addMBean
* @see #remove
*/
@:native('com$sun$jmx$mbeanserver$Repository$RegistrationContext') extern interface Repository_RegistrationContext
{
	/**
	* Called by {@link #addMBean}.
	* Can throw a RuntimeOperationsException to cancel the
	* registration.
	*/
	@:overload public function registering() : Void;
	
	/**
	* Called by {@link #remove}.
	* Any exception thrown by this method will be ignored.
	*/
	@:overload public function unregistered() : Void;
	
	
}
/* This class is used to match an ObjectName against a pattern. */
@:native('com$sun$jmx$mbeanserver$Repository$ObjectNamePattern') @:internal extern class Repository_ObjectNamePattern
{
	/**
	* The ObjectName pattern against which ObjectNames are matched.
	**/
	public var pattern(default, null) : javax.management.ObjectName;
	
	/**
	* Builds a new ObjectNamePattern object from an ObjectName pattern.
	* @param pattern The ObjectName pattern under examination.
	**/
	@:overload public function new(pattern : javax.management.ObjectName) : Void;
	
	/**
	* Return true if the given ObjectName matches the ObjectName pattern
	* for which this object has been built.
	* WARNING: domain name is not considered here because it is supposed
	*          not to be wildcard when called. PropertyList is also
	*          supposed not to be zero-length.
	* @param name The ObjectName we want to match against the pattern.
	* @return true if <code>name</code> matches the pattern.
	**/
	@:overload public function matchKeys(name : javax.management.ObjectName) : Bool;
	
	
}
