package javax.management.openmbean;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
extern class SimpleType<T> extends javax.management.openmbean.OpenType<T>
{
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Void</code>.
	*/
	@:public @:static @:final public static var VOID(default, null) : javax.management.openmbean.SimpleType<java.lang.Void>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Boolean</code>.
	*/
	@:public @:static @:final public static var BOOLEAN(default, null) : javax.management.openmbean.SimpleType<Null<Bool>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Character</code>.
	*/
	@:public @:static @:final public static var CHARACTER(default, null) : javax.management.openmbean.SimpleType<Null<java.StdTypes.Char16>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Byte</code>.
	*/
	@:public @:static @:final public static var BYTE(default, null) : javax.management.openmbean.SimpleType<Null<java.StdTypes.Int8>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Short</code>.
	*/
	@:public @:static @:final public static var SHORT(default, null) : javax.management.openmbean.SimpleType<Null<java.StdTypes.Int16>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Integer</code>.
	*/
	@:public @:static @:final public static var INTEGER(default, null) : javax.management.openmbean.SimpleType<Null<Int>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Long</code>.
	*/
	@:public @:static @:final public static var LONG(default, null) : javax.management.openmbean.SimpleType<Null<haxe.Int64>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Float</code>.
	*/
	@:public @:static @:final public static var FLOAT(default, null) : javax.management.openmbean.SimpleType<java.lang.Float>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.Double</code>.
	*/
	@:public @:static @:final public static var DOUBLE(default, null) : javax.management.openmbean.SimpleType<Null<Float>>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.lang.String</code>.
	*/
	@:public @:static @:final public static var STRING(default, null) : javax.management.openmbean.SimpleType<String>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.math.BigDecimal</code>.
	*/
	@:public @:static @:final public static var BIGDECIMAL(default, null) : javax.management.openmbean.SimpleType<java.math.BigDecimal>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.math.BigInteger</code>.
	*/
	@:public @:static @:final public static var BIGINTEGER(default, null) : javax.management.openmbean.SimpleType<java.math.BigInteger>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>java.util.Date</code>.
	*/
	@:public @:static @:final public static var DATE(default, null) : javax.management.openmbean.SimpleType<java.util.Date>;
	
	/**
	* The <code>SimpleType</code> instance describing values whose
	* Java class name is <code>javax.management.ObjectName</code>.
	*/
	@:public @:static @:final public static var OBJECTNAME(default, null) : javax.management.openmbean.SimpleType<javax.management.ObjectName>;
	
	/**
	* Tests whether <var>obj</var> is a value for this
	* <code>SimpleType</code> instance.  <p> This method returns
	* <code>true</code> if and only if <var>obj</var> is not null and
	* <var>obj</var>'s class name is the same as the className field
	* defined for this <code>SimpleType</code> instance (ie the class
	* name returned by the {@link OpenType#getClassName()
	* getClassName} method).
	*
	* @param obj the object to be tested.
	*
	* @return <code>true</code> if <var>obj</var> is a value for this
	* <code>SimpleType</code> instance.
	*/
	@:overload @:public override public function isValue(obj : Dynamic) : Bool;
	
	/**
	* Compares the specified <code>obj</code> parameter with this <code>SimpleType</code> instance for equality.
	* <p>
	* Two <code>SimpleType</code> instances are equal if and only if their
	* {@link OpenType#getClassName() getClassName} methods return the same value.
	*
	* @param  obj  the object to be compared for equality with this <code>SimpleType</code> instance;
	*              if <var>obj</var> is <code>null</code> or is not an instance of the class <code>SimpleType</code>,
	*              <code>equals</code> returns <code>false</code>.
	*
	* @return  <code>true</code> if the specified object is equal to this <code>SimpleType</code> instance.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this <code>SimpleType</code> instance.
	* The hash code of a <code>SimpleType</code> instance is the the hash code of
	* the string value returned by the {@link OpenType#getClassName() getClassName} method.
	* <p>
	* As <code>SimpleType</code> instances are immutable, the hash code for this instance is calculated once,
	* on the first call to <code>hashCode</code>, and then the same value is returned for subsequent calls.
	*
	* @return  the hash code value for this <code>SimpleType</code> instance
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <code>SimpleType</code> instance.
	* <p>
	* The string representation consists of
	* the name of this class (ie <code>javax.management.openmbean.SimpleType</code>) and the type name
	* for this instance (which is the java class name of the values this <code>SimpleType</code> instance represents).
	* <p>
	* As <code>SimpleType</code> instances are immutable, the string representation for this instance is calculated once,
	* on the first call to <code>toString</code>, and then the same value is returned for subsequent calls.
	*
	* @return  a string representation of this <code>SimpleType</code> instance
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Replace an object read from an {@link
	* java.io.ObjectInputStream} with the unique instance for that
	* value.
	*
	* @return the replacement object.
	*
	* @exception ObjectStreamException if the read object cannot be
	* resolved.
	*/
	@:overload @:public public function readResolve() : Dynamic;
	
	
}
