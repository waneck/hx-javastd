package sun.misc;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
* A collection of methods for performing low-level, unsafe operations.
* Although the class and all methods are public, use of this class is
* limited because only trusted code can obtain instances of it.
*
* @author John R. Rose
* @see #getUnsafe
*/
extern class Unsafe
{
	/**
	* Provides the caller with the capability of performing unsafe
	* operations.
	*
	* <p> The returned <code>Unsafe</code> object should be carefully guarded
	* by the caller, since it can be used to read and write data at arbitrary
	* memory addresses.  It must never be passed to untrusted code.
	*
	* <p> Most methods in this class are very low-level, and correspond to a
	* small number of hardware instructions (on typical machines).  Compilers
	* are encouraged to optimize these methods accordingly.
	*
	* <p> Here is a suggested idiom for using unsafe operations:
	*
	* <blockquote><pre>
	* class MyTrustedClass {
	*   private static final Unsafe unsafe = Unsafe.getUnsafe();
	*   ...
	*   private long myCountAddress = ...;
	*   public int getCount() { return unsafe.getByte(myCountAddress); }
	* }
	* </pre></blockquote>
	*
	* (It may assist compilers to make the local variable be
	* <code>final</code>.)
	*
	* @exception  SecurityException  if a security manager exists and its
	*             <code>checkPropertiesAccess</code> method doesn't allow
	*             access to the system properties.
	*/
	@:overload @:public @:static public static function getUnsafe() : sun.misc.Unsafe;
	
	/**
	* Fetches a value from a given Java variable.
	* More specifically, fetches a field or array element within the given
	* object <code>o</code> at the given offset, or (if <code>o</code> is
	* null) from the memory address whose numerical value is the given
	* offset.
	* <p>
	* The results are undefined unless one of the following cases is true:
	* <ul>
	* <li>The offset was obtained from {@link #objectFieldOffset} on
	* the {@link java.lang.reflect.Field} of some Java field and the object
	* referred to by <code>o</code> is of a class compatible with that
	* field's class.
	*
	* <li>The offset and object reference <code>o</code> (either null or
	* non-null) were both obtained via {@link #staticFieldOffset}
	* and {@link #staticFieldBase} (respectively) from the
	* reflective {@link Field} representation of some Java field.
	*
	* <li>The object referred to by <code>o</code> is an array, and the offset
	* is an integer of the form <code>B+N*S</code>, where <code>N</code> is
	* a valid index into the array, and <code>B</code> and <code>S</code> are
	* the values obtained by {@link #arrayBaseOffset} and {@link
	* #arrayIndexScale} (respectively) from the array's class.  The value
	* referred to is the <code>N</code><em>th</em> element of the array.
	*
	* </ul>
	* <p>
	* If one of the above cases is true, the call references a specific Java
	* variable (field or array element).  However, the results are undefined
	* if that variable is not in fact of the type returned by this method.
	* <p>
	* This method refers to a variable by means of two parameters, and so
	* it provides (in effect) a <em>double-register</em> addressing mode
	* for Java variables.  When the object reference is null, this method
	* uses its offset as an absolute address.  This is similar in operation
	* to methods such as {@link #getInt(long)}, which provide (in effect) a
	* <em>single-register</em> addressing mode for non-Java variables.
	* However, because Java variables may have a different layout in memory
	* from non-Java variables, programmers should not assume that these
	* two addressing modes are ever equivalent.  Also, programmers should
	* remember that offsets from the double-register addressing mode cannot
	* be portably confused with longs used in the single-register addressing
	* mode.
	*
	* @param o Java heap object in which the variable resides, if any, else
	*        null
	* @param offset indication of where the variable resides in a Java heap
	*        object, if any, else a memory address locating the variable
	*        statically
	* @return the value fetched from the indicated Java variable
	* @throws RuntimeException No defined exceptions are thrown, not even
	*         {@link NullPointerException}
	*/
	@:overload @:public @:native public function getInt(o : Dynamic, offset : haxe.Int64) : Int;
	
	/**
	* Stores a value into a given Java variable.
	* <p>
	* The first two parameters are interpreted exactly as with
	* {@link #getInt(Object, long)} to refer to a specific
	* Java variable (field or array element).  The given value
	* is stored into that variable.
	* <p>
	* The variable must be of the same type as the method
	* parameter <code>x</code>.
	*
	* @param o Java heap object in which the variable resides, if any, else
	*        null
	* @param offset indication of where the variable resides in a Java heap
	*        object, if any, else a memory address locating the variable
	*        statically
	* @param x the value to store into the indicated Java variable
	* @throws RuntimeException No defined exceptions are thrown, not even
	*         {@link NullPointerException}
	*/
	@:overload @:public @:native public function putInt(o : Dynamic, offset : haxe.Int64, x : Int) : Void;
	
	/**
	* Fetches a reference value from a given Java variable.
	* @see #getInt(Object, long)
	*/
	@:overload @:public @:native public function getObject(o : Dynamic, offset : haxe.Int64) : Dynamic;
	
	/**
	* Stores a reference value into a given Java variable.
	* <p>
	* Unless the reference <code>x</code> being stored is either null
	* or matches the field type, the results are undefined.
	* If the reference <code>o</code> is non-null, car marks or
	* other store barriers for that object (if the VM requires them)
	* are updated.
	* @see #putInt(Object, int, int)
	*/
	@:overload @:public @:native public function putObject(o : Dynamic, offset : haxe.Int64, x : Dynamic) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getBoolean(o : Dynamic, offset : haxe.Int64) : Bool;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putBoolean(o : Dynamic, offset : haxe.Int64, x : Bool) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getByte(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int8;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putByte(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int8) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getShort(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int16;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putShort(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int16) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getChar(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Char16;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putChar(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Char16) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getLong(o : Dynamic, offset : haxe.Int64) : haxe.Int64;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putLong(o : Dynamic, offset : haxe.Int64, x : haxe.Int64) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getFloat(o : Dynamic, offset : haxe.Int64) : Single;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putFloat(o : Dynamic, offset : haxe.Int64, x : Single) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:public @:native public function getDouble(o : Dynamic, offset : haxe.Int64) : Float;
	
	/** @see #putInt(Object, int, int) */
	@:overload @:public @:native public function putDouble(o : Dynamic, offset : haxe.Int64, x : Float) : Void;
	
	/**
	* This method, like all others with 32-bit offsets, was native
	* in a previous release but is now a wrapper which simply casts
	* the offset to a long value.  It provides backward compatibility
	* with bytecodes compiled against 1.4.
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getInt(o : Dynamic, offset : Int) : Int;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putInt(o : Dynamic, offset : Int, x : Int) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getObject(o : Dynamic, offset : Int) : Dynamic;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putObject(o : Dynamic, offset : Int, x : Dynamic) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getBoolean(o : Dynamic, offset : Int) : Bool;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putBoolean(o : Dynamic, offset : Int, x : Bool) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getByte(o : Dynamic, offset : Int) : java.StdTypes.Int8;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putByte(o : Dynamic, offset : Int, x : java.StdTypes.Int8) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getShort(o : Dynamic, offset : Int) : java.StdTypes.Int16;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putShort(o : Dynamic, offset : Int, x : java.StdTypes.Int16) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getChar(o : Dynamic, offset : Int) : java.StdTypes.Char16;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putChar(o : Dynamic, offset : Int, x : java.StdTypes.Char16) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getLong(o : Dynamic, offset : Int) : haxe.Int64;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putLong(o : Dynamic, offset : Int, x : haxe.Int64) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getFloat(o : Dynamic, offset : Int) : Single;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putFloat(o : Dynamic, offset : Int, x : Single) : Void;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function getDouble(o : Dynamic, offset : Int) : Float;
	
	/**
	* @deprecated As of 1.4.1, cast the 32-bit offset argument to a long.
	* See {@link #staticFieldOffset}.
	*/
	@:overload @:public public function putDouble(o : Dynamic, offset : Int, x : Float) : Void;
	
	/**
	* Fetches a value from a given memory address.  If the address is zero, or
	* does not point into a block obtained from {@link #allocateMemory}, the
	* results are undefined.
	*
	* @see #allocateMemory
	*/
	@:overload @:public @:native public function getByte(address : haxe.Int64) : java.StdTypes.Int8;
	
	/**
	* Stores a value into a given memory address.  If the address is zero, or
	* does not point into a block obtained from {@link #allocateMemory}, the
	* results are undefined.
	*
	* @see #getByte(long)
	*/
	@:overload @:public @:native public function putByte(address : haxe.Int64, x : java.StdTypes.Int8) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getShort(address : haxe.Int64) : java.StdTypes.Int16;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putShort(address : haxe.Int64, x : java.StdTypes.Int16) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getChar(address : haxe.Int64) : java.StdTypes.Char16;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putChar(address : haxe.Int64, x : java.StdTypes.Char16) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getInt(address : haxe.Int64) : Int;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putInt(address : haxe.Int64, x : Int) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getLong(address : haxe.Int64) : haxe.Int64;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putLong(address : haxe.Int64, x : haxe.Int64) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getFloat(address : haxe.Int64) : Single;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putFloat(address : haxe.Int64, x : Single) : Void;
	
	/** @see #getByte(long) */
	@:overload @:public @:native public function getDouble(address : haxe.Int64) : Float;
	
	/** @see #putByte(long, byte) */
	@:overload @:public @:native public function putDouble(address : haxe.Int64, x : Float) : Void;
	
	/**
	* Fetches a native pointer from a given memory address.  If the address is
	* zero, or does not point into a block obtained from {@link
	* #allocateMemory}, the results are undefined.
	*
	* <p> If the native pointer is less than 64 bits wide, it is extended as
	* an unsigned number to a Java long.  The pointer may be indexed by any
	* given byte offset, simply by adding that offset (as a simple integer) to
	* the long representing the pointer.  The number of bytes actually read
	* from the target address maybe determined by consulting {@link
	* #addressSize}.
	*
	* @see #allocateMemory
	*/
	@:overload @:public @:native public function getAddress(address : haxe.Int64) : haxe.Int64;
	
	/**
	* Stores a native pointer into a given memory address.  If the address is
	* zero, or does not point into a block obtained from {@link
	* #allocateMemory}, the results are undefined.
	*
	* <p> The number of bytes actually written at the target address maybe
	* determined by consulting {@link #addressSize}.
	*
	* @see #getAddress(long)
	*/
	@:overload @:public @:native public function putAddress(address : haxe.Int64, x : haxe.Int64) : Void;
	
	/**
	* Allocates a new block of native memory, of the given size in bytes.  The
	* contents of the memory are uninitialized; they will generally be
	* garbage.  The resulting native pointer will never be zero, and will be
	* aligned for all value types.  Dispose of this memory by calling {@link
	* #freeMemory}, or resize it with {@link #reallocateMemory}.
	*
	* @throws IllegalArgumentException if the size is negative or too large
	*         for the native size_t type
	*
	* @throws OutOfMemoryError if the allocation is refused by the system
	*
	* @see #getByte(long)
	* @see #putByte(long, byte)
	*/
	@:overload @:public @:native public function allocateMemory(bytes : haxe.Int64) : haxe.Int64;
	
	/**
	* Resizes a new block of native memory, to the given size in bytes.  The
	* contents of the new block past the size of the old block are
	* uninitialized; they will generally be garbage.  The resulting native
	* pointer will be zero if and only if the requested size is zero.  The
	* resulting native pointer will be aligned for all value types.  Dispose
	* of this memory by calling {@link #freeMemory}, or resize it with {@link
	* #reallocateMemory}.  The address passed to this method may be null, in
	* which case an allocation will be performed.
	*
	* @throws IllegalArgumentException if the size is negative or too large
	*         for the native size_t type
	*
	* @throws OutOfMemoryError if the allocation is refused by the system
	*
	* @see #allocateMemory
	*/
	@:overload @:public @:native public function reallocateMemory(address : haxe.Int64, bytes : haxe.Int64) : haxe.Int64;
	
	/**
	* Sets all bytes in a given block of memory to a fixed value
	* (usually zero).
	*
	* <p>This method determines a block's base address by means of two parameters,
	* and so it provides (in effect) a <em>double-register</em> addressing mode,
	* as discussed in {@link #getInt(Object,long)}.  When the object reference is null,
	* the offset supplies an absolute base address.
	*
	* <p>The stores are in coherent (atomic) units of a size determined
	* by the address and length parameters.  If the effective address and
	* length are all even modulo 8, the stores take place in 'long' units.
	* If the effective address and length are (resp.) even modulo 4 or 2,
	* the stores take place in units of 'int' or 'short'.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:native public function setMemory(o : Dynamic, offset : haxe.Int64, bytes : haxe.Int64, value : java.StdTypes.Int8) : Void;
	
	/**
	* Sets all bytes in a given block of memory to a fixed value
	* (usually zero).  This provides a <em>single-register</em> addressing mode,
	* as discussed in {@link #getInt(Object,long)}.
	*
	* <p>Equivalent to <code>setMemory(null, address, bytes, value)</code>.
	*/
	@:overload @:public public function setMemory(address : haxe.Int64, bytes : haxe.Int64, value : java.StdTypes.Int8) : Void;
	
	/**
	* Sets all bytes in a given block of memory to a copy of another
	* block.
	*
	* <p>This method determines each block's base address by means of two parameters,
	* and so it provides (in effect) a <em>double-register</em> addressing mode,
	* as discussed in {@link #getInt(Object,long)}.  When the object reference is null,
	* the offset supplies an absolute base address.
	*
	* <p>The transfers are in coherent (atomic) units of a size determined
	* by the address and length parameters.  If the effective addresses and
	* length are all even modulo 8, the transfer takes place in 'long' units.
	* If the effective addresses and length are (resp.) even modulo 4 or 2,
	* the transfer takes place in units of 'int' or 'short'.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public @:native public function copyMemory(srcBase : Dynamic, srcOffset : haxe.Int64, destBase : Dynamic, destOffset : haxe.Int64, bytes : haxe.Int64) : Void;
	
	/**
	* Sets all bytes in a given block of memory to a copy of another
	* block.  This provides a <em>single-register</em> addressing mode,
	* as discussed in {@link #getInt(Object,long)}.
	*
	* Equivalent to <code>copyMemory(null, srcAddress, null, destAddress, bytes)</code>.
	*/
	@:overload @:public public function copyMemory(srcAddress : haxe.Int64, destAddress : haxe.Int64, bytes : haxe.Int64) : Void;
	
	/**
	* Disposes of a block of native memory, as obtained from {@link
	* #allocateMemory} or {@link #reallocateMemory}.  The address passed to
	* this method may be null, in which case no action is taken.
	*
	* @see #allocateMemory
	*/
	@:overload @:public @:native public function freeMemory(address : haxe.Int64) : Void;
	
	/**
	* This constant differs from all results that will ever be returned from
	* {@link #staticFieldOffset}, {@link #objectFieldOffset},
	* or {@link #arrayBaseOffset}.
	*/
	@:public @:static @:final public static var INVALID_FIELD_OFFSET(default, null) : Int;
	
	/**
	* Returns the offset of a field, truncated to 32 bits.
	* This method is implemented as follows:
	* <blockquote><pre>
	* public int fieldOffset(Field f) {
	*     if (Modifier.isStatic(f.getModifiers()))
	*         return (int) staticFieldOffset(f);
	*     else
	*         return (int) objectFieldOffset(f);
	* }
	* </pre></blockquote>
	* @deprecated As of 1.4.1, use {@link #staticFieldOffset} for static
	* fields and {@link #objectFieldOffset} for non-static fields.
	*/
	@:overload @:public public function fieldOffset(f : java.lang.reflect.Field) : Int;
	
	/**
	* Returns the base address for accessing some static field
	* in the given class.  This method is implemented as follows:
	* <blockquote><pre>
	* public Object staticFieldBase(Class c) {
	*     Field[] fields = c.getDeclaredFields();
	*     for (int i = 0; i < fields.length; i++) {
	*         if (Modifier.isStatic(fields[i].getModifiers())) {
	*             return staticFieldBase(fields[i]);
	*         }
	*     }
	*     return null;
	* }
	* </pre></blockquote>
	* @deprecated As of 1.4.1, use {@link #staticFieldBase(Field)}
	* to obtain the base pertaining to a specific {@link Field}.
	* This method works only for JVMs which store all statics
	* for a given class in one place.
	*/
	@:overload @:public public function staticFieldBase(c : Class<Dynamic>) : Dynamic;
	
	/**
	* Report the location of a given field in the storage allocation of its
	* class.  Do not expect to perform any sort of arithmetic on this offset;
	* it is just a cookie which is passed to the unsafe heap memory accessors.
	*
	* <p>Any given field will always have the same offset and base, and no
	* two distinct fields of the same class will ever have the same offset
	* and base.
	*
	* <p>As of 1.4.1, offsets for fields are represented as long values,
	* although the Sun JVM does not use the most significant 32 bits.
	* However, JVM implementations which store static fields at absolute
	* addresses can use long offsets and null base pointers to express
	* the field locations in a form usable by {@link #getInt(Object,long)}.
	* Therefore, code which will be ported to such JVMs on 64-bit platforms
	* must preserve all bits of static field offsets.
	* @see #getInt(Object, long)
	*/
	@:overload @:public @:native public function staticFieldOffset(f : java.lang.reflect.Field) : haxe.Int64;
	
	/**
	* Report the location of a given static field, in conjunction with {@link
	* #staticFieldBase}.
	* <p>Do not expect to perform any sort of arithmetic on this offset;
	* it is just a cookie which is passed to the unsafe heap memory accessors.
	*
	* <p>Any given field will always have the same offset, and no two distinct
	* fields of the same class will ever have the same offset.
	*
	* <p>As of 1.4.1, offsets for fields are represented as long values,
	* although the Sun JVM does not use the most significant 32 bits.
	* It is hard to imagine a JVM technology which needs more than
	* a few bits to encode an offset within a non-array object,
	* However, for consistency with other methods in this class,
	* this method reports its result as a long value.
	* @see #getInt(Object, long)
	*/
	@:overload @:public @:native public function objectFieldOffset(f : java.lang.reflect.Field) : haxe.Int64;
	
	/**
	* Report the location of a given static field, in conjunction with {@link
	* #staticFieldOffset}.
	* <p>Fetch the base "Object", if any, with which static fields of the
	* given class can be accessed via methods like {@link #getInt(Object,
	* long)}.  This value may be null.  This value may refer to an object
	* which is a "cookie", not guaranteed to be a real Object, and it should
	* not be used in any way except as argument to the get and put routines in
	* this class.
	*/
	@:overload @:public @:native public function staticFieldBase(f : java.lang.reflect.Field) : Dynamic;
	
	/**
	* Ensure the given class has been initialized. This is often
	* needed in conjunction with obtaining the static field base of a
	* class.
	*/
	@:overload @:public @:native public function ensureClassInitialized(c : Class<Dynamic>) : Void;
	
	/**
	* Report the offset of the first element in the storage allocation of a
	* given array class.  If {@link #arrayIndexScale} returns a non-zero value
	* for the same class, you may use that scale factor, together with this
	* base offset, to form new offsets to access elements of arrays of the
	* given class.
	*
	* @see #getInt(Object, long)
	* @see #putInt(Object, long, int)
	*/
	@:overload @:public @:native public function arrayBaseOffset(arrayClass : Class<Dynamic>) : Int;
	
	/** The value of {@code arrayBaseOffset(boolean[].class)} */
	@:public @:static @:final public static var ARRAY_BOOLEAN_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(byte[].class)} */
	@:public @:static @:final public static var ARRAY_BYTE_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(short[].class)} */
	@:public @:static @:final public static var ARRAY_SHORT_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(char[].class)} */
	@:public @:static @:final public static var ARRAY_CHAR_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(int[].class)} */
	@:public @:static @:final public static var ARRAY_INT_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(long[].class)} */
	@:public @:static @:final public static var ARRAY_LONG_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(float[].class)} */
	@:public @:static @:final public static var ARRAY_FLOAT_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(double[].class)} */
	@:public @:static @:final public static var ARRAY_DOUBLE_BASE_OFFSET(default, null) : Int;
	
	/** The value of {@code arrayBaseOffset(Object[].class)} */
	@:public @:static @:final public static var ARRAY_OBJECT_BASE_OFFSET(default, null) : Int;
	
	/**
	* Report the scale factor for addressing elements in the storage
	* allocation of a given array class.  However, arrays of "narrow" types
	* will generally not work properly with accessors like {@link
	* #getByte(Object, int)}, so the scale factor for such classes is reported
	* as zero.
	*
	* @see #arrayBaseOffset
	* @see #getInt(Object, long)
	* @see #putInt(Object, long, int)
	*/
	@:overload @:public @:native public function arrayIndexScale(arrayClass : Class<Dynamic>) : Int;
	
	/** The value of {@code arrayIndexScale(boolean[].class)} */
	@:public @:static @:final public static var ARRAY_BOOLEAN_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(byte[].class)} */
	@:public @:static @:final public static var ARRAY_BYTE_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(short[].class)} */
	@:public @:static @:final public static var ARRAY_SHORT_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(char[].class)} */
	@:public @:static @:final public static var ARRAY_CHAR_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(int[].class)} */
	@:public @:static @:final public static var ARRAY_INT_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(long[].class)} */
	@:public @:static @:final public static var ARRAY_LONG_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(float[].class)} */
	@:public @:static @:final public static var ARRAY_FLOAT_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(double[].class)} */
	@:public @:static @:final public static var ARRAY_DOUBLE_INDEX_SCALE(default, null) : Int;
	
	/** The value of {@code arrayIndexScale(Object[].class)} */
	@:public @:static @:final public static var ARRAY_OBJECT_INDEX_SCALE(default, null) : Int;
	
	/**
	* Report the size in bytes of a native pointer, as stored via {@link
	* #putAddress}.  This value will be either 4 or 8.  Note that the sizes of
	* other primitive types (as stored in native memory blocks) is determined
	* fully by their information content.
	*/
	@:overload @:public @:native public function addressSize() : Int;
	
	/** The value of {@code addressSize()} */
	@:public @:static @:final public static var ADDRESS_SIZE(default, null) : Int;
	
	/**
	* Report the size in bytes of a native memory page (whatever that is).
	* This value will always be a power of two.
	*/
	@:overload @:public @:native public function pageSize() : Int;
	
	/**
	* Tell the VM to define a class, without security checks.  By default, the
	* class loader and protection domain come from the caller's class.
	*/
	@:overload @:public @:native public function defineClass(name : String, b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, loader : java.lang.ClassLoader, protectionDomain : java.security.ProtectionDomain) : Class<Dynamic>;
	
	@:overload @:public @:native public function defineClass(name : String, b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Class<Dynamic>;
	
	/**
	* Define a class but do not make it known to the class loader or system dictionary.
	* <p>
	* For each CP entry, the corresponding CP patch must either be null or have
	* the a format that matches its tag:
	* <ul>
	* <li>Integer, Long, Float, Double: the corresponding wrapper object type from java.lang
	* <li>Utf8: a string (must have suitable syntax if used as signature or name)
	* <li>Class: any java.lang.Class object
	* <li>String: any object (not just a java.lang.String)
	* <li>InterfaceMethodRef: (NYI) a method handle to invoke on that call site's arguments
	* </ul>
	* @params hostClass context for linkage, access control, protection domain, and class loader
	* @params data      bytes of a class file
	* @params cpPatches where non-null entries exist, they replace corresponding CP entries in data
	*/
	@:overload @:public @:native public function defineAnonymousClass(hostClass : Class<Dynamic>, data : java.NativeArray<java.StdTypes.Int8>, cpPatches : java.NativeArray<Dynamic>) : Class<Dynamic>;
	
	/** Allocate an instance but do not run any constructor.
	Initializes the class if it has not yet been. */
	@:overload @:public @:native public function allocateInstance(cls : Class<Dynamic>) : Dynamic;
	
	/** Lock the object.  It must get unlocked via {@link #monitorExit}. */
	@:overload @:public @:native public function monitorEnter(o : Dynamic) : Void;
	
	/**
	* Unlock the object.  It must have been locked via {@link
	* #monitorEnter}.
	*/
	@:overload @:public @:native public function monitorExit(o : Dynamic) : Void;
	
	/**
	* Tries to lock the object.  Returns true or false to indicate
	* whether the lock succeeded.  If it did, the object must be
	* unlocked via {@link #monitorExit}.
	*/
	@:overload @:public @:native public function tryMonitorEnter(o : Dynamic) : Bool;
	
	/** Throw the exception without telling the verifier. */
	@:overload @:public @:native public function throwException(ee : java.lang.Throwable) : Void;
	
	/**
	* Atomically update Java variable to <tt>x</tt> if it is currently
	* holding <tt>expected</tt>.
	* @return <tt>true</tt> if successful
	*/
	@:overload @:public @:final @:native public function compareAndSwapObject(o : Dynamic, offset : haxe.Int64, expected : Dynamic, x : Dynamic) : Bool;
	
	/**
	* Atomically update Java variable to <tt>x</tt> if it is currently
	* holding <tt>expected</tt>.
	* @return <tt>true</tt> if successful
	*/
	@:overload @:public @:final @:native public function compareAndSwapInt(o : Dynamic, offset : haxe.Int64, expected : Int, x : Int) : Bool;
	
	/**
	* Atomically update Java variable to <tt>x</tt> if it is currently
	* holding <tt>expected</tt>.
	* @return <tt>true</tt> if successful
	*/
	@:overload @:public @:final @:native public function compareAndSwapLong(o : Dynamic, offset : haxe.Int64, expected : haxe.Int64, x : haxe.Int64) : Bool;
	
	/**
	* Fetches a reference value from a given Java variable, with volatile
	* load semantics. Otherwise identical to {@link #getObject(Object, long)}
	*/
	@:overload @:public @:native public function getObjectVolatile(o : Dynamic, offset : haxe.Int64) : Dynamic;
	
	/**
	* Stores a reference value into a given Java variable, with
	* volatile store semantics. Otherwise identical to {@link #putObject(Object, long, Object)}
	*/
	@:overload @:public @:native public function putObjectVolatile(o : Dynamic, offset : haxe.Int64, x : Dynamic) : Void;
	
	/** Volatile version of {@link #getInt(Object, long)}  */
	@:overload @:public @:native public function getIntVolatile(o : Dynamic, offset : haxe.Int64) : Int;
	
	/** Volatile version of {@link #putInt(Object, long, int)}  */
	@:overload @:public @:native public function putIntVolatile(o : Dynamic, offset : haxe.Int64, x : Int) : Void;
	
	/** Volatile version of {@link #getBoolean(Object, long)}  */
	@:overload @:public @:native public function getBooleanVolatile(o : Dynamic, offset : haxe.Int64) : Bool;
	
	/** Volatile version of {@link #putBoolean(Object, long, boolean)}  */
	@:overload @:public @:native public function putBooleanVolatile(o : Dynamic, offset : haxe.Int64, x : Bool) : Void;
	
	/** Volatile version of {@link #getByte(Object, long)}  */
	@:overload @:public @:native public function getByteVolatile(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int8;
	
	/** Volatile version of {@link #putByte(Object, long, byte)}  */
	@:overload @:public @:native public function putByteVolatile(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int8) : Void;
	
	/** Volatile version of {@link #getShort(Object, long)}  */
	@:overload @:public @:native public function getShortVolatile(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int16;
	
	/** Volatile version of {@link #putShort(Object, long, short)}  */
	@:overload @:public @:native public function putShortVolatile(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int16) : Void;
	
	/** Volatile version of {@link #getChar(Object, long)}  */
	@:overload @:public @:native public function getCharVolatile(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Char16;
	
	/** Volatile version of {@link #putChar(Object, long, char)}  */
	@:overload @:public @:native public function putCharVolatile(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Char16) : Void;
	
	/** Volatile version of {@link #getLong(Object, long)}  */
	@:overload @:public @:native public function getLongVolatile(o : Dynamic, offset : haxe.Int64) : haxe.Int64;
	
	/** Volatile version of {@link #putLong(Object, long, long)}  */
	@:overload @:public @:native public function putLongVolatile(o : Dynamic, offset : haxe.Int64, x : haxe.Int64) : Void;
	
	/** Volatile version of {@link #getFloat(Object, long)}  */
	@:overload @:public @:native public function getFloatVolatile(o : Dynamic, offset : haxe.Int64) : Single;
	
	/** Volatile version of {@link #putFloat(Object, long, float)}  */
	@:overload @:public @:native public function putFloatVolatile(o : Dynamic, offset : haxe.Int64, x : Single) : Void;
	
	/** Volatile version of {@link #getDouble(Object, long)}  */
	@:overload @:public @:native public function getDoubleVolatile(o : Dynamic, offset : haxe.Int64) : Float;
	
	/** Volatile version of {@link #putDouble(Object, long, double)}  */
	@:overload @:public @:native public function putDoubleVolatile(o : Dynamic, offset : haxe.Int64, x : Float) : Void;
	
	/**
	* Version of {@link #putObjectVolatile(Object, long, Object)}
	* that does not guarantee immediate visibility of the store to
	* other threads. This method is generally only useful if the
	* underlying field is a Java volatile (or if an array cell, one
	* that is otherwise only accessed using volatile accesses).
	*/
	@:overload @:public @:native public function putOrderedObject(o : Dynamic, offset : haxe.Int64, x : Dynamic) : Void;
	
	/** Ordered/Lazy version of {@link #putIntVolatile(Object, long, int)}  */
	@:overload @:public @:native public function putOrderedInt(o : Dynamic, offset : haxe.Int64, x : Int) : Void;
	
	/** Ordered/Lazy version of {@link #putLongVolatile(Object, long, long)} */
	@:overload @:public @:native public function putOrderedLong(o : Dynamic, offset : haxe.Int64, x : haxe.Int64) : Void;
	
	/**
	* Unblock the given thread blocked on <tt>park</tt>, or, if it is
	* not blocked, cause the subsequent call to <tt>park</tt> not to
	* block.  Note: this operation is "unsafe" solely because the
	* caller must somehow ensure that the thread has not been
	* destroyed. Nothing special is usually required to ensure this
	* when called from Java (in which there will ordinarily be a live
	* reference to the thread) but this is not nearly-automatically
	* so when calling from native code.
	* @param thread the thread to unpark.
	*
	*/
	@:overload @:public @:native public function unpark(thread : Dynamic) : Void;
	
	/**
	* Block current thread, returning when a balancing
	* <tt>unpark</tt> occurs, or a balancing <tt>unpark</tt> has
	* already occurred, or the thread is interrupted, or, if not
	* absolute and time is not zero, the given time nanoseconds have
	* elapsed, or if absolute, the given deadline in milliseconds
	* since Epoch has passed, or spuriously (i.e., returning for no
	* "reason"). Note: This operation is in the Unsafe class only
	* because <tt>unpark</tt> is, so it would be strange to place it
	* elsewhere.
	*/
	@:overload @:public @:native public function park(isAbsolute : Bool, time : haxe.Int64) : Void;
	
	/**
	* Gets the load average in the system run queue assigned
	* to the available processors averaged over various periods of time.
	* This method retrieves the given <tt>nelem</tt> samples and
	* assigns to the elements of the given <tt>loadavg</tt> array.
	* The system imposes a maximum of 3 samples, representing
	* averages over the last 1,  5,  and  15 minutes, respectively.
	*
	* @params loadavg an array of double of size nelems
	* @params nelems the number of samples to be retrieved and
	*         must be 1 to 3.
	*
	* @return the number of samples actually retrieved; or -1
	*         if the load average is unobtainable.
	*/
	@:overload @:public @:native public function getLoadAverage(loadavg : java.NativeArray<Float>, nelems : Int) : Int;
	
	
}
