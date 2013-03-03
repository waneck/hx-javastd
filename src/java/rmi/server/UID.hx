package java.rmi.server;
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
extern class UID implements java.io.Serializable
{
	/**
	* Generates a <code>UID</code> that is unique over time with
	* respect to the host that it was generated on.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a "well-known" <code>UID</code>.
	*
	* There are 2<sup>16</sup> possible such well-known ids.
	*
	* <p>A <code>UID</code> created via this constructor will not
	* clash with any <code>UID</code>s generated via the no-arg
	* constructor.
	*
	* @param   num number for well-known <code>UID</code>
	*/
	@:overload @:public public function new(num : java.StdTypes.Int16) : Void;
	
	/**
	* Returns the hash code value for this <code>UID</code>.
	*
	* @return  the hash code value for this <code>UID</code>
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares the specified object with this <code>UID</code> for
	* equality.
	*
	* This method returns <code>true</code> if and only if the
	* specified object is a <code>UID</code> instance with the same
	* <code>unique</code>, <code>time</code>, and <code>count</code>
	* values as this one.
	*
	* @param   obj the object to compare this <code>UID</code> to
	*
	* @return  <code>true</code> if the given object is equivalent to
	* this one, and <code>false</code> otherwise
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a string representation of this <code>UID</code>.
	*
	* @return  a string representation of this <code>UID</code>
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Marshals a binary representation of this <code>UID</code> to
	* a <code>DataOutput</code> instance.
	*
	* <p>Specifically, this method first invokes the given stream's
	* {@link DataOutput#writeInt(int)} method with this <code>UID</code>'s
	* <code>unique</code> value, then it invokes the stream's
	* {@link DataOutput#writeLong(long)} method with this <code>UID</code>'s
	* <code>time</code> value, and then it invokes the stream's
	* {@link DataOutput#writeShort(int)} method with this <code>UID</code>'s
	* <code>count</code> value.
	*
	* @param   out the <code>DataOutput</code> instance to write
	* this <code>UID</code> to
	*
	* @throws  IOException if an I/O error occurs while performing
	* this operation
	*/
	@:overload @:public public function write(out : java.io.DataOutput) : Void;
	
	/**
	* Constructs and returns a new <code>UID</code> instance by
	* unmarshalling a binary representation from an
	* <code>DataInput</code> instance.
	*
	* <p>Specifically, this method first invokes the given stream's
	* {@link DataInput#readInt()} method to read a <code>unique</code> value,
	* then it invoke's the stream's
	* {@link DataInput#readLong()} method to read a <code>time</code> value,
	* then it invoke's the stream's
	* {@link DataInput#readShort()} method to read a <code>count</code> value,
	* and then it creates and returns a new <code>UID</code> instance
	* that contains the <code>unique</code>, <code>time</code>, and
	* <code>count</code> values that were read from the stream.
	*
	* @param   in the <code>DataInput</code> instance to read
	* <code>UID</code> from
	*
	* @return  unmarshalled <code>UID</code> instance
	*
	* @throws  IOException if an I/O error occurs while performing
	* this operation
	*/
	@:overload @:public @:static public static function read(_in : java.io.DataInput) : java.rmi.server.UID;
	
	
}
