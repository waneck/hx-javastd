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
extern class TransducedAccessor<BeanT>
{
	/**
	* @see Transducer#useNamespace()
	*/
	@:overload public function useNamespace() : Bool;
	
	/**
	* Obtain the value of the field and declares the namespace URIs used in
	* the value.
	*
	* @see Transducer#declareNamespace(Object, XMLSerializer)
	*/
	@:overload public function declareNamespace(o : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	/**
	* Prints the responsible field of the given bean to the writer.
	*
	* <p>
	* Use {@link XMLSerializer#getInstance()} to access to the namespace bindings
	*
	* @return
	*      if the accessor didn't yield a value, return null.
	*/
	@:overload @:abstract public function print(o : BeanT) : java.lang.CharSequence;
	
	/**
	* Parses the text value into the responsible field of the given bean.
	*
	* <p>
	* Use {@link UnmarshallingContext#getInstance()} to access to the namespace bindings
	*
	* @throws AccessorException
	*      if the transducer is used to parse an user bean that uses {@link XmlValue},
	*      then this exception may occur when it tries to set the leaf value to the bean.
	* @throws RuntimeException
	*      if the lexical form is incorrect. The method may throw a RuntimeException,
	*      but it shouldn't cause the entire unmarshalling to fail.
	* @throws SAXException
	*      if the parse method found an error, the error is reported, and then
	*      the processing is aborted.
	*/
	@:overload @:abstract public function parse(o : BeanT, lexical : java.lang.CharSequence) : Void;
	
	/**
	* Checks if the field has a value.
	*/
	@:overload @:abstract public function hasValue(o : BeanT) : Bool;
	
	/**
	* Gets the {@link TransducedAccessor} appropriately configured for
	* the given property.
	*
	* <p>
	* This allows the implementation to use an optimized code.
	*/
	@:overload public static function get<T>(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, ref : com.sun.xml.internal.bind.v2.model.runtime.RuntimeNonElementRef) : TransducedAccessor<T>;
	
	/**
	* Convenience method to write the value as a text inside an element
	* without any attributes.
	* Can be overridden for improved performance.
	*
	* <p>
	* The callee assumes that there's an associated value in the field.
	* No @xsi:type handling is expected.
	*/
	@:overload @:abstract public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : BeanT, fieldName : String) : Void;
	
	/**
	* Invokes one of the {@link XMLSerializer#text(String, String)} method
	* with the representation of data bested suited for this transduced accessor.
	*/
	@:overload @:abstract public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : BeanT, fieldName : String) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$TransducedAccessor$CompositeContextDependentTransducedAccessorImpl') @:internal extern class TransducedAccessor_CompositeContextDependentTransducedAccessorImpl<BeanT, ValueT> extends TransducedAccessor_CompositeTransducedAccessorImpl<BeanT, ValueT>
{
	@:overload public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, xducer : com.sun.xml.internal.bind.v2.runtime.Transducer<ValueT>, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>) : Void;
	
	@:overload override public function useNamespace() : Bool;
	
	@:overload override public function declareNamespace(bean : BeanT, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload override public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : BeanT, fieldName : String) : Void;
	
	
}
/**
* Implementation of {@link TransducedAccessor} that
* simply combines a {@link Transducer} and {@link Accessor}.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$TransducedAccessor$CompositeTransducedAccessorImpl') extern class TransducedAccessor_CompositeTransducedAccessorImpl<BeanT, ValueT> extends TransducedAccessor<BeanT>
{
	private var xducer(default, null) : com.sun.xml.internal.bind.v2.runtime.Transducer<ValueT>;
	
	private var acc(default, null) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>;
	
	@:overload public function new(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl, xducer : com.sun.xml.internal.bind.v2.runtime.Transducer<ValueT>, acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>) : Void;
	
	@:overload override public function print(bean : BeanT) : java.lang.CharSequence;
	
	@:overload override public function parse(bean : BeanT, lexical : java.lang.CharSequence) : Void;
	
	@:overload override public function hasValue(bean : BeanT) : Bool;
	
	@:overload override public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : BeanT, fieldName : String) : Void;
	
	@:overload override public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : BeanT, fieldName : String) : Void;
	
	
}
/**
* {@link TransducedAccessor} for IDREF.
*
* BeanT: the type of the bean that contains this the IDREF field.
* TargetT: the type of the bean pointed by IDREF.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$TransducedAccessor$IDREFTransducedAccessorImpl') @:internal extern class TransducedAccessor_IDREFTransducedAccessorImpl<BeanT, TargetT> extends com.sun.xml.internal.bind.v2.runtime.reflect.DefaultTransducedAccessor<BeanT>
{
	@:overload public function new(acc : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, TargetT>) : Void;
	
	@:overload override public function print(bean : BeanT) : String;
	
	@:overload override public function parse(bean : BeanT, lexical : java.lang.CharSequence) : Void;
	
	@:overload override public function hasValue(bean : BeanT) : Bool;
	
	
}
