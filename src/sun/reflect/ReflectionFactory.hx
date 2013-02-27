package sun.reflect;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ReflectionFactory
{
	/**
	* Provides the caller with the capability to instantiate reflective
	* objects.
	*
	* <p> First, if there is a security manager, its
	* <code>checkPermission</code> method is called with a {@link
	* java.lang.RuntimePermission} with target
	* <code>"reflectionFactoryAccess"</code>.  This may result in a
	* security exception.
	*
	* <p> The returned <code>ReflectionFactory</code> object should be
	* carefully guarded by the caller, since it can be used to read and
	* write private data and invoke private methods, as well as to load
	* unverified bytecodes.  It must never be passed to untrusted code.
	*
	* @exception SecurityException if a security manager exists and its
	*             <code>checkPermission</code> method doesn't allow
	*             access to the RuntimePermission "reflectionFactoryAccess".  */
	@:overload public static function getReflectionFactory() : ReflectionFactory;
	
	/** Called only by java.lang.reflect.Modifier's static initializer */
	@:overload public function setLangReflectAccess(access : sun.reflect.LangReflectAccess) : Void;
	
	/**
	* Note: this routine can cause the declaring class for the field
	* be initialized and therefore must not be called until the
	* first get/set of this field.
	* @param field the field
	* @param override true if caller has overridden aaccessibility
	*/
	@:overload public function newFieldAccessor(field : java.lang.reflect.Field, _override : Bool) : sun.reflect.FieldAccessor;
	
	@:overload public function newMethodAccessor(method : java.lang.reflect.Method) : sun.reflect.MethodAccessor;
	
	@:overload public function newConstructorAccessor(c : java.lang.reflect.Constructor<Dynamic>) : sun.reflect.ConstructorAccessor;
	
	/** Creates a new java.lang.reflect.Field. Access checks as per
	java.lang.reflect.AccessibleObject are not overridden. */
	@:overload public function newField(declaringClass : Class<Dynamic>, name : String, type : Class<Dynamic>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Field;
	
	/** Creates a new java.lang.reflect.Method. Access checks as per
	java.lang.reflect.AccessibleObject are not overridden. */
	@:overload public function newMethod(declaringClass : Class<Dynamic>, name : String, parameterTypes : java.NativeArray<Class<Dynamic>>, returnType : Class<Dynamic>, checkedExceptions : java.NativeArray<Class<Dynamic>>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>, parameterAnnotations : java.NativeArray<java.StdTypes.Int8>, annotationDefault : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Method;
	
	/** Creates a new java.lang.reflect.Constructor. Access checks as
	per java.lang.reflect.AccessibleObject are not overridden. */
	@:overload public function newConstructor(declaringClass : Class<Dynamic>, parameterTypes : java.NativeArray<Class<Dynamic>>, checkedExceptions : java.NativeArray<Class<Dynamic>>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>, parameterAnnotations : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Constructor<Dynamic>;
	
	/** Gets the MethodAccessor object for a java.lang.reflect.Method */
	@:overload public function getMethodAccessor(m : java.lang.reflect.Method) : sun.reflect.MethodAccessor;
	
	/** Sets the MethodAccessor object for a java.lang.reflect.Method */
	@:overload public function setMethodAccessor(m : java.lang.reflect.Method, accessor : sun.reflect.MethodAccessor) : Void;
	
	/** Gets the ConstructorAccessor object for a
	java.lang.reflect.Constructor */
	@:overload public function getConstructorAccessor(c : java.lang.reflect.Constructor<Dynamic>) : sun.reflect.ConstructorAccessor;
	
	/** Sets the ConstructorAccessor object for a
	java.lang.reflect.Constructor */
	@:overload public function setConstructorAccessor(c : java.lang.reflect.Constructor<Dynamic>, accessor : sun.reflect.ConstructorAccessor) : Void;
	
	/** Makes a copy of the passed method. The returned method is a
	"child" of the passed one; see the comments in Method.java for
	details. */
	@:overload public function copyMethod(arg : java.lang.reflect.Method) : java.lang.reflect.Method;
	
	/** Makes a copy of the passed field. The returned field is a
	"child" of the passed one; see the comments in Field.java for
	details. */
	@:overload public function copyField(arg : java.lang.reflect.Field) : java.lang.reflect.Field;
	
	/** Makes a copy of the passed constructor. The returned
	constructor is a "child" of the passed one; see the comments
	in Constructor.java for details. */
	@:overload public function copyConstructor<T>(arg : java.lang.reflect.Constructor<T>) : java.lang.reflect.Constructor<T>;
	
	@:overload public function newConstructorForSerialization(classToInstantiate : Class<Dynamic>, constructorToCall : java.lang.reflect.Constructor<Dynamic>) : java.lang.reflect.Constructor<Dynamic>;
	
	
}
/**
* A convenience class for acquiring the capability to instantiate
* reflective objects.  Use this instead of a raw call to {@link
* #getReflectionFactory} in order to avoid being limited by the
* permissions of your callers.
*
* <p>An instance of this class can be used as the argument of
* <code>AccessController.doPrivileged</code>.
*/
@:native('sun$reflect$ReflectionFactory$GetReflectionFactoryAction') extern class ReflectionFactory_GetReflectionFactoryAction implements java.security.PrivilegedAction<ReflectionFactory>
{
	@:overload public function run() : ReflectionFactory;
	
	
}
