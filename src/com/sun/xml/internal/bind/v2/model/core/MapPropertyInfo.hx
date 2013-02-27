package com.sun.xml.internal.bind.v2.model.core;
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
extern interface MapPropertyInfo<T, C> extends com.sun.xml.internal.bind.v2.model.core.PropertyInfo<T, C>
{
	/**
	* Gets the wrapper element name.
	*
	* @return
	*      always non-null.
	*/
	@:overload public function getXmlName() : javax.xml.namespace.QName;
	
	/**
	* Returns true if this property is nillable
	* (meaning the absence of the value is treated as nil='true')
	*
	* <p>
	* This method is only used when this property is a collection.
	*/
	@:overload public function isCollectionNillable() : Bool;
	
	/**
	* Type of the key of the map. K of {@code HashMap<K,V>}
	*
	* @return never null.
	*/
	@:overload public function getKeyType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	/**
	* Type of the value of the map. V of {@code HashMap<K,V>}
	*
	* @return never null.
	*/
	@:overload public function getValueType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	
}
