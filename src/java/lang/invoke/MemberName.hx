package java.lang.invoke;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* A {@code MemberName} is a compact symbolic datum which fully characterizes
* a method or field reference.
* A member name refers to a field, method, constructor, or member type.
* Every member name has a simple name (a string) and a type (either a Class or MethodType).
* A member name may also have a non-null declaring class, or it may be simply
* a naked name/type pair.
* A member name may also have non-zero modifier flags.
* Finally, a member name may be either resolved or unresolved.
* If it is resolved, the existence of the named
* <p>
* Whether resolved or not, a member name provides no access rights or
* invocation capability to its possessor.  It is merely a compact
* representation of all symbolic information necessary to link to
* and properly use the named member.
* <p>
* When resolved, a member name's internal implementation may include references to JVM metadata.
* This representation is stateless and only decriptive.
* It provides no private information and no capability to use the member.
* <p>
* By contrast, a {@linkplain java.lang.reflect.Method} contains fuller information
* about the internals of a method (except its bytecodes) and also
* allows invocation.  A MemberName is much lighter than a Method,
* since it contains about 7 fields to the 16 of Method (plus its sub-arrays),
* and those seven fields omit much of the information in Method.
* @author jrose
*/
/*non-public*/
@:internal extern class MemberName implements java.lang.reflect.Member implements java.lang.Cloneable
{
	/** Return the declaring class of this member.
	*  In the case of a bare name and type, the declaring class will be null.
	*/
	@:overload @:public public function getDeclaringClass() : Class<Dynamic>;
	
	/** Utility method producing the class loader of the declaring class. */
	@:overload @:public public function getClassLoader() : java.lang.ClassLoader;
	
	/** Return the simple name of this member.
	*  For a type, it is the same as {@link Class#getSimpleName}.
	*  For a method or field, it is the simple name of the member.
	*  For a constructor, it is always {@code "&lt;init&gt;"}.
	*/
	@:overload @:public public function getName() : String;
	
	/** Return the declared type of this member, which
	*  must be a method or constructor.
	*/
	@:overload @:public public function getMethodType() : java.lang.invoke.MethodType;
	
	/** Return the actual type under which this method or constructor must be invoked.
	*  For non-static methods or constructors, this is the type with a leading parameter,
	*  a reference to declaring class.  For static methods, it is the same as the declared type.
	*/
	@:overload @:public public function getInvocationType() : java.lang.invoke.MethodType;
	
	/** Utility method producing the parameter types of the method type. */
	@:overload @:public public function getParameterTypes() : java.NativeArray<Class<Dynamic>>;
	
	/** Utility method producing the return type of the method type. */
	@:overload @:public public function getReturnType() : Class<Dynamic>;
	
	/** Return the declared type of this member, which
	*  must be a field or type.
	*  If it is a type member, that type itself is returned.
	*/
	@:overload @:public public function getFieldType() : Class<Dynamic>;
	
	/** Utility method to produce either the method type or field type of this member. */
	@:overload @:public public function getType() : Dynamic;
	
	/** Utility method to produce the signature of this member,
	*  used within the class file format to describe its type.
	*/
	@:overload @:public public function getSignature() : String;
	
	/** Return the modifier flags of this member.
	*  @see java.lang.reflect.Modifier
	*/
	@:overload @:public public function getModifiers() : Int;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isStatic() : Bool;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isPublic() : Bool;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isPrivate() : Bool;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isProtected() : Bool;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isFinal() : Bool;
	
	/** Utility method to query the modifier flags of this member. */
	@:overload @:public public function isAbstract() : Bool;
	
	/** Utility method to query the modifier flags of this member; returns false if the member is not a method. */
	@:overload @:public public function isBridge() : Bool;
	
	/** Utility method to query the modifier flags of this member; returns false if the member is not a method. */
	@:overload @:public public function isVarargs() : Bool;
	
	/** Utility method to query the modifier flags of this member; returns false if the member is not a method. */
	@:overload @:public public function isSynthetic() : Bool;
	
	/** Utility method to query whether this member is a method or constructor. */
	@:overload @:public public function isInvocable() : Bool;
	
	/** Utility method to query whether this member is a method, constructor, or field. */
	@:overload @:public public function isFieldOrMethod() : Bool;
	
	/** Query whether this member is a method. */
	@:overload @:public public function isMethod() : Bool;
	
	/** Query whether this member is a constructor. */
	@:overload @:public public function isConstructor() : Bool;
	
	/** Query whether this member is a field. */
	@:overload @:public public function isField() : Bool;
	
	/** Query whether this member is a type. */
	@:overload @:public public function isType() : Bool;
	
	/** Utility method to query whether this member is neither public, private, nor protected. */
	@:overload @:public public function isPackage() : Bool;
	
	/** Create a name for the given reflected method.  The resulting name will be in a resolved state. */
	@:overload @:public public function new(m : java.lang.reflect.Method) : Void;
	
	/** Create a name for the given reflected constructor.  The resulting name will be in a resolved state. */
	@:overload @:public public function new(ctor : java.lang.reflect.Constructor<Dynamic>) : Void;
	
	/** Create a name for the given reflected field.  The resulting name will be in a resolved state. */
	@:overload @:public public function new(fld : java.lang.reflect.Field) : Void;
	
	/** Create a name for the given class.  The resulting name will be in a resolved state. */
	@:overload @:public public function new(type : Class<Dynamic>) : Void;
	
	@:overload @:protected private function clone() : java.lang.invoke.MemberName;
	
	/** Create a field or type name from the given components:  Declaring class, name, type, modifiers.
	*  The declaring class may be supplied as null if this is to be a bare name and type.
	*  The resulting name will in an unresolved state.
	*/
	@:overload @:public public function new(defClass : Class<Dynamic>, name : String, type : Class<Dynamic>, modifiers : Int) : Void;
	
	/** Create a field or type name from the given components:  Declaring class, name, type.
	*  The declaring class may be supplied as null if this is to be a bare name and type.
	*  The modifier flags default to zero.
	*  The resulting name will in an unresolved state.
	*/
	@:overload @:public public function new(defClass : Class<Dynamic>, name : String, type : Class<Dynamic>) : Void;
	
	/** Create a method or constructor name from the given components:  Declaring class, name, type, modifiers.
	*  It will be a constructor if and only if the name is {@code "&lt;init&gt;"}.
	*  The declaring class may be supplied as null if this is to be a bare name and type.
	*  The resulting name will in an unresolved state.
	*/
	@:overload @:public public function new(defClass : Class<Dynamic>, name : String, type : java.lang.invoke.MethodType, modifiers : Int) : Void;
	
	/** Create a method or constructor name from the given components:  Declaring class, name, type, modifiers.
	*  It will be a constructor if and only if the name is {@code "&lt;init&gt;"}.
	*  The declaring class may be supplied as null if this is to be a bare name and type.
	*  The modifier flags default to zero.
	*  The resulting name will in an unresolved state.
	*/
	@:overload @:public public function new(defClass : Class<Dynamic>, name : String, type : java.lang.invoke.MethodType) : Void;
	
	/** Query whether this member name is resolved.
	*  A resolved member name is one for which the JVM has found
	*  a method, constructor, field, or type binding corresponding exactly to the name.
	*  (Document?)
	*/
	@:overload @:public public function isResolved() : Bool;
	
	/** Query whether this member name is resolved to a non-static, non-final method.
	*/
	@:overload @:public public function hasReceiverTypeDispatch() : Bool;
	
	/** Produce a string form of this member name.
	*  For types, it is simply the type's own string (as reported by {@code toString}).
	*  For fields, it is {@code "DeclaringClass.name/type"}.
	*  For methods and constructors, it is {@code "DeclaringClass.name(ptype...)rtype"}.
	*  If the declaring class is null, the prefix {@code "DeclaringClass."} is omitted.
	*  If the member is unresolved, a prefix {@code "*."} is prepended.
	*/
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function makeAccessException(message : String, from : Dynamic) : java.lang.IllegalAccessException;
	
	@:overload @:public public function makeAccessException() : java.lang.ReflectiveOperationException;
	
	
}
/*non-public*/
@:native('java$lang$invoke$MemberName$Factory') @:internal extern class MemberName_Factory
{
	/** Produce a resolved version of the given member.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  If lookup fails or access is not permitted, null is returned.
	*  Otherwise a fresh copy of the given member is returned, with modifier bits filled in.
	*/
	@:overload @:public public function resolveOrNull(m : java.lang.invoke.MemberName, searchSupers : Bool, lookupClass : Class<Dynamic>) : java.lang.invoke.MemberName;
	
	/** Produce a resolved version of the given member.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  If lookup fails or access is not permitted, a {@linkplain ReflectiveOperationException} is thrown.
	*  Otherwise a fresh copy of the given member is returned, with modifier bits filled in.
	*/
	@:overload @:public public function resolveOrFail<NoSuchMemberException : java.lang.ReflectiveOperationException>(m : java.lang.invoke.MemberName, searchSupers : Bool, lookupClass : Class<Dynamic>, nsmClass : Class<NoSuchMemberException>) : java.lang.invoke.MemberName;
	
	/** Return a list of all methods defined by the given class.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getMethods(defc : Class<Dynamic>, searchSupers : Bool, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	/** Return a list of matching methods defined by the given class.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Returned methods will match the name (if not null) and the type (if not null).
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getMethods(defc : Class<Dynamic>, searchSupers : Bool, name : String, type : java.lang.invoke.MethodType, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	/** Return a list of all constructors defined by the given class.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getConstructors(defc : Class<Dynamic>, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	/** Return a list of all fields defined by the given class.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getFields(defc : Class<Dynamic>, searchSupers : Bool, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	/** Return a list of all fields defined by the given class.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Returned fields will match the name (if not null) and the type (if not null).
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getFields(defc : Class<Dynamic>, searchSupers : Bool, name : String, type : Class<Dynamic>, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	/** Return a list of all nested types defined by the given class.
	*  Super types are searched (for inherited members) if {@code searchSupers} is true.
	*  Access checking is performed on behalf of the given {@code lookupClass}.
	*  Inaccessible members are not added to the last.
	*/
	@:overload @:public public function getNestedTypes(defc : Class<Dynamic>, searchSupers : Bool, lookupClass : Class<Dynamic>) : java.util.List<java.lang.invoke.MemberName>;
	
	
}
