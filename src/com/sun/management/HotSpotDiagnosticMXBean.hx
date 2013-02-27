package com.sun.management;
/*
* Copyright (c) 2005, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern interface HotSpotDiagnosticMXBean extends java.lang.management.PlatformManagedObject
{
	/**
	* Dumps the heap to the <tt>outputFile</tt> file in the same
	* format as the hprof heap dump.
	* <p>
	* If this method is called remotely from another process,
	* the heap dump output is written to a file named <tt>outputFile</tt>
	* on the machine where the target VM is running.  If outputFile is
	* a relative path, it is relative to the working directory where
	* the target VM was started.
	*
	* @param  outputFile the system-dependent filename
	* @param  live if <tt>true</tt> dump only <i>live</i> objects
	*         i.e. objects that are reachable from others
	* @throws IOException if the <tt>outputFile</tt>
	*                     cannot be created, opened, or written to.
	* @throws UnsupportedOperationException if this operation is not supported.
	* @throws NullPointerException if <tt>outputFile</tt> is <tt>null</tt>.
	*/
	@:overload public function dumpHeap(outputFile : String, live : Bool) : Void;
	
	/**
	* Returns a list of <tt>VMOption</tt> objects for all diagnostic options.
	* A diagnostic option is a {@link VMOption#isWriteable writeable}
	* VM option that can be set dynamically mainly for troubleshooting
	* and diagnosis.
	*
	* @return a list of <tt>VMOption</tt> objects for all diagnostic options.
	*/
	@:overload public function getDiagnosticOptions() : java.util.List<com.sun.management.VMOption>;
	
	/**
	* Returns a <tt>VMOption</tt> object for a VM option of the given
	* name.
	*
	* @return a <tt>VMOption</tt> object for a VM option of the given name.
	* @throws NullPointerException if name is <tt>null</tt>.
	* @throws IllegalArgumentException if a VM option of the given name
	*                                     does not exist.
	*/
	@:overload public function getVMOption(name : String) : com.sun.management.VMOption;
	
	/**
	* Sets a VM option of the given name to the specified value.
	* The new value will be reflected in a new <tt>VMOption</tt>
	* object returned by the {@link #getVMOption} method or
	* the {@link #getDiagnosticOptions} method.  This method does
	* not change the value of this <tt>VMOption</tt> object.
	*
	* @param name Name of a VM option
	* @param value New value of the VM option to be set
	*
	* @throws IllegalArgumentException if the VM option of the given name
	*                                     does not exist.
	* @throws IllegalArgumentException if the new value is invalid.
	* @throws IllegalArgumentException if the VM option is not writeable.
	* @throws NullPointerException if name or value is <tt>null</tt>.
	*
	* @throws  java.lang.SecurityException
	*     if a security manager exists and the caller does not have
	*     ManagementPermission("control").
	*/
	@:overload public function setVMOption(name : String, value : String) : Void;
	
	
}
