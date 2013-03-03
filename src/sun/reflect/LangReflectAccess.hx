package sun.reflect;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
/** An interface which gives privileged packages Java-level access to
internals of java.lang.reflect. */
extern interface LangReflectAccess
{
	/** Creates a new java.lang.reflect.Field. Access checks as per
	java.lang.reflect.AccessibleObject are not overridden. */
	@:overload @:public public function newField(declaringClass : Class<Dynamic>, name : String, type : Class<Dynamic>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Field;
	
	/** Creates a new java.lang.reflect.Method. Access checks as per
	java.lang.reflect.AccessibleObject are not overridden. */
	@:overload @:public public function newMethod(declaringClass : Class<Dynamic>, name : String, parameterTypes : java.NativeArray<Class<Dynamic>>, returnType : Class<Dynamic>, checkedExceptions : java.NativeArray<Class<Dynamic>>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>, parameterAnnotations : java.NativeArray<java.StdTypes.Int8>, annotationDefault : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Method;
	
	/** Creates a new java.lang.reflect.Constructor. Access checks as
	per java.lang.reflect.AccessibleObject are not overridden. */
	@:overload @:public public function newConstructor<T>(declaringClass : Class<T>, parameterTypes : java.NativeArray<Class<Dynamic>>, checkedExceptions : java.NativeArray<Class<Dynamic>>, modifiers : Int, slot : Int, signature : String, annotations : java.NativeArray<java.StdTypes.Int8>, parameterAnnotations : java.NativeArray<java.StdTypes.Int8>) : java.lang.reflect.Constructor<T>;
	
	/** Gets the MethodAccessor object for a java.lang.reflect.Method */
	@:overload @:public public function getMethodAccessor(m : java.lang.reflect.Method) : sun.reflect.MethodAccessor;
	
	/** Sets the MethodAccessor object for a java.lang.reflect.Method */
	@:overload @:public public function setMethodAccessor(m : java.lang.reflect.Method, accessor : sun.reflect.MethodAccessor) : Void;
	
	/** Gets the ConstructorAccessor object for a
	java.lang.reflect.Constructor */
	@:overload @:public public function getConstructorAccessor(c : java.lang.reflect.Constructor<Dynamic>) : sun.reflect.ConstructorAccessor;
	
	/** Sets the ConstructorAccessor object for a
	java.lang.reflect.Constructor */
	@:overload @:public public function setConstructorAccessor(c : java.lang.reflect.Constructor<Dynamic>, accessor : sun.reflect.ConstructorAccessor) : Void;
	
	/** Gets the "slot" field from a Constructor (used for serialization) */
	@:overload @:public public function getConstructorSlot(c : java.lang.reflect.Constructor<Dynamic>) : Int;
	
	/** Gets the "signature" field from a Constructor (used for serialization) */
	@:overload @:public public function getConstructorSignature(c : java.lang.reflect.Constructor<Dynamic>) : String;
	
	/** Gets the "annotations" field from a Constructor (used for serialization) */
	@:overload @:public public function getConstructorAnnotations(c : java.lang.reflect.Constructor<Dynamic>) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Gets the "parameterAnnotations" field from a Constructor (used for serialization) */
	@:overload @:public public function getConstructorParameterAnnotations(c : java.lang.reflect.Constructor<Dynamic>) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Makes a "child" copy of a Method */
	@:overload @:public public function copyMethod(arg : java.lang.reflect.Method) : java.lang.reflect.Method;
	
	/** Makes a "child" copy of a Field */
	@:overload @:public public function copyField(arg : java.lang.reflect.Field) : java.lang.reflect.Field;
	
	/** Makes a "child" copy of a Constructor */
	@:overload @:public public function copyConstructor<T>(arg : java.lang.reflect.Constructor<T>) : java.lang.reflect.Constructor<T>;
	
	
}
