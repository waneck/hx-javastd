package com.sun.tools.hat.internal.model;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/*
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
extern class JavaClass extends com.sun.tools.hat.internal.model.JavaHeapObject
{
	@:overload public function new(id : haxe.Int64, name : String, superclassId : haxe.Int64, loaderId : haxe.Int64, signersId : haxe.Int64, protDomainId : haxe.Int64, fields : java.NativeArray<com.sun.tools.hat.internal.model.JavaField>, statics : java.NativeArray<com.sun.tools.hat.internal.model.JavaStatic>, instanceSize : Int) : Void;
	
	@:overload public function new(name : String, superclassId : haxe.Int64, loaderId : haxe.Int64, signersId : haxe.Int64, protDomainId : haxe.Int64, fields : java.NativeArray<com.sun.tools.hat.internal.model.JavaField>, statics : java.NativeArray<com.sun.tools.hat.internal.model.JavaStatic>, instanceSize : Int) : Void;
	
	@:overload @:final override public function getClazz() : JavaClass;
	
	@:overload @:final public function getIdentifierSize() : Int;
	
	@:overload @:final public function getMinimumObjectSize() : Int;
	
	@:overload override public function resolve(snapshot : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	/**
	* Resolve our superclass.  This might be called well before
	* all instances are available (like when reading deferred
	* instances in a 1.2 dump file :-)  Calling this is sufficient
	* to be able to explore this class' fields.
	*/
	@:overload public function resolveSuperclass(snapshot : com.sun.tools.hat.internal.model.Snapshot) : Void;
	
	@:overload public function isString() : Bool;
	
	@:overload public function isClassLoader() : Bool;
	
	/**
	* Get a numbered field from this class
	*/
	@:overload public function getField(i : Int) : com.sun.tools.hat.internal.model.JavaField;
	
	/**
	* Get the total number of fields that are part of an instance of
	* this class.  That is, include superclasses.
	*/
	@:overload public function getNumFieldsForInstance() : Int;
	
	/**
	* Get a numbered field from all the fields that are part of instance
	* of this class.  That is, include superclasses.
	*/
	@:overload public function getFieldForInstance(i : Int) : com.sun.tools.hat.internal.model.JavaField;
	
	/**
	* Get the class responsible for field i, where i is a field number that
	* could be passed into getFieldForInstance.
	*
	* @see JavaClass.getFieldForInstance()
	*/
	@:overload public function getClassForField(i : Int) : JavaClass;
	
	@:overload override public function getId() : haxe.Int64;
	
	@:overload public function getName() : String;
	
	@:overload public function isArray() : Bool;
	
	@:overload public function getInstances(includeSubclasses : Bool) : java.util.Enumeration<Dynamic>;
	
	/**
	* @return a count of the instances of this class
	*/
	@:overload public function getInstancesCount(includeSubclasses : Bool) : Int;
	
	@:overload public function getSubclasses() : java.NativeArray<JavaClass>;
	
	/**
	* This can only safely be called after resolve()
	*/
	@:overload public function getSuperclass() : JavaClass;
	
	/**
	* This can only safely be called after resolve()
	*/
	@:overload public function getLoader() : com.sun.tools.hat.internal.model.JavaThing;
	
	/**
	* This can only safely be called after resolve()
	*/
	@:overload public function isBootstrap() : Bool;
	
	/**
	* This can only safely be called after resolve()
	*/
	@:overload public function getSigners() : com.sun.tools.hat.internal.model.JavaThing;
	
	/**
	* This can only safely be called after resolve()
	*/
	@:overload public function getProtectionDomain() : com.sun.tools.hat.internal.model.JavaThing;
	
	@:overload public function getFields() : java.NativeArray<com.sun.tools.hat.internal.model.JavaField>;
	
	/**
	* Includes superclass fields
	*/
	@:overload public function getFieldsForInstance() : java.NativeArray<com.sun.tools.hat.internal.model.JavaField>;
	
	@:overload public function getStatics() : java.NativeArray<com.sun.tools.hat.internal.model.JavaStatic>;
	
	@:overload public function getStaticField(name : String) : com.sun.tools.hat.internal.model.JavaThing;
	
	@:overload override public function toString() : String;
	
	@:overload override public function compareTo(other : com.sun.tools.hat.internal.model.JavaThing) : Int;
	
	/**
	* @return true iff a variable of type this is assignable from an instance
	*          of other
	*/
	@:overload public function isAssignableFrom(other : JavaClass) : Bool;
	
	/**
	* Describe the reference that this thing has to target.  This will only
	* be called if target is in the array returned by getChildrenForRootset.
	*/
	@:overload override public function describeReferenceTo(target : com.sun.tools.hat.internal.model.JavaThing, ss : com.sun.tools.hat.internal.model.Snapshot) : String;
	
	/**
	* @return the size of an instance of this class.  Gives 0 for an array
	*          type.
	*/
	@:overload public function getInstanceSize() : Int;
	
	/**
	* @return The size of all instances of this class.  Correctly handles
	*          arrays.
	*/
	@:overload public function getTotalInstanceSize() : haxe.Int64;
	
	/**
	* @return the size of this object
	*/
	@:overload override public function getSize() : Int;
	
	@:overload override public function visitReferencedObjects(v : com.sun.tools.hat.internal.model.JavaHeapObjectVisitor) : Void;
	
	
}
