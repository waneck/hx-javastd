package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MBeanIntrospector<M>
{
	
}
/*
* Using a type parameter <M> allows us to deal with the fact that
* Method and ConvertingMethod have no useful common ancestor, on
* which we could call getName, getGenericReturnType, etc.  A simpler approach
* would be to wrap every Method in an object that does have a common
* ancestor with ConvertingMethod.  But that would mean an extra object
* for every Method in every Standard MBean interface.
*/
@:native('com$sun$jmx$mbeanserver$MBeanIntrospector$PerInterfaceMap') @:internal extern class MBeanIntrospector_PerInterfaceMap<M> extends java.util.WeakHashMap<Class<Dynamic>, java.lang.ref.WeakReference<com.sun.jmx.mbeanserver.PerInterface<M>>>
{
	
}
/** A visitor that constructs the per-interface MBeanInfo. */
@:native('com$sun$jmx$mbeanserver$MBeanIntrospector$MBeanInfoMaker') @:internal extern class MBeanIntrospector_MBeanInfoMaker implements com.sun.jmx.mbeanserver.MBeanAnalyzer.MBeanAnalyzer_MBeanVisitor<Dynamic>
{
	@:overload @:public public function visitAttribute(attributeName : String, getter : Dynamic, setter : Dynamic) : Void;
	
	@:overload @:public public function visitOperation(operationName : String, operation : Dynamic) : Void;
	
	
}
/*
* Looking up the MBeanInfo for a given base class (implementation class)
* is complicated by the fact that we may use the same base class with
* several different explicit MBean interfaces via the
* javax.management.StandardMBean class.  It is further complicated
* by the fact that we have to be careful not to retain a strong reference
* to any Class object for fear we would prevent a ClassLoader from being
* garbage-collected.  So we have a first lookup from the base class
* to a map for each interface that base class might specify giving
* the MBeanInfo constructed for that base class and interface.
*/
@:native('com$sun$jmx$mbeanserver$MBeanIntrospector$MBeanInfoMap') @:internal extern class MBeanIntrospector_MBeanInfoMap extends java.util.WeakHashMap<Class<Dynamic>, java.util.WeakHashMap<Class<Dynamic>, javax.management.MBeanInfo>>
{
	
}
