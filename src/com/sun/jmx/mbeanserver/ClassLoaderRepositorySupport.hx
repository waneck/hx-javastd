package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2002, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ClassLoaderRepositorySupport implements com.sun.jmx.mbeanserver.ModifiableClassLoaderRepository
{
	@:overload @:final public function loadClass(className : String) : Class<Dynamic>;
	
	@:overload @:final public function loadClassWithout(without : java.lang.ClassLoader, className : String) : Class<Dynamic>;
	
	@:overload @:final public function loadClassBefore(stop : java.lang.ClassLoader, className : String) : Class<Dynamic>;
	
	@:overload @:final public function addClassLoader(loader : java.lang.ClassLoader) : Void;
	
	@:overload @:final public function removeClassLoader(loader : java.lang.ClassLoader) : Void;
	
	@:overload @:final @:synchronized public function addClassLoader(name : javax.management.ObjectName, loader : java.lang.ClassLoader) : Void;
	
	@:overload @:final @:synchronized public function removeClassLoader(name : javax.management.ObjectName) : Void;
	
	@:overload @:final public function getClassLoader(name : javax.management.ObjectName) : java.lang.ClassLoader;
	
	
}
/* We associate an optional ObjectName with each entry so that
we can remove the correct entry when unregistering an MBean
that is a ClassLoader.  The same object could be registered
under two different names (even though this is not recommended)
so if we did not do this we could disturb the defined
semantics for the order of ClassLoaders in the repository.  */
@:native('com$sun$jmx$mbeanserver$ClassLoaderRepositorySupport$LoaderEntry') @:internal extern class ClassLoaderRepositorySupport_LoaderEntry
{
	
}
