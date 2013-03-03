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
@:internal extern class PrimitiveArrayListerShort<BeanT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Lister<BeanT, java.NativeArray<java.StdTypes.Int16>, Null<java.StdTypes.Int16>, com.sun.xml.internal.bind.v2.runtime.reflect.PrimitiveArrayListerShort.PrimitiveArrayListerShort_ShortArrayPack>
{
	@:overload @:public public function iterator(objects : java.NativeArray<java.StdTypes.Int16>, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<Null<java.StdTypes.Int16>>;
	
	@:overload @:public override public function startPacking(current : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<java.StdTypes.Int16>>) : com.sun.xml.internal.bind.v2.runtime.reflect.PrimitiveArrayListerShort.PrimitiveArrayListerShort_ShortArrayPack;
	
	@:overload @:public public function addToPack(objects : com.sun.xml.internal.bind.v2.runtime.reflect.PrimitiveArrayListerShort.PrimitiveArrayListerShort_ShortArrayPack, o : Null<java.StdTypes.Int16>) : Void;
	
	@:overload @:public public function endPacking(pack : com.sun.xml.internal.bind.v2.runtime.reflect.PrimitiveArrayListerShort.PrimitiveArrayListerShort_ShortArrayPack, bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<java.StdTypes.Int16>>) : Void;
	
	@:overload @:public override public function reset(o : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<java.StdTypes.Int16>>) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$PrimitiveArrayListerShort$ShortArrayPack') @:internal extern class PrimitiveArrayListerShort_ShortArrayPack
{
	
}
