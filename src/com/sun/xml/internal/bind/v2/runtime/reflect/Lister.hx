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
extern class Lister<BeanT, PropT, ItemT, PackT>
{
	/**
	* Used to list individual values of a multi-value property, and
	* to pack individual values into a multi-value property.
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload private function new() : Void;
	
	/**
	* Iterates values of a multi-value property.
	*
	* @param context
	*      This parameter is used to support ID/IDREF handling.
	*/
	@:overload @:abstract public function iterator(multiValueProp : PropT, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<ItemT>;
	
	/**
	* Setting values to a multi-value property starts by creating
	* a transient object called "pack" from the current field.
	*/
	@:overload @:abstract public function startPacking(bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : PackT;
	
	/**
	* Once the {@link #startPacking} is called, you can
	* add values to the pack by using this method.
	*/
	@:overload @:abstract public function addToPack(pack : PackT, newValue : ItemT) : Void;
	
	/**
	* Finally, call this method to
	* wraps up the {@code pack}. This method may update the field of
	* the given bean.
	*/
	@:overload @:abstract public function endPacking(pack : PackT, bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	/**
	* Clears the values of the property.
	*/
	@:overload @:abstract public function reset(o : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	/**
	* Gets a reference to the appropriate {@link Lister} object
	* if the field is a multi-value field. Otherwise null.
	*
	* @param fieldType
	*      the type of the field that stores the collection
	* @param idness
	*      ID-ness of the property.
	* @param adapter
	*      adapter to be used for individual items. can be null.
	*/
	@:overload public static function create<BeanT, PropT, ItemT, PackT>(fieldType : java.lang.reflect.Type, idness : com.sun.xml.internal.bind.v2.model.core.ID, adapter : com.sun.xml.internal.bind.v2.model.core.Adapter<java.lang.reflect.Type, Class<Dynamic>>) : Lister<BeanT, PropT, ItemT, PackT>;
	
	/**
	* Gets the special {@link Lister} used to recover from an error.
	*/
	@:overload public static function getErrorInstance<A, B, C, D>() : Lister<A, B, C, D>;
	
	public static var ERROR(default, null) : Lister<Dynamic, Dynamic, Dynamic, Dynamic>;
	
	
}
/**
* {@link Lister} for an array.
*
* <p>
* Array packing is slower, but we expect this to be used less frequently than
* the {@link CollectionLister}.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$ArrayLister') @:internal extern class Lister_ArrayLister<BeanT, ItemT> extends Lister<BeanT, java.NativeArray<ItemT>, ItemT, Lister_IDREFS_Pack<ItemT>>
{
	@:overload public function new(itemType : Class<ItemT>) : Void;
	
	@:overload public function iterator(objects : java.NativeArray<ItemT>, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<ItemT>;
	
	@:overload override public function startPacking(current : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<ItemT>>) : Lister_IDREFS_Pack;
	
	@:overload public function addToPack(objects : Lister_IDREFS_Pack<ItemT>, o : ItemT) : Void;
	
	@:overload public function endPacking(pack : Lister_IDREFS_Pack<ItemT>, bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<ItemT>>) : Void;
	
	@:overload override public function reset(o : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, java.NativeArray<ItemT>>) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$Pack') extern class Lister_Pack<ItemT> extends java.util.ArrayList<ItemT>
{
	@:overload public function new(itemType : Class<ItemT>) : Void;
	
	@:overload public function build() : java.NativeArray<ItemT>;
	
	
}
/**
* {@link Lister} for a collection
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$CollectionLister') extern class Lister_CollectionLister<BeanT, T> extends Lister<BeanT, T, Dynamic, T>
{
	@:overload public function new(implClass : Class<T>) : Void;
	
	@:overload override public function iterator(collection : T, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<Dynamic>;
	
	@:overload override public function startPacking(bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, T>) : T;
	
	@:overload override public function addToPack(collection : T, o : Dynamic) : Void;
	
	@:overload override public function endPacking(collection : T, bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, T>) : Void;
	
	@:overload override public function reset(bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, T>) : Void;
	
	
}
/**
* {@link Lister} for IDREFS.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$IDREFS') @:internal extern class Lister_IDREFS<BeanT, PropT> extends Lister<BeanT, PropT, String, Lister_IDREFS<BeanT, PropT>, Lister_IDREFS_Pack>
{
	@:overload public function new(core : Lister<Dynamic, Dynamic, Dynamic, Dynamic>, itemType : Class<Dynamic>) : Void;
	
	@:overload override public function iterator(prop : PropT, context : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<String>;
	
	@:overload override public function startPacking(bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Lister_IDREFS_Pack;
	
	@:overload public function addToPack(pack : Lister_IDREFS_Pack, item : String) : Void;
	
	@:overload public function endPacking(pack : Lister_IDREFS_Pack, bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	@:overload override public function reset(bean : BeanT, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, PropT>) : Void;
	
	
}
/**
* PackT for this lister.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$IDREFS$Pack') @:internal extern class Lister_IDREFS_Pack implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Patcher
{
	@:overload public function new(bean : Dynamic, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<Dynamic, Dynamic>) : Void;
	
	@:overload public function add(item : String) : Void;
	
	/**
	* Resolves IDREFS and fill in the actual array.
	*/
	@:overload public function run() : Void;
	
	
}
/**
* {@link Iterator} for IDREFS lister.
*
* <p>
* Only in ArrayElementProperty we need to get the actual
* referenced object. This is a kind of ugly way to make that work.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Lister$IDREFSIterator') extern class Lister_IDREFSIterator implements com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator<String>
{
	@:overload public function hasNext() : Bool;
	
	/**
	* Returns the last referenced object (not just its ID)
	*/
	@:overload public function last() : Dynamic;
	
	@:overload public function next() : String;
	
	
}
