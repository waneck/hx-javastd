package sun.corba;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Bridge
{
	/** Fetch the Bridge singleton.  This requires the following
	* permissions:
	* <ul>
	* <li>RuntimePermission "reflectionFactoryAccess"</li>
	* <li>BridgePermission "getBridge"</li>
	* <li>ReflectPermission "suppressAccessChecks"</li>
	* </ul>
	* @return The singleton instance of the Bridge class
	* @throws SecurityException if the caller does not have the
	* required permissions and the caller has a non-null security manager.
	*/
	@:overload @:final @:synchronized public static function get() : sun.corba.Bridge;
	
	/** Obtain the latest user defined ClassLoader from the call stack.
	* This is required by the RMI-IIOP specification.
	*/
	@:overload @:final public function getLatestUserDefinedLoader() : java.lang.ClassLoader;
	
	/**
	* Fetches a field element within the given
	* object <code>o</code> at the given offset.
	* The result is undefined unless the offset was obtained from
	* {@link #objectFieldOffset} on the {@link java.lang.reflect.Field}
	* of some Java field and the object referred to by <code>o</code>
	* is of a class compatible with that field's class.
	* @param o Java heap object in which the field from which the offset
	* was obtained resides
	* @param offset indication of where the field resides in a Java heap
	*        object
	* @return the value fetched from the indicated Java field
	* @throws RuntimeException No defined exceptions are thrown, not even
	*         {@link NullPointerException}
	*/
	@:overload @:final public function getInt(o : Dynamic, offset : haxe.Int64) : Int;
	
	/**
	* Stores a value into a given Java field.
	* <p>
	* The first two parameters are interpreted exactly as with
	* {@link #getInt(Object, long)} to refer to a specific
	* Java field.  The given value is stored into that field.
	* <p>
	* The field must be of the same type as the method
	* parameter <code>x</code>.
	*
	* @param o Java heap object in which the field resides, if any, else
	*        null
	* @param offset indication of where the field resides in a Java heap
	*        object.
	* @param x the value to store into the indicated Java field
	* @throws RuntimeException No defined exceptions are thrown, not even
	*         {@link NullPointerException}
	*/
	@:overload @:final public function putInt(o : Dynamic, offset : haxe.Int64, x : Int) : Void;
	
	/**
	* @see #getInt(Object, long)
	*/
	@:overload @:final public function getObject(o : Dynamic, offset : haxe.Int64) : Dynamic;
	
	/**
	* @see #putInt(Object, long, int)
	*/
	@:overload @:final public function putObject(o : Dynamic, offset : haxe.Int64, x : Dynamic) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getBoolean(o : Dynamic, offset : haxe.Int64) : Bool;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putBoolean(o : Dynamic, offset : haxe.Int64, x : Bool) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getByte(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int8;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putByte(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int8) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getShort(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Int16;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putShort(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Int16) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getChar(o : Dynamic, offset : haxe.Int64) : java.StdTypes.Char16;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putChar(o : Dynamic, offset : haxe.Int64, x : java.StdTypes.Char16) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getLong(o : Dynamic, offset : haxe.Int64) : haxe.Int64;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putLong(o : Dynamic, offset : haxe.Int64, x : haxe.Int64) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getFloat(o : Dynamic, offset : haxe.Int64) : Single;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putFloat(o : Dynamic, offset : haxe.Int64, x : Single) : Void;
	
	/** @see #getInt(Object, long) */
	@:overload @:final public function getDouble(o : Dynamic, offset : haxe.Int64) : Float;
	
	/** @see #putInt(Object, long, int) */
	@:overload @:final public function putDouble(o : Dynamic, offset : haxe.Int64, x : Float) : Void;
	
	/**
	* This constant differs from all results that will ever be returned from
	* {@link #objectFieldOffset}.
	*/
	public static var INVALID_FIELD_OFFSET(default, null) : haxe.Int64;
	
	/**
	* Returns the offset of a non-static field.
	*/
	@:overload @:final public function objectFieldOffset(f : java.lang.reflect.Field) : haxe.Int64;
	
	/** Throw the exception.
	* The exception may be an undeclared checked exception.
	*/
	@:overload @:final public function throwException(ee : java.lang.Throwable) : Void;
	
	/** Obtain a constructor for Class cl using constructor cons which
	* may be the constructor defined in a superclass of cl.  This is
	* used to create a constructor for Serializable classes that
	* constructs an instance of the Serializable class using the
	* no args constructor of the first non-Serializable superclass
	* of the Serializable class.
	*/
	@:overload @:final public function newConstructorForSerialization(cl : Class<Dynamic>, cons : java.lang.reflect.Constructor<Dynamic>) : java.lang.reflect.Constructor<Dynamic>;
	
	
}
