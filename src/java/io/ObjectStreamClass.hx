package java.io;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectStreamClass implements java.io.Serializable
{
	/** serialPersistentFields value indicating no serializable fields */
	@:public @:static @:final public static var NO_FIELDS(default, null) : java.NativeArray<java.io.ObjectStreamField>;
	
	/**
	* Find the descriptor for a class that can be serialized.  Creates an
	* ObjectStreamClass instance if one does not exist yet for class. Null is
	* returned if the specified class does not implement java.io.Serializable
	* or java.io.Externalizable.
	*
	* @param   cl class for which to get the descriptor
	* @return  the class descriptor for the specified class
	*/
	@:overload @:public @:static public static function lookup(cl : Class<Dynamic>) : java.io.ObjectStreamClass;
	
	/**
	* Returns the descriptor for any class, regardless of whether it
	* implements {@link Serializable}.
	*
	* @param        cl class for which to get the descriptor
	* @return       the class descriptor for the specified class
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function lookupAny(cl : Class<Dynamic>) : java.io.ObjectStreamClass;
	
	/**
	* Returns the name of the class described by this descriptor.
	* This method returns the name of the class in the format that
	* is used by the {@link Class#getName} method.
	*
	* @return a string representing the name of the class
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the serialVersionUID for this class.  The serialVersionUID
	* defines a set of classes all with the same name that have evolved from a
	* common root class and agree to be serialized and deserialized using a
	* common format.  NonSerializable classes have a serialVersionUID of 0L.
	*
	* @return  the SUID of the class described by this descriptor
	*/
	@:overload @:public public function getSerialVersionUID() : haxe.Int64;
	
	/**
	* Return the class in the local VM that this version is mapped to.  Null
	* is returned if there is no corresponding local class.
	*
	* @return  the <code>Class</code> instance that this descriptor represents
	*/
	@:overload @:public public function forClass() : Class<Dynamic>;
	
	/**
	* Return an array of the fields of this serializable class.
	*
	* @return  an array containing an element for each persistent field of
	*          this class. Returns an array of length zero if there are no
	*          fields.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getFields() : java.NativeArray<java.io.ObjectStreamField>;
	
	/**
	* Get the field of this class by name.
	*
	* @param   name the name of the data field to look for
	* @return  The ObjectStreamField object of the named field or null if
	*          there is no such named field.
	*/
	@:overload @:public public function getField(name : String) : java.io.ObjectStreamField;
	
	/**
	* Return a string describing this ObjectStreamClass.
	*/
	@:overload @:public public function toString() : String;
	
	
}
@:native('java$io$ObjectStreamClass$Caches') @:internal extern class ObjectStreamClass_Caches
{
	
}
/**
* Contains information about InvalidClassException instances to be thrown
* when attempting operations on an invalid class. Note that instances of
* this class are immutable and are potentially shared among
* ObjectStreamClass instances.
*/
@:native('java$io$ObjectStreamClass$ExceptionInfo') @:internal extern class ObjectStreamClass_ExceptionInfo
{
	
}
/**
* Placeholder used in class descriptor and field reflector lookup tables
* for an entry in the process of being initialized.  (Internal) callers
* which receive an EntryFuture belonging to another thread as the result
* of a lookup should call the get() method of the EntryFuture; this will
* return the actual entry once it is ready for use and has been set().  To
* conserve objects, EntryFutures synchronize on themselves.
*/
@:native('java$io$ObjectStreamClass$EntryFuture') @:internal extern class ObjectStreamClass_EntryFuture
{
	
}
/**
* Class representing the portion of an object's serialized form allotted
* to data described by a given class descriptor.  If "hasData" is false,
* the object's serialized form does not contain data associated with the
* class descriptor.
*/
@:native('java$io$ObjectStreamClass$ClassDataSlot') @:internal extern class ObjectStreamClass_ClassDataSlot
{
	
}
/**
* Class for computing and caching field/constructor/method signatures
* during serialVersionUID calculation.
*/
@:native('java$io$ObjectStreamClass$MemberSignature') @:internal extern class ObjectStreamClass_MemberSignature
{
	@:public @:final public var member(default, null) : java.lang.reflect.Member;
	
	@:public @:final public var name(default, null) : String;
	
	@:public @:final public var signature(default, null) : String;
	
	@:overload @:public public function new(field : java.lang.reflect.Field) : Void;
	
	@:overload @:public public function new(cons : java.lang.reflect.Constructor<Dynamic>) : Void;
	
	@:overload @:public public function new(meth : java.lang.reflect.Method) : Void;
	
	
}
/**
* Class for setting and retrieving serializable field values in batch.
*/
@:native('java$io$ObjectStreamClass$FieldReflector') @:internal extern class ObjectStreamClass_FieldReflector
{
	
}
/**
* FieldReflector cache lookup key.  Keys are considered equal if they
* refer to the same class and equivalent field formats.
*/
@:native('java$io$ObjectStreamClass$FieldReflectorKey') @:internal extern class ObjectStreamClass_FieldReflectorKey extends java.lang.ref.WeakReference<Class<Dynamic>>
{
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
*  Weak key for Class objects.
*
**/
@:native('java$io$ObjectStreamClass$WeakClassKey') @:internal extern class ObjectStreamClass_WeakClassKey extends java.lang.ref.WeakReference<Class<Dynamic>>
{
	/**
	* Returns the identity hash code of the original referent.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns true if the given object is this identical
	* WeakClassKey instance, or, if this object's referent has not
	* been cleared, if the given object is another WeakClassKey
	* instance with the identical non-null referent as this one.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
