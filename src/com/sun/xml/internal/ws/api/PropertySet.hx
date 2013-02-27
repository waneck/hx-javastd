package com.sun.xml.internal.ws.api;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PropertySet
{
	/**
	* Creates a new instance of TypedMap.
	*/
	@:overload private function new() : Void;
	
	/**
	* Map representing the Fields and Methods annotated with {@link Property}.
	* Model of {@link PropertySet} class.
	*
	* <p>
	* At the end of the derivation chain this method just needs to be implemented
	* as:
	*
	* <pre>
	* private static final PropertyMap model;
	* static {
	*   model = parse(MyDerivedClass.class);
	* }
	* protected PropertyMap getPropertyMap() {
	*   return model;
	* }
	* </pre>
	*/
	@:overload @:abstract private function getPropertyMap() : PropertySet_PropertyMap;
	
	/**
	* This method parses a class for fields and methods with {@link Property}.
	*/
	@:overload private static function parse(clazz : Class<Dynamic>) : PropertySet_PropertyMap;
	
	@:overload @:final public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Gets the name of the property.
	*
	* @param key
	*      This field is typed as {@link Object} to follow the {@link Map#get(Object)}
	*      convention, but if anything but {@link String} is passed, this method
	*      just returns null.
	*/
	@:overload public function get(key : Dynamic) : Dynamic;
	
	/**
	* Sets a property.
	*
	* <h3>Implementation Note</h3>
	* This method is slow. Code inside JAX-WS should define strongly-typed
	* fields in this class and access them directly, instead of using this.
	*
	* @throws ReadOnlyPropertyException
	*      if the given key is an alias of a strongly-typed field,
	*      and if the name object given is not assignable to the field.
	*
	* @see Property
	*/
	@:overload public function put(key : String, value : Dynamic) : Dynamic;
	
	/**
	* Checks if this {@link PropertySet} supports a property of the given name.
	*/
	@:overload public function supports(key : Dynamic) : Bool;
	
	@:overload public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Creates a {@link Map} view of this {@link PropertySet}.
	*
	* <p>
	* This map is partially live, in the sense that values you set to it
	* will be reflected to {@link PropertySet}.
	*
	* <p>
	* However, this map may not pick up changes made
	* to {@link PropertySet} after the view is created.
	*
	* @return
	*      always non-null valid instance.
	*/
	@:overload @:final public function createMapView() : java.util.Map<String, Dynamic>;
	
	
}
/**
* Marks a field on {@link PropertySet} as a
* property of {@link MessageContext}.
*
* <p>
* To make the runtime processing easy, this annotation
* must be on a public field (since the property name
* can be set through {@link Map} anyway, you won't be
* losing abstraction by doing so.)
*
* <p>
* For similar reason, this annotation can be only placed
* on a reference type, not primitive type.
*
* @see Packet
* @author Kohsuke Kawaguchi
*/
@:native('com$sun$xml$internal$ws$api$PropertySet$Property') extern class PropertySet_Property
{
	
}
/**
* Represents the list of strongly-typed known propertyies
* (keyed by property names.)
*
* <p>
* Just giving it an alias to make the use of this class more fool-proof.
*/
@:native('com$sun$xml$internal$ws$api$PropertySet$PropertyMap') extern class PropertySet_PropertyMap extends java.util.HashMap<String, PropertySet_Accessor>
{
	
}
/**
* Represents a typed property defined on a {@link PropertySet}.
*/
@:native('com$sun$xml$internal$ws$api$PropertySet$Accessor') extern interface PropertySet_Accessor
{
	@:overload public function getName() : String;
	
	@:overload public function hasValue(props : PropertySet) : Bool;
	
	@:overload public function get(props : PropertySet) : Dynamic;
	
	@:overload public function set(props : PropertySet, value : Dynamic) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$api$PropertySet$FieldAccessor') @:internal extern class PropertySet_FieldAccessor implements PropertySet_Accessor
{
	@:overload private function new(f : java.lang.reflect.Field, name : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function hasValue(props : PropertySet) : Bool;
	
	@:overload public function get(props : PropertySet) : Dynamic;
	
	@:overload public function set(props : PropertySet, value : Dynamic) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$api$PropertySet$MethodAccessor') @:internal extern class PropertySet_MethodAccessor implements PropertySet_Accessor
{
	@:overload private function new(getter : java.lang.reflect.Method, setter : java.lang.reflect.Method, value : String) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function hasValue(props : PropertySet) : Bool;
	
	@:overload public function get(props : PropertySet) : Dynamic;
	
	@:overload public function set(props : PropertySet, value : Dynamic) : Void;
	
	
}
