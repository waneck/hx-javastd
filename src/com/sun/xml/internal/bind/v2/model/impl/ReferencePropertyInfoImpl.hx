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
@:internal extern class ReferencePropertyInfoImpl<T, C, F, M> extends com.sun.xml.internal.bind.v2.model.impl.ERPropertyInfoImpl<T, C, F, M> implements com.sun.xml.internal.bind.v2.model.core.ReferencePropertyInfo<T, C> implements com.sun.xml.internal.bind.v2.model.impl.DummyPropertyInfo<T, C, F, M>
{
	@:overload public function new(classInfo : com.sun.xml.internal.bind.v2.model.impl.ClassInfoImpl<T, C, F, M>, seed : com.sun.xml.internal.bind.v2.model.impl.PropertySeed<T, C, F, M>) : Void;
	
	@:overload public function ref() : java.util.Set<com.sun.xml.internal.bind.v2.model.core.Element<T, C>>;
	
	@:overload public function kind() : com.sun.xml.internal.bind.v2.model.core.PropertyKind;
	
	@:overload public function getElements() : java.util.Set<com.sun.xml.internal.bind.v2.model.core.Element<T, C>>;
	
	@:overload public function isRequired() : Bool;
	
	@:overload override private function link() : Void;
	
	@:overload @:final public function addType(info : com.sun.xml.internal.bind.v2.model.impl.PropertyInfoImpl<T, C, F, M>) : Void;
	
	@:overload @:final public function isMixed() : Bool;
	
	@:overload @:final public function getWildcard() : com.sun.xml.internal.bind.v2.model.core.WildcardMode;
	
	@:overload @:final public function getDOMHandler() : C;
	
	
}
