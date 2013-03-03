package sun.tracing.dtrace;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DTraceProviderFactory extends com.sun.tracing.ProviderFactory
{
	/**
	* Creates an instance of a provider which can then be used to trigger
	* DTrace probes.
	*
	* The provider specification, provided as an argument, should only
	* contain methods which have a 'void' return type and String or
	* integer-based typed arguments (long, int, short, char, byte, or boolean).
	*
	* @param cls A user-defined interface which extends {@code Provider}.
	* @return An instance of the interface which is used to trigger
	* the DTrace probes.
	* @throws java.lang.SecurityException if a security manager has been
	* installed and it denies
	* RuntimePermission("com.sun.dtrace.jsdt.createProvider")
	* @throws java.lang.IllegalArgumentException if the interface contains
	* methods that do not return null, or that contain arguments that are
	* not String or integer types.
	*/
	@:overload @:public override public function createProvider<T : com.sun.tracing.Provider>(cls : Class<T>) : T;
	
	/**
	* Creates multiple providers at once.
	*
	* This method batches together a number of provider instantiations.
	* It works similarly
	* to {@code createProvider}, but operates on a set of providers instead
	* of one at a time.  This method is in place since some DTrace
	* implementations limit the number of times that providers can be
	* created.  When numerous providers can be created at once with this
	* method, it will count only as a single creation point to DTrace, thus
	* it uses less system resources.
	* <p>
	* All of the probes in the providers will be visible to DTrace after
	* this call and all will remain visible until all of the providers
	* are disposed.
	* <p>
	* The {@code moduleName} parameter will override any {@code ModuleName}
	* annotation associated with any of the providers in the set.
	* All of the probes created by this call will share the same
	* module name.
	* <p>
	* @param providers a set of provider specification interfaces
	* @param moduleName the module name to associate with all probes
	* @return A map which maps the provider interface specification to an
	* implementing instance.
	* @throws java.lang.SecurityException if a security manager has been
	* installed and it denies
	* RuntimePermission("com.sun.dtrace.jsdt.createProvider")
	* @throws java.lang.IllegalArgumentException if any of the interface
	* contains methods that do not return null, or that contain arguments
	* that are not String or integer types.
	*/
	@:overload @:public public function createProviders(providers : java.util.Set<Class<com.sun.tracing.Provider>>, moduleName : String) : java.util.Map<Class<com.sun.tracing.Provider>, com.sun.tracing.Provider>;
	
	/**
	* Used to check the status of DTrace support in the underlying JVM and
	* operating system.
	*
	* This is an informative method only - the Java-level effects of
	* creating providers and triggering probes will not change whether or
	* not DTrace is supported by the underlying systems.
	*
	* @return true if DTrace is supported
	*/
	@:overload @:public @:static public static function isSupported() : Bool;
	
	
}
