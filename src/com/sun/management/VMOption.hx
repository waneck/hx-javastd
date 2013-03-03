package com.sun.management;
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
extern class VMOption
{
	/**
	* Constructs a <tt>VMOption</tt>.
	*
	* @param name Name of a VM option.
	* @param value Value of a VM option.
	* @param writeable <tt>true</tt> if a VM option can be set dynamically,
	*                  or <tt>false</tt> otherwise.
	* @param origin where the value of a VM option came from.
	*
	* @throws NullPointerException if the name or value is <tt>null</tt>
	*/
	@:overload @:public public function new(name : String, value : String, writeable : Bool, origin : com.sun.management.VMOption.VMOption_Origin) : Void;
	
	/**
	* Returns the name of this VM option.
	*
	* @return the name of this VM option.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the value of this VM option at the time when
	* this <tt>VMOption</tt> was created. The value could have been changed.
	*
	* @return the value of the VM option at the time when
	*         this <tt>VMOption</tt> was created.
	*/
	@:overload @:public public function getValue() : String;
	
	/**
	* Returns the origin of the value of this VM option. That is,
	* where the value of this VM option came from.
	*
	* @return where the value of this VM option came from.
	*/
	@:overload @:public public function getOrigin() : com.sun.management.VMOption.VMOption_Origin;
	
	/**
	* Tests if this VM option is writeable.  If this VM option is writeable,
	* it can be set by the {@link HotSpotDiagnosticMXBean#setVMOption
	* HotSpotDiagnosticMXBean.setVMOption} method.
	*
	* @return <tt>true</tt> if this VM option is writeable; <tt>false</tt>
	* otherwise.
	*/
	@:overload @:public public function isWriteable() : Bool;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a <tt>VMOption</tt> object represented by the
	* given <tt>CompositeData</tt>. The given <tt>CompositeData</tt>
	* must contain the following attributes:
	* <p>
	* <blockquote>
	* <table border>
	* <tr>
	*   <th align=left>Attribute Name</th>
	*   <th align=left>Type</th>
	* </tr>
	* <tr>
	*   <td>name</td>
	*   <td><tt>java.lang.String</tt></td>
	* </tr>
	* <tr>
	*   <td>value</td>
	*   <td><tt>java.lang.String</tt></td>
	* </tr>
	* <tr>
	*   <td>origin</td>
	*   <td><tt>java.lang.String</tt></td>
	* </tr>
	* <tr>
	*   <td>writeable</td>
	*   <td><tt>java.lang.Boolean</tt></td>
	* </tr>
	* </table>
	* </blockquote>
	*
	* @param cd <tt>CompositeData</tt> representing a <tt>VMOption</tt>
	*
	* @throws IllegalArgumentException if <tt>cd</tt> does not
	*   represent a <tt>VMOption</tt> with the attributes described
	*   above.
	*
	* @return a <tt>VMOption</tt> object represented by <tt>cd</tt>
	*         if <tt>cd</tt> is not <tt>null</tt>;
	*         <tt>null</tt> otherwise.
	*/
	@:overload @:public @:static public static function from(cd : javax.management.openmbean.CompositeData) : com.sun.management.VMOption;
	
	
}
/**
* Origin of the value of a VM option.  It tells where the
* value of a VM option came from.
*
* @since 1.6
*/
@:require(java6) @:native('com$sun$management$VMOption$Origin') extern enum VMOption_Origin
{
	/**
	* The VM option has not been set and its value
	* is the default value.
	*/
	DEFAULT;
	/**
	* The VM option was set at VM creation time typically
	* as a command line argument to the launcher or
	* an argument passed to the VM created using the
	* JNI invocation interface.
	*/
	VM_CREATION;
	/**
	* The VM option was set via an environment variable.
	*/
	ENVIRON_VAR;
	/**
	* The VM option was set via a configuration file.
	*/
	CONFIG_FILE;
	/**
	* The VM option was set via the management interface after the VM
	* was started.
	*/
	MANAGEMENT;
	/**
	* The VM option was set via the VM ergonomic support.
	*/
	ERGONOMIC;
	/**
	* The VM option was set via some other mechanism.
	*/
	OTHER;
	
}

