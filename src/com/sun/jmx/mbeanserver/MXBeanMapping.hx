package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MXBeanMapping
{
	/**
	* <p>Construct a mapping between the given Java type and the given
	* Open Type.</p>
	*
	* @param javaType the Java type (for example, {@code MyLinkedList}).
	* @param openType the Open Type (for example, {@code
	* ArrayType.getArrayType(SimpleType.STRING)})
	*
	* @throws NullPointerException if either argument is null.
	*/
	@:overload @:protected private function new(javaType : java.lang.reflect.Type, openType : javax.management.openmbean.OpenType<Dynamic>) : Void;
	
	/**
	* <p>The Java type that was supplied to the constructor.</p>
	* @return the Java type that was supplied to the constructor.
	*/
	@:overload @:public @:final public function getJavaType() : java.lang.reflect.Type;
	
	/**
	* <p>The Open Type that was supplied to the constructor.</p>
	* @return the Open Type that was supplied to the constructor.
	*/
	@:overload @:public @:final public function getOpenType() : javax.management.openmbean.OpenType<Dynamic>;
	
	/**
	* <p>The Java class that corresponds to instances of the
	* {@linkplain #getOpenType() Open Type} for this mapping.</p>
	* @return the Java class that corresponds to instances of the
	* Open Type for this mapping.
	* @see OpenType#getClassName
	*/
	@:overload @:public @:final public function getOpenClass() : Class<Dynamic>;
	
	/**
	* <p>Convert an instance of the Open Type into the Java type.
	* @param openValue the value to be converted.
	* @return the converted value.
	* @throws InvalidObjectException if the value cannot be converted.
	*/
	@:overload @:public @:abstract public function fromOpenValue(openValue : Dynamic) : Dynamic;
	
	/**
	* <p>Convert an instance of the Java type into the Open Type.
	* @param javaValue the value to be converted.
	* @return the converted value.
	* @throws OpenDataException if the value cannot be converted.
	*/
	@:overload @:public @:abstract public function toOpenValue(javaValue : Dynamic) : Dynamic;
	
	/**
	* <p>Throw an appropriate InvalidObjectException if we will not
	* be able to convert back from the open data to the original Java
	* object.  The {@link #fromOpenValue fromOpenValue} throws an
	* exception if a given open data value cannot be converted.  This
	* method throws an exception if <em>no</em> open data values can
	* be converted.  The default implementation of this method never
	* throws an exception.  Subclasses can override it as
	* appropriate.</p>
	* @throws InvalidObjectException if {@code fromOpenValue} will throw
	* an exception no matter what its argument is.
	*/
	@:overload @:public public function checkReconstructible() : Void;
	
	
}
