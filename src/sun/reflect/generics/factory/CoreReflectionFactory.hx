package sun.reflect.generics.factory;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class CoreReflectionFactory implements sun.reflect.generics.factory.GenericsFactory
{
	/**
	* Factory for this class. Returns an instance of
	* <tt>CoreReflectionFactory</tt> for the declaration and scope
	* provided.
	* This factory will produce reflective objects of the appropriate
	* kind. Classes produced will be those that would be loaded by the
	* defining class loader of the declaration <tt>d</tt> (if <tt>d</tt>
	* is a type declaration, or by the defining loader of the declaring
	* class of <tt>d</tt>  otherwise.
	* <p> Type variables will be created or lookup as necessary in the
	* scope <tt> s</tt>.
	* @param d - the generic declaration (class, interface, method or
	* constructor) that thsi factory services
	* @param s  the scope in which the factory will allocate and search for
	* type variables
	* @return an instance of <tt>CoreReflectionFactory</tt>
	*/
	@:overload @:public @:static public static function make(d : java.lang.reflect.GenericDeclaration, s : sun.reflect.generics.scope.Scope) : sun.reflect.generics.factory.CoreReflectionFactory;
	
	@:overload @:public public function makeTypeVariable(name : String, bounds : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>) : java.lang.reflect.TypeVariable<Dynamic>;
	
	@:overload @:public public function makeWildcard(ubs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>, lbs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>) : java.lang.reflect.WildcardType;
	
	@:overload @:public public function makeParameterizedType(declaration : java.lang.reflect.Type, typeArgs : java.NativeArray<java.lang.reflect.Type>, owner : java.lang.reflect.Type) : java.lang.reflect.ParameterizedType;
	
	@:overload @:public public function findTypeVariable(name : String) : java.lang.reflect.TypeVariable<Dynamic>;
	
	@:overload @:public public function makeNamedType(name : String) : java.lang.reflect.Type;
	
	@:overload @:public public function makeArrayType(componentType : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	@:overload @:public public function makeByte() : java.lang.reflect.Type;
	
	@:overload @:public public function makeBool() : java.lang.reflect.Type;
	
	@:overload @:public public function makeShort() : java.lang.reflect.Type;
	
	@:overload @:public public function makeChar() : java.lang.reflect.Type;
	
	@:overload @:public public function makeInt() : java.lang.reflect.Type;
	
	@:overload @:public public function makeLong() : java.lang.reflect.Type;
	
	@:overload @:public public function makeFloat() : java.lang.reflect.Type;
	
	@:overload @:public public function makeDouble() : java.lang.reflect.Type;
	
	@:overload @:public public function makeVoid() : java.lang.reflect.Type;
	
	
}
