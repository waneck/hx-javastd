package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MXBeanMappingFactory
{
	/**
	* <p>Construct an instance of this class.</p>
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* <p>Mapping factory that applies the default rules for MXBean
	* mappings, as described in the <a
	* href="../MXBean.html#MXBean-spec">MXBean specification</a>.</p>
	*/
	@:public @:static @:final public static var DEFAULT(default, null) : com.sun.jmx.mbeanserver.MXBeanMappingFactory;
	
	/**
	* <p>Return the mapping for the given Java type.  Typically, a
	* mapping factory will return mappings for types it handles, and
	* forward other types to another mapping factory, most often
	* the {@linkplain #DEFAULT default one}.</p>
	* @param t the Java type to be mapped.
	* @param f the original mapping factory that was consulted to do
	* the mapping.  A mapping factory should pass this parameter intact
	* if it forwards a type to another mapping factory.  In the example,
	* this is how {@code MyLinkedListMappingFactory} works for types
	* like {@code MyLinkedList[]} and {@code List<MyLinkedList>}.
	* @return the mapping for the given type.
	* @throws OpenDataException if this type cannot be mapped.  This
	* exception is appropriate if the factory is supposed to handle
	* all types of this sort (for example, all linked lists), but
	* cannot handle this particular type.
	*/
	@:overload @:public @:abstract public function mappingForType(t : java.lang.reflect.Type, f : com.sun.jmx.mbeanserver.MXBeanMappingFactory) : com.sun.jmx.mbeanserver.MXBeanMapping;
	
	
}
