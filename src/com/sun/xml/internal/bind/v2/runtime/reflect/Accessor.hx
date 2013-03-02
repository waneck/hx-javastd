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
extern class Accessor<BeanT, ValueT> implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.Receiver
{
	/**
	* Accesses a particular property of a bean.
	* <p/>
	* <p/>
	* This interface encapsulates the access to the actual data store.
	* The intention is to generate implementations for a particular bean
	* and a property to improve the performance.
	* <p/>
	* <p/>
	* Accessor can be used as a receiver. Upon receiving an object
	* it sets that to the field.
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	* @see Accessor.FieldReflection
	* @see TransducedAccessor
	*/
	public var valueType(default, null) : Class<ValueT>;
	
	@:overload public function getValueType() : Class<ValueT>;
	
	@:overload private function new(valueType : Class<ValueT>) : Void;
	
	/**
	* Returns the optimized version of the same accessor.
	*
	* @param context The {@link JAXBContextImpl} that owns the whole thing.
	*                (See {@link RuntimeModelBuilder#context}.)
	* @return At least the implementation can return <tt>this</tt>.
	*/
	@:overload public function optimize(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>;
	
	/**
	* Gets the value of the property of the given bean object.
	*
	* @param bean must not be null.
	* @throws AccessorException if failed to set a value. For example, the getter method
	*                           may throw an exception.
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function get(bean : BeanT) : ValueT;
	
	/**
	* Sets the value of the property of the given bean object.
	*
	* @param bean  must not be null.
	* @param value the value to be set. Setting value to null means resetting
	*              to the VM default value (even for primitive properties.)
	* @throws AccessorException if failed to set a value. For example, the setter method
	*                           may throw an exception.
	* @since 2.0 EA1
	*/
	@:require(java0) @:overload @:abstract public function set(bean : BeanT, value : ValueT) : Void;
	
	/**
	* Sets the value without adapting the value.
	* <p/>
	* This ugly entry point is only used by JAX-WS.
	* See {@link JAXBRIContext#getElementPropertyAccessor}
	*/
	@:overload public function getUnadapted(bean : BeanT) : Dynamic;
	
	/**
	* Returns true if this accessor wraps an adapter.
	* <p/>
	* This method needs to be used with care, but it helps some optimization.
	*/
	@:overload public function isAdapted() : Bool;
	
	/**
	* Sets the value without adapting the value.
	* <p/>
	* This ugly entry point is only used by JAX-WS.
	* See {@link JAXBRIContext#getElementPropertyAccessor}
	*/
	@:overload public function setUnadapted(bean : BeanT, value : Dynamic) : Void;
	
	@:overload public function receive(state : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext.UnmarshallingContext_State, o : Dynamic) : Void;
	
	@:overload public function isValueTypeAbstractable() : Bool;
	
	/**
	* Wraps this  {@link Accessor} into another {@link Accessor}
	* and performs the type adaption as necessary.
	*/
	@:overload @:final public function adapt<T>(targetType : Class<T>, adapter : Class<javax.xml.bind.annotation.adapters.XmlAdapter<T, ValueT>>) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, T>;
	
	@:overload @:final public function adapt<T>(adapter : com.sun.xml.internal.bind.v2.model.core.Adapter<java.lang.reflect.Type, Class<Dynamic>>) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, T>;
	
	/**
	* Gets the special {@link Accessor} used to recover from errors.
	*/
	@:overload public static function getErrorInstance<A, B>() : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<A, B>;
	
	/**
	* {@link Accessor} for {@link JAXBElement#getValue()}.
	*/
	public static var JAXB_ELEMENT_VALUE(default, null) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<javax.xml.bind.JAXBElement<Dynamic>, Dynamic>;
	
	
}
/**
* {@link Accessor} that uses Java reflection to access a field.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Accessor$FieldReflection') extern class Accessor_FieldReflection<BeanT, ValueT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>
{
	public var f(default, null) : java.lang.reflect.Field;
	
	@:overload public function new(f : java.lang.reflect.Field) : Void;
	
	@:overload public function new(f : java.lang.reflect.Field, supressAccessorWarnings : Bool) : Void;
	
	@:overload override public function get(bean : BeanT) : ValueT;
	
	@:overload override public function set(bean : BeanT, value : ValueT) : Void;
	
	@:overload override public function optimize(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>;
	
	
}
/**
* Read-only access to {@link Field}. Used to handle a static field.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Accessor$ReadOnlyFieldReflection') extern class Accessor_ReadOnlyFieldReflection<BeanT, ValueT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Accessor.Accessor_FieldReflection<BeanT, ValueT>
{
	@:overload public function new(f : java.lang.reflect.Field, supressAccessorWarnings : Bool) : Void;
	
	@:overload public function new(f : java.lang.reflect.Field) : Void;
	
	@:overload override public function set(bean : BeanT, value : ValueT) : Void;
	
	@:overload override public function optimize(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>;
	
	
}
/**
* {@link Accessor} that uses Java reflection to access a getter and a setter.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Accessor$GetterSetterReflection') extern class Accessor_GetterSetterReflection<BeanT, ValueT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>
{
	public var getter(default, null) : java.lang.reflect.Method;
	
	public var setter(default, null) : java.lang.reflect.Method;
	
	@:overload public function new(getter : java.lang.reflect.Method, setter : java.lang.reflect.Method) : Void;
	
	@:overload override public function get(bean : BeanT) : ValueT;
	
	@:overload override public function set(bean : BeanT, value : ValueT) : Void;
	
	@:overload override public function optimize(context : com.sun.xml.internal.bind.v2.runtime.JAXBContextImpl) : com.sun.xml.internal.bind.v2.runtime.reflect.Accessor<BeanT, ValueT>;
	
	
}
/**
* A version of {@link GetterSetterReflection} that doesn't have any setter.
* <p/>
* <p/>
* This provides a user-friendly error message.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Accessor$GetterOnlyReflection') extern class Accessor_GetterOnlyReflection<BeanT, ValueT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Accessor.Accessor_GetterSetterReflection<BeanT, ValueT>
{
	@:overload public function new(getter : java.lang.reflect.Method) : Void;
	
	@:overload override public function set(bean : BeanT, value : ValueT) : Void;
	
	
}
/**
* A version of {@link GetterSetterReflection} thaat doesn't have any getter.
* <p/>
* <p/>
* This provides a user-friendly error message.
*/
@:native('com$sun$xml$internal$bind$v2$runtime$reflect$Accessor$SetterOnlyReflection') extern class Accessor_SetterOnlyReflection<BeanT, ValueT> extends com.sun.xml.internal.bind.v2.runtime.reflect.Accessor.Accessor_GetterSetterReflection<BeanT, ValueT>
{
	@:overload public function new(setter : java.lang.reflect.Method) : Void;
	
	@:overload override public function get(bean : BeanT) : ValueT;
	
	
}
