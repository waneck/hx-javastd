package com.sun.xml.internal.bind.v2.model.runtime;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface RuntimeLeafInfo extends com.sun.xml.internal.bind.v2.model.core.LeafInfo<java.lang.reflect.Type, Class<Dynamic>> extends com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElement
{
	/**
	* {@inheritDoc}
	*
	* @return
	*      always non-null.
	*/
	@:overload public function getTransducer<V>() : com.sun.xml.internal.bind.v2.runtime.Transducer<V>;
	
	/**
	* The same as {@link #getType()} but returns the type as a {@link Class}.
	* <p>
	* Note that the returned {@link Class} object does not necessarily represents
	* a class declaration. It can be primitive types.
	*/
	@:overload public function getClazz() : Class<Dynamic>;
	
	/**
	* Returns all the type names recognized by this type for unmarshalling.
	*
	* <p>
	* While conceptually this method belongs to {@link RuntimeNonElement},
	* if we do that we have to put a lot of dummy implementations everywhere,
	* so it's placed here, where it's actually needed.
	*
	* @return
	*      Always non-null. Do not modify the returned array.
	*/
	@:overload public function getTypeNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	
}
