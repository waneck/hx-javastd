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
* A method type represents the arguments and return type accepted and
* returned by a method handle, or the arguments and return type passed
* and expected  by a method handle caller.  Method types must be properly
* matched between a method handle and all its callers,
* and the JVM's operations enforce this matching at, specifically
* during calls to {@link MethodHandle#invokeExact MethodHandle.invokeExact}
* and {@link MethodHandle#invoke MethodHandle.invoke}, and during execution
* of {@code invokedynamic} instructions.
* <p>
* The structure is a return type accompanied by any number of parameter types.
* The types (primitive, {@code void}, and reference) are represented by {@link Class} objects.
* (For ease of exposition, we treat {@code void} as if it were a type.
* In fact, it denotes the absence of a return type.)
* <p>
* All instances of {@code MethodType} are immutable.
* Two instances are completely interchangeable if they compare equal.
* Equality depends on pairwise correspondence of the return and parameter types and on nothing else.
* <p>
* This type can be created only by factory methods.
* All factory methods may cache values, though caching is not guaranteed.
* Some factory methods are static, while others are virtual methods which
* modify precursor method types, e.g., by changing a selected parameter.
* <p>
* Factory methods which operate on groups of parameter types
* are systematically presented in two versions, so that both Java arrays and
* Java lists can be used to work with groups of parameter types.
* The query methods {@code parameterArray} and {@code parameterList}
* also provide a choice between arrays and lists.
* <p>
* {@code MethodType} objects are sometimes derived from bytecode instructions
* such as {@code invokedynamic}, specifically from the type descriptor strings associated
* with the instructions in a class file's constant pool.
* <p>
* Like classes and strings, method types can also be represented directly
* in a class file's constant pool as constants.
* A method type may be loaded by an {@code ldc} instruction which refers
* to a suitable {@code CONSTANT_MethodType} constant pool entry.
* The entry refers to a {@code CONSTANT_Utf8} spelling for the descriptor string.
* For more details, see the <a href="package-summary.html#mtcon">package summary</a>.
* <p>
* When the JVM materializes a {@code MethodType} from a descriptor string,
* all classes named in the descriptor must be accessible, and will be loaded.
* (But the classes need not be initialized, as is the case with a {@code CONSTANT_Class}.)
* This loading may occur at any time before the {@code MethodType} object is first derived.
* @author John Rose, JSR 292 EG
*/
extern class MethodType implements java.io.Serializable
{
	/**
	* Finds or creates an instance of the given method type.
	* @param rtype  the return type
	* @param ptypes the parameter types
	* @return a method type with the given components
	* @throws NullPointerException if {@code rtype} or {@code ptypes} or any element of {@code ptypes} is null
	* @throws IllegalArgumentException if any element of {@code ptypes} is {@code void.class}
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>, ptypes : java.NativeArray<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with the given components.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @return a method type with the given components
	* @throws NullPointerException if {@code rtype} or {@code ptypes} or any element of {@code ptypes} is null
	* @throws IllegalArgumentException if any element of {@code ptypes} is {@code void.class}
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>, ptypes : java.util.List<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with the given components.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* The leading parameter type is prepended to the remaining array.
	* @return a method type with the given components
	* @throws NullPointerException if {@code rtype} or {@code ptype0} or {@code ptypes} or any element of {@code ptypes} is null
	* @throws IllegalArgumentException if {@code ptype0} or {@code ptypes} or any element of {@code ptypes} is {@code void.class}
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>, ptype0 : Class<Dynamic>, ptypes : java.NativeArray<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with the given components.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* The resulting method has no parameter types.
	* @return a method type with the given return value
	* @throws NullPointerException if {@code rtype} is null
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with the given components.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* The resulting method has the single given parameter type.
	* @return a method type with the given return value and parameter type
	* @throws NullPointerException if {@code rtype} or {@code ptype0} is null
	* @throws IllegalArgumentException if {@code ptype0} is {@code void.class}
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>, ptype0 : Class<Dynamic>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with the given components.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* The resulting method has the same parameter types as {@code ptypes},
	* and the specified return type.
	* @throws NullPointerException if {@code rtype} or {@code ptypes} is null
	*/
	@:overload public static function methodType(rtype : Class<Dynamic>, ptypes : java.lang.invoke.MethodType) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type whose components are {@code Object} with an optional trailing {@code Object[]} array.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* All parameters and the return type will be {@code Object},
	* except the final array parameter if any, which will be {@code Object[]}.
	* @param objectArgCount number of parameters (excluding the final array parameter if any)
	* @param finalArray whether there will be a trailing array parameter, of type {@code Object[]}
	* @return a generally applicable method type, for all calls of the given fixed argument count and a collected array of further arguments
	* @throws IllegalArgumentException if {@code objectArgCount} is negative or greater than 255 (or 254, if {@code finalArray} is true)
	* @see #genericMethodType(int)
	*/
	@:overload public static function genericMethodType(objectArgCount : Int, finalArray : Bool) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type whose components are all {@code Object}.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* All parameters and the return type will be Object.
	* @param objectArgCount number of parameters
	* @return a generally applicable method type, for all calls of the given argument count
	* @throws IllegalArgumentException if {@code objectArgCount} is negative or greater than 255
	* @see #genericMethodType(int, boolean)
	*/
	@:overload public static function genericMethodType(objectArgCount : Int) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with a single different parameter type.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param num    the index (zero-based) of the parameter type to change
	* @param nptype a new parameter type to replace the old one with
	* @return the same type, except with the selected parameter changed
	* @throws IndexOutOfBoundsException if {@code num} is not a valid index into {@code parameterArray()}
	* @throws IllegalArgumentException if {@code nptype} is {@code void.class}
	* @throws NullPointerException if {@code nptype} is null
	*/
	@:overload public function changeParameterType(num : Int, nptype : Class<Dynamic>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with additional parameter types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param num    the position (zero-based) of the inserted parameter type(s)
	* @param ptypesToInsert zero or more new parameter types to insert into the parameter list
	* @return the same type, except with the selected parameter(s) inserted
	* @throws IndexOutOfBoundsException if {@code num} is negative or greater than {@code parameterCount()}
	* @throws IllegalArgumentException if any element of {@code ptypesToInsert} is {@code void.class}
	*                                  or if the resulting method type would have more than 255 parameter slots
	* @throws NullPointerException if {@code ptypesToInsert} or any of its elements is null
	*/
	@:overload public function insertParameterTypes(num : Int, ptypesToInsert : java.NativeArray<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with additional parameter types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param ptypesToInsert zero or more new parameter types to insert after the end of the parameter list
	* @return the same type, except with the selected parameter(s) appended
	* @throws IllegalArgumentException if any element of {@code ptypesToInsert} is {@code void.class}
	*                                  or if the resulting method type would have more than 255 parameter slots
	* @throws NullPointerException if {@code ptypesToInsert} or any of its elements is null
	*/
	@:overload public function appendParameterTypes(ptypesToInsert : java.NativeArray<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with additional parameter types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param num    the position (zero-based) of the inserted parameter type(s)
	* @param ptypesToInsert zero or more new parameter types to insert into the parameter list
	* @return the same type, except with the selected parameter(s) inserted
	* @throws IndexOutOfBoundsException if {@code num} is negative or greater than {@code parameterCount()}
	* @throws IllegalArgumentException if any element of {@code ptypesToInsert} is {@code void.class}
	*                                  or if the resulting method type would have more than 255 parameter slots
	* @throws NullPointerException if {@code ptypesToInsert} or any of its elements is null
	*/
	@:overload public function insertParameterTypes(num : Int, ptypesToInsert : java.util.List<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with additional parameter types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param ptypesToInsert zero or more new parameter types to insert after the end of the parameter list
	* @return the same type, except with the selected parameter(s) appended
	* @throws IllegalArgumentException if any element of {@code ptypesToInsert} is {@code void.class}
	*                                  or if the resulting method type would have more than 255 parameter slots
	* @throws NullPointerException if {@code ptypesToInsert} or any of its elements is null
	*/
	@:overload public function appendParameterTypes(ptypesToInsert : java.util.List<Class<Dynamic>>) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with some parameter types omitted.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param start  the index (zero-based) of the first parameter type to remove
	* @param end    the index (greater than {@code start}) of the first parameter type after not to remove
	* @return the same type, except with the selected parameter(s) removed
	* @throws IndexOutOfBoundsException if {@code start} is negative or greater than {@code parameterCount()}
	*                                  or if {@code end} is negative or greater than {@code parameterCount()}
	*                                  or if {@code start} is greater than {@code end}
	*/
	@:overload public function dropParameterTypes(start : Int, end : Int) : java.lang.invoke.MethodType;
	
	/**
	* Finds or creates a method type with a different return type.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* @param nrtype a return parameter type to replace the old one with
	* @return the same type, except with the return type change
	* @throws NullPointerException if {@code nrtype} is null
	*/
	@:overload public function changeReturnType(nrtype : Class<Dynamic>) : java.lang.invoke.MethodType;
	
	/**
	* Reports if this type contains a primitive argument or return value.
	* The return type {@code void} counts as a primitive.
	* @return true if any of the types are primitives
	*/
	@:overload public function hasPrimitives() : Bool;
	
	/**
	* Reports if this type contains a wrapper argument or return value.
	* Wrappers are types which box primitive values, such as {@link Integer}.
	* The reference type {@code java.lang.Void} counts as a wrapper,
	* if it occurs as a return type.
	* @return true if any of the types are wrappers
	*/
	@:overload public function hasWrappers() : Bool;
	
	/**
	* Erases all reference types to {@code Object}.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* All primitive types (including {@code void}) will remain unchanged.
	* @return a version of the original type with all reference types replaced
	*/
	@:overload public function erase() : java.lang.invoke.MethodType;
	
	/**
	* Converts all types, both reference and primitive, to {@code Object}.
	* Convenience method for {@link #genericMethodType(int) genericMethodType}.
	* The expression {@code type.wrap().erase()} produces the same value
	* as {@code type.generic()}.
	* @return a version of the original type with all types replaced
	*/
	@:overload public function generic() : java.lang.invoke.MethodType;
	
	/**
	* Converts all primitive types to their corresponding wrapper types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* All reference types (including wrapper types) will remain unchanged.
	* A {@code void} return type is changed to the type {@code java.lang.Void}.
	* The expression {@code type.wrap().erase()} produces the same value
	* as {@code type.generic()}.
	* @return a version of the original type with all primitive types replaced
	*/
	@:overload public function wrap() : java.lang.invoke.MethodType;
	
	/**
	* Converts all wrapper types to their corresponding primitive types.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* All primitive types (including {@code void}) will remain unchanged.
	* A return type of {@code java.lang.Void} is changed to {@code void}.
	* @return a version of the original type with all wrapper types replaced
	*/
	@:overload public function unwrap() : java.lang.invoke.MethodType;
	
	/**
	* Returns the parameter type at the specified index, within this method type.
	* @param num the index (zero-based) of the desired parameter type
	* @return the selected parameter type
	* @throws IndexOutOfBoundsException if {@code num} is not a valid index into {@code parameterArray()}
	*/
	@:overload public function parameterType(num : Int) : Class<Dynamic>;
	
	/**
	* Returns the number of parameter types in this method type.
	* @return the number of parameter types
	*/
	@:overload public function parameterCount() : Int;
	
	/**
	* Returns the return type of this method type.
	* @return the return type
	*/
	@:overload public function returnType() : Class<Dynamic>;
	
	/**
	* Presents the parameter types as a list (a convenience method).
	* The list will be immutable.
	* @return the parameter types (as an immutable list)
	*/
	@:overload public function parameterList() : java.util.List<Class<Dynamic>>;
	
	/**
	* Presents the parameter types as an array (a convenience method).
	* Changes to the array will not result in changes to the type.
	* @return the parameter types (as a fresh copy if necessary)
	*/
	@:overload public function parameterArray() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Compares the specified object with this type for equality.
	* That is, it returns <tt>true</tt> if and only if the specified object
	* is also a method type with exactly the same parameters and return type.
	* @param x object to compare
	* @see Object#equals(Object)
	*/
	@:overload public function equals(x : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this method type.
	* It is defined to be the same as the hashcode of a List
	* whose elements are the return type followed by the
	* parameter types.
	* @return the hash code value for this method type
	* @see Object#hashCode()
	* @see #equals(Object)
	* @see List#hashCode()
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of the method type,
	* of the form {@code "(PT0,PT1...)RT"}.
	* The string representation of a method type is a
	* parenthesis enclosed, comma separated list of type names,
	* followed immediately by the return type.
	* <p>
	* Each type is represented by its
	* {@link java.lang.Class#getSimpleName simple name}.
	*/
	@:overload public function toString() : String;
	
	/**
	* Finds or creates an instance of a method type, given the spelling of its bytecode descriptor.
	* Convenience method for {@link #methodType(java.lang.Class, java.lang.Class[]) methodType}.
	* Any class or interface name embedded in the descriptor string
	* will be resolved by calling {@link ClassLoader#loadClass(java.lang.String)}
	* on the given loader (or if it is null, on the system class loader).
	* <p>
	* Note that it is possible to encounter method types which cannot be
	* constructed by this method, because their component types are
	* not all reachable from a common class loader.
	* <p>
	* This method is included for the benfit of applications that must
	* generate bytecodes that process method handles and {@code invokedynamic}.
	* @param descriptor a bytecode-level type descriptor string "(T...)T"
	* @param loader the class loader in which to look up the types
	* @return a method type matching the bytecode-level type descriptor
	* @throws NullPointerException if the string is null
	* @throws IllegalArgumentException if the string is not well-formed
	* @throws TypeNotPresentException if a named type cannot be found
	*/
	@:overload public static function fromMethodDescriptorString(descriptor : String, loader : java.lang.ClassLoader) : java.lang.invoke.MethodType;
	
	/**
	* Produces a bytecode descriptor representation of the method type.
	* <p>
	* Note that this is not a strict inverse of {@link #fromMethodDescriptorString fromMethodDescriptorString}.
	* Two distinct classes which share a common name but have different class loaders
	* will appear identical when viewed within descriptor strings.
	* <p>
	* This method is included for the benfit of applications that must
	* generate bytecodes that process method handles and {@code invokedynamic}.
	* {@link #fromMethodDescriptorString(java.lang.String, java.lang.ClassLoader) fromMethodDescriptorString},
	* because the latter requires a suitable class loader argument.
	* @return the bytecode type descriptor representation
	*/
	@:overload public function toMethodDescriptorString() : String;
	
	
}
