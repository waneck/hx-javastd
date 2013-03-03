package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultMXBeanMappingFactory extends com.sun.jmx.mbeanserver.MXBeanMappingFactory
{
	/** Get the converter for the given Java type, creating it if necessary. */
	@:overload @:public @:synchronized override public function mappingForType(objType : java.lang.reflect.Type, factory : com.sun.jmx.mbeanserver.MXBeanMappingFactory) : com.sun.jmx.mbeanserver.MXBeanMapping;
	
	/**
	* Utility method to take a string and convert it to normal Java variable
	* name capitalization.  This normally means converting the first
	* character from upper case to lower case, but in the (unusual) special
	* case when there is more than one character and both the first and
	* second characters are upper case, we leave it alone.
	* <p>
	* Thus "FooBah" becomes "fooBah" and "X" becomes "x", but "URL" stays
	* as "URL".
	*
	* @param  name The string to be decapitalized.
	* @return  The decapitalized version of the string.
	*/
	@:overload @:public @:static public static function decapitalize(name : String) : String;
	
	@:overload @:public @:static public static function propertyName(m : java.lang.reflect.Method) : String;
	
	
}
/**
*   <p>A converter between Java types and the limited set of classes
*   defined by Open MBeans.</p>
*
*   <p>A Java type is an instance of java.lang.reflect.Type.  For our
*   purposes, it is either a Class, such as String.class or int.class;
*   or a ParameterizedType, such as List<String> or Map<Integer,
*   String[]>.  On J2SE 1.4 and earlier, it can only be a Class.</p>
*
*   <p>Each Type is associated with an DefaultMXBeanMappingFactory.  The
*   DefaultMXBeanMappingFactory defines an OpenType corresponding to the Type, plus a
*   Java class corresponding to the OpenType.  For example:</p>
*
*   <pre>
*   Type                     Open class     OpenType
*   ----                     ----------     --------
*   Integer                Integer        SimpleType.INTEGER
*   int                            int            SimpleType.INTEGER
*   Integer[]              Integer[]      ArrayType(1, SimpleType.INTEGER)
*   int[]                  Integer[]      ArrayType(SimpleType.INTEGER, true)
*   String[][]             String[][]     ArrayType(2, SimpleType.STRING)
*   List<String>                   String[]       ArrayType(1, SimpleType.STRING)
*   ThreadState (an Enum)    String         SimpleType.STRING
*   Map<Integer, String[]>   TabularData          TabularType(
*                                           CompositeType(
*                                             {"key", SimpleType.INTEGER},
*                                             {"value",
*                                               ArrayType(1,
*                                                SimpleType.STRING)}),
*                                           indexNames={"key"})
*   </pre>
*
*   <p>Apart from simple types, arrays, and collections, Java types are
*   converted through introspection into CompositeType.  The Java type
*   must have at least one getter (method such as "int getSize()" or
*   "boolean isBig()"), and we must be able to deduce how to
*   reconstruct an instance of the Java class from the values of the
*   getters using one of various heuristics.</p>
*
* @since 1.6
*/
@:require(java6) @:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$NonNullMXBeanMapping') @:internal extern class DefaultMXBeanMappingFactory_NonNullMXBeanMapping extends com.sun.jmx.mbeanserver.MXBeanMapping
{
	@:overload @:public @:final override public function fromOpenValue(openValue : Dynamic) : Dynamic;
	
	@:overload @:public @:final override public function toOpenValue(javaValue : Dynamic) : Dynamic;
	
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$Mappings') @:internal extern class DefaultMXBeanMappingFactory_Mappings extends java.util.WeakHashMap<java.lang.reflect.Type, java.lang.ref.WeakReference<com.sun.jmx.mbeanserver.MXBeanMapping>>
{
	
}
/* Converter for classes where the open data is identical to the
original data.  This is true for any of the SimpleType types,
and for an any-dimension array of those.  It is also true for
primitive types as of JMX 1.3, since an int[]
can be directly represented by an ArrayType, and an int needs no mapping
because reflection takes care of it.  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$IdentityMapping') @:internal extern class DefaultMXBeanMappingFactory_IdentityMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$EnumMapping') @:internal extern class DefaultMXBeanMappingFactory_EnumMapping<T> extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$ArrayMapping') @:internal extern class DefaultMXBeanMappingFactory_ArrayMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	@:overload @:public override public function checkReconstructible() : Void;
	
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CollectionMapping') @:internal extern class DefaultMXBeanMappingFactory_CollectionMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	@:overload @:public override public function checkReconstructible() : Void;
	
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$MXBeanRefMapping') @:internal extern class DefaultMXBeanMappingFactory_MXBeanRefMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$TabularMapping') @:internal extern class DefaultMXBeanMappingFactory_TabularMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	@:overload @:public override public function checkReconstructible() : Void;
	
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeMapping') @:internal extern class DefaultMXBeanMappingFactory_CompositeMapping extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_NonNullMXBeanMapping
{
	@:overload @:public override public function checkReconstructible() : Void;
	
	
}
/** Converts from a CompositeData to an instance of the targetClass.  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilder') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
/** Builder for when the target class has a method "public static
from(CompositeData)".  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderViaFrom') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderViaFrom extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
/** This builder never actually returns success.  It simply serves
to check whether the other builders in the same group have any
chance of success.  If any getter in the targetClass returns
a type that we don't know how to reconstruct, then we will
not be able to make a builder, and there is no point in repeating
the error about the problematic getter as many times as there are
candidate builders.  Instead, the "applicable" method will return
an explanatory string, and the other builders will be skipped.
If all the getters are OK, then the "applicable" method will return
an empty string and the other builders will be tried.  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderCheckGetters') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderCheckGetters extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
/** Builder for when the target class has a setter for every getter. */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderViaSetters') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderViaSetters extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
/** Builder for when the target class has a constructor that is
annotated with @ConstructorProperties so we can see the correspondence
to getters.  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderViaConstructor') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderViaConstructor extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderViaConstructor$Constr') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderViaConstructor_Constr
{
	
}
/** Builder for when the target class is an interface and contains
no methods other than getters.  Then we can make an instance
using a dynamic proxy that forwards the getters to the source
CompositeData.  */
@:native('com$sun$jmx$mbeanserver$DefaultMXBeanMappingFactory$CompositeBuilderViaProxy') @:internal extern class DefaultMXBeanMappingFactory_CompositeBuilderViaProxy extends com.sun.jmx.mbeanserver.DefaultMXBeanMappingFactory.DefaultMXBeanMappingFactory_CompositeBuilder
{
	
}
