package com.sun.jmx.remote.security;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanServerFileAccessController extends com.sun.jmx.remote.security.MBeanServerAccessController
{
	/**
	* <p>Create a new MBeanServerAccessController that forwards all the
	* MBeanServer requests to the MBeanServer set by invoking the {@link
	* #setMBeanServer} method after doing access checks based on read and
	* write permissions.</p>
	*
	* <p>This instance is initialized from the specified properties file.</p>
	*
	* @param accessFileName name of the file which denotes a properties
	* file on disk containing the username/access level entries.
	*
	* @exception IOException if the file does not exist, is a
	* directory rather than a regular file, or for some other
	* reason cannot be opened for reading.
	*
	* @exception IllegalArgumentException if any of the supplied access
	* level values differs from "readonly" or "readwrite".
	*/
	@:overload @:public public function new(accessFileName : String) : Void;
	
	/**
	* <p>Create a new MBeanServerAccessController that forwards all the
	* MBeanServer requests to <code>mbs</code> after doing access checks
	* based on read and write permissions.</p>
	*
	* <p>This instance is initialized from the specified properties file.</p>
	*
	* @param accessFileName name of the file which denotes a properties
	* file on disk containing the username/access level entries.
	*
	* @param mbs the MBeanServer object to which requests will be forwarded.
	*
	* @exception IOException if the file does not exist, is a
	* directory rather than a regular file, or for some other
	* reason cannot be opened for reading.
	*
	* @exception IllegalArgumentException if any of the supplied access
	* level values differs from "readonly" or "readwrite".
	*/
	@:overload @:public public function new(accessFileName : String, mbs : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Create a new MBeanServerAccessController that forwards all the
	* MBeanServer requests to the MBeanServer set by invoking the {@link
	* #setMBeanServer} method after doing access checks based on read and
	* write permissions.</p>
	*
	* <p>This instance is initialized from the specified properties
	* instance.  This constructor makes a copy of the properties
	* instance and it is the copy that is consulted to check the
	* username and access level of an incoming connection. The
	* original properties object can be modified without affecting
	* the copy. If the {@link #refresh} method is then called, the
	* <code>MBeanServerFileAccessController</code> will make a new
	* copy of the properties object at that time.</p>
	*
	* @param accessFileProps properties list containing the username/access
	* level entries.
	*
	* @exception IllegalArgumentException if <code>accessFileProps</code> is
	* <code>null</code> or if any of the supplied access level values differs
	* from "readonly" or "readwrite".
	*/
	@:overload @:public public function new(accessFileProps : java.util.Properties) : Void;
	
	/**
	* <p>Create a new MBeanServerAccessController that forwards all the
	* MBeanServer requests to the MBeanServer set by invoking the {@link
	* #setMBeanServer} method after doing access checks based on read and
	* write permissions.</p>
	*
	* <p>This instance is initialized from the specified properties
	* instance.  This constructor makes a copy of the properties
	* instance and it is the copy that is consulted to check the
	* username and access level of an incoming connection. The
	* original properties object can be modified without affecting
	* the copy. If the {@link #refresh} method is then called, the
	* <code>MBeanServerFileAccessController</code> will make a new
	* copy of the properties object at that time.</p>
	*
	* @param accessFileProps properties list containing the username/access
	* level entries.
	*
	* @param mbs the MBeanServer object to which requests will be forwarded.
	*
	* @exception IllegalArgumentException if <code>accessFileProps</code> is
	* <code>null</code> or if any of the supplied access level values differs
	* from "readonly" or "readwrite".
	*/
	@:overload @:public public function new(accessFileProps : java.util.Properties, mbs : javax.management.MBeanServer) : Void;
	
	/**
	* Check if the caller can do read operations. This method does
	* nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:public override public function checkRead() : Void;
	
	/**
	* Check if the caller can do write operations.  This method does
	* nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:public override public function checkWrite() : Void;
	
	/**
	* Check if the caller can create MBeans or instances of the given class.
	* This method does nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:public override public function checkCreate(className : String) : Void;
	
	/**
	* Check if the caller can do unregister operations.  This method does
	* nothing if so, otherwise throws SecurityException.
	*/
	@:overload @:public override public function checkUnregister(name : javax.management.ObjectName) : Void;
	
	/**
	* <p>Refresh the set of username/access level entries.</p>
	*
	* <p>If this instance was created using the
	* {@link #MBeanServerFileAccessController(String)} or
	* {@link #MBeanServerFileAccessController(String,MBeanServer)}
	* constructors to specify a file from which the entries are read,
	* the file is re-read.</p>
	*
	* <p>If this instance was created using the
	* {@link #MBeanServerFileAccessController(Properties)} or
	* {@link #MBeanServerFileAccessController(Properties,MBeanServer)}
	* constructors then a new copy of the <code>Properties</code> object
	* is made.</p>
	*
	* @exception IOException if the file does not exist, is a
	* directory rather than a regular file, or for some other
	* reason cannot be opened for reading.
	*
	* @exception IllegalArgumentException if any of the supplied access
	* level values differs from "readonly" or "readwrite".
	*/
	@:overload @:public @:synchronized public function refresh() : Void;
	
	
}
@:native('com$sun$jmx$remote$security$MBeanServerFileAccessController$AccessType') privateextern enum MBeanServerFileAccessController_AccessType
{
	READ;
	WRITE;
	CREATE;
	UNREGISTER;
	
}

@:native('com$sun$jmx$remote$security$MBeanServerFileAccessController$Access') @:internal extern class MBeanServerFileAccessController_Access
{
	
}
@:native('com$sun$jmx$remote$security$MBeanServerFileAccessController$Parser') @:internal extern class MBeanServerFileAccessController_Parser
{
	
}
