package com.sun.xml.internal.bind.v2.model.impl;
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
@:internal extern class MapPropertyInfoImpl<T, C, F, M> extends com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.MapPropertyInfo<T, C>
{
	@:overload @:public public function new(ci : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>, seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : Void;
	
	@:overload @:public override public function ref() : java.util.Collection<com.sun.xml.internal.bind.v2.model.core.TypeInfo<T, C>>;
	
	@:overload @:public @:final override public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload @:public public function getXmlName() : javax.xml.namespace.QName;
	
	@:overload @:public public function isCollectionNillable() : Bool;
	
	@:overload @:public public function getKeyType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload @:public public function getValueType() : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	@:overload @:public public function getTarget(type : T) : com.sun.xml.internal.bind.v2.model.core.NonElement<T, C>;
	
	
}
