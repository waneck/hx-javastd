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
extern class RuntimeBuiltinLeafInfoImpl<T> extends com.sun.xml.internal.bind.v2.model.impl.BuiltinLeafInfoImpl<java.lang.reflect.Type, Class<Dynamic>> implements com.sun.xml.internal.bind.v2.model.runtime.RuntimeBuiltinLeafInfo implements com.sun.xml.internal.bind.v2.runtime.Transducer<T>
{
	@:overload @:public @:final public function getClazz() : Class<Dynamic>;
	
	@:overload @:public @:final public function getTransducer() : com.sun.xml.internal.bind.v2.runtime.Transducer<Dynamic>;
	
	@:overload @:public public function useNamespace() : Bool;
	
	@:overload @:public @:final public function isDefault() : Bool;
	
	@:overload @:public public function declareNamespace(o : T, w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer) : Void;
	
	@:overload @:public public function getTypeName(instance : T) : javax.xml.namespace.QName;
	
	/**
	* All instances of {@link RuntimeBuiltinLeafInfoImpl}s keyed by their type.
	*/
	@:public @:static @:final public static var LEAVES(default, null) : java.util.Map<java.lang.reflect.Type, com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<Dynamic>>;
	
	@:public @:static @:final public static var STRING(default, null) : com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<String>;
	
	/**
	* List of all {@link RuntimeBuiltinLeafInfoImpl}s.
	*
	* <p>
	* This corresponds to the built-in Java classes that are specified to be
	* handled differently than ordinary classes. See table 8-2 "Mapping of Standard Java classes".
	*/
	@:public @:static @:final public static var builtinBeanInfos(default, null) : java.util.List<com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<Dynamic>>;
	
	@:public @:static @:final public static var MAP_ANYURI_TO_URI(default, null) : String;
	
	/**
	* Converts the given value to its lexical representation.
	*
	* @param o
	*      never be null.
	* @return
	*      always non-null valid lexical representation.
	*/
	@:overload @:public public function print(o : Dynamic) : java.lang.CharSequence;
	
	/**
	* If the class is bound to an element, return true.
	*
	* <p>
	* Note that when this is true, the class is bound to both an element
	* and a type.
	*/
	@:overload @:public override public function isElement() : Bool;
	
	/**
	* True if this type is a valid target from a property annotated with {@link XmlIDREF}.
	*/
	@:overload @:public override public function canBeReferencedByIDREF() : Bool;
	
	/**
	* Converts the lexical representation to a value object.
	*
	* @param lexical
	*      never be null.
	* @throws AccessorException
	*      if the transducer is used to parse an user bean that uses {@link XmlValue},
	*      then this exception may occur when it tries to set the leaf value to the bean.
	* @throws SAXException
	*      if the lexical form is incorrect, the error should be reported
	*      and SAXException may thrown (or it can return null to recover.)
	*/
	@:overload @:public public function parse(lexical : java.lang.CharSequence) : Dynamic;
	
	/**
	* Gets the location object that this object points to.
	*
	* This operation could be inefficient and costly.
	*/
	@:overload @:public override public function getLocation() : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Sends the result of the {@link #print(Object)} operation
	* to one of the {@link XMLSerializer#leafElement(Name, String, String)} method.
	* but with the best representation of the value, not necessarily String.
	*/
	@:overload @:public public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : Dynamic, fieldName : String) : Void;
	
	/**
	* Gets the primary XML type ANYTYPE_NAME of the class.
	*
	* <p>
	* A Java type can be mapped to multiple XML types, but one of them is
	* considered "primary" and used when we generate a schema.
	*
	* @return
	*      null if the object doesn't have an explicit type ANYTYPE_NAME (AKA anonymous.)
	*/
	@:overload @:public override public function getTypeName() : javax.xml.namespace.QName;
	
	/**
	* Returns true if this {@link NonElement} maps to text in XML,
	* without any attribute nor child elements.
	*/
	@:overload @:public override public function isSimpleType() : Bool;
	
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
	@:overload @:public override public function getTypeNames() : java.NativeArray<javax.xml.namespace.QName>;
	
	/**
	* Gets the upstream {@link Location} information.
	*
	* @return
	*      can be null.
	*/
	@:overload @:public override public function getUpstream() : com.sun.xml.internal.bind.v2.model.annotation.Locatable;
	
	/**
	* Gets the element name of the class, if the class is bound
	* to an element.
	*
	* @return
	*      non-null iff {@link #isElement()}.
	*/
	@:overload @:public override public function getElementName() : javax.xml.namespace.QName;
	
	/**
	* Returns the {@link Element} aspect of this {@link ClassInfo}.
	*
	* @return
	*      null if {@link #isElement()}==false, non-null if {@link #isElement()}==true.
	*/
	@:overload @:public override public function asElement() : com.sun.xml.internal.bind.v2.model.core.Element<T, Dynamic>;
	
	/**
	* Sends the result of the {@link #print(Object)} operation
	* to one of the {@link XMLSerializer#text(String, String)} method,
	* but with the best representation of the value, not necessarily String.
	*/
	@:overload @:public public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : Dynamic, fieldName : String) : Void;
	
	/**
	* Gets the underlying Java type that object represents.
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public override public function getType() : T;
	
	
}
/**
* Those built-in types that print to {@link String}.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeBuiltinLeafInfoImpl$StringImpl') @:internal extern class RuntimeBuiltinLeafInfoImpl_StringImpl<T> extends com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<T>
{
	@:overload @:protected private function new(type : Class<Dynamic>, typeNames : java.NativeArray<javax.xml.namespace.QName>) : Void;
	
	@:overload @:public @:abstract override public function print(o : T) : String;
	
	@:overload @:public override public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : T, fieldName : String) : Void;
	
	@:overload @:public override public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : T, fieldName : String) : Void;
	
	
}
/**
* Those built-in types that print to {@link Pcdata}.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeBuiltinLeafInfoImpl$PcdataImpl') @:internal extern class RuntimeBuiltinLeafInfoImpl_PcdataImpl<T> extends com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl<T>
{
	@:overload @:protected private function new(type : Class<Dynamic>, typeNames : java.NativeArray<javax.xml.namespace.QName>) : Void;
	
	@:overload @:public @:abstract override public function print(o : T) : com.sun.xml.internal.bind.v2.runtime.output.Pcdata;
	
	@:overload @:public @:final override public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : T, fieldName : String) : Void;
	
	@:overload @:public @:final override public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : T, fieldName : String) : Void;
	
	
}
/**
* {@link RuntimeBuiltinLeafInfoImpl} for {@link UUID}.
*
* This class is given a name so that failing to load this class won't cause a fatal problem.
*/
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeBuiltinLeafInfoImpl$UUIDImpl') @:internal extern class RuntimeBuiltinLeafInfoImpl_UUIDImpl extends com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl.RuntimeBuiltinLeafInfoImpl_StringImpl<java.util.UUID>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function parse(text : java.lang.CharSequence) : java.util.UUID;
	
	@:overload @:public public function print(v : java.util.UUID) : String;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$impl$RuntimeBuiltinLeafInfoImpl$StringImplImpl') @:internal extern class RuntimeBuiltinLeafInfoImpl_StringImplImpl extends com.sun.xml.internal.bind.v2.model.impl.RuntimeBuiltinLeafInfoImpl.RuntimeBuiltinLeafInfoImpl_StringImpl<String>
{
	@:overload @:public public function new(type : Class<Dynamic>, typeNames : java.NativeArray<javax.xml.namespace.QName>) : Void;
	
	@:overload @:public override public function parse(text : java.lang.CharSequence) : String;
	
	@:overload @:public public function print(s : String) : String;
	
	@:overload @:public @:final public function writeText(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, o : String, fieldName : String) : Void;
	
	@:overload @:public @:final public function writeLeafElement(w : com.sun.xml.internal.bind.v2.runtime.XMLSerializer, tagName : com.sun.xml.internal.bind.v2.runtime.Name, o : String, fieldName : String) : Void;
	
	
}
