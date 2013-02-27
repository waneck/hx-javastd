package com.sun.xml.internal.bind.v2.runtime.reflect;
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
@:internal extern class AdaptedLister<BeanT, PropT, InMemItemT, OnWireItemT, PackT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Lister<BeanT, PropT, OnWireItemT, PackT>
{
	@:overload override public function iterator(prop : PropT, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<OnWireItemT>;
	
	@:overload override public function startPacking(bean : BeanT, accessor : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : PackT;
	
	@:overload override public function addToPack(pack : PackT, item : OnWireItemT) : Void;
	
	@:overload override public function endPacking(pack : PackT, bean : BeanT, accessor : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	@:overload override public function reset(bean : BeanT, accessor : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$AdaptedLister$ListIteratorImpl') @:internal extern class AdaptedLister_ListIteratorImpl implements com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<Dynamic>
{
	@:overload public function new(core : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<Dynamic>, serializer : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	
}
