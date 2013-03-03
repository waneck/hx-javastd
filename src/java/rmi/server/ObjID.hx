package java.rmi.server;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjID implements java.io.Serializable
{
	/** Object number for well-known <code>ObjID</code> of the registry. */
	@:public @:static @:final public static var REGISTRY_ID(default, null) : Int;
	
	/** Object number for well-known <code>ObjID</code> of the activator. */
	@:public @:static @:final public static var ACTIVATOR_ID(default, null) : Int;
	
	/**
	* Object number for well-known <code>ObjID</code> of
	* the distributed garbage collector.
	*/
	@:public @:static @:final public static var DGC_ID(default, null) : Int;
	
	/**
	* Generates a unique object identifier.
	*
	* <p>If the system property <code>java.rmi.server.randomIDs</code>
	* is defined to equal the string <code>"true"</code> (case insensitive),
	* then this constructor will use a cryptographically
	* strong random number generator to choose the object number of the
	* returned <code>ObjID</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a "well-known" object identifier.
	*
	* <p>An <code>ObjID</code> created via this constructor will not
	* clash with any <code>ObjID</code>s generated via the no-arg
	* constructor.
	*
	* @param   objNum object number for well-known object identifier
	*/
	@:overload @:public public function new(objNum : Int) : Void;
	
	/**
	* Marshals a binary representation of this <code>ObjID</code> to
	* an <code>ObjectOutput</code> instance.
	*
	* <p>Specifically, this method first invokes the given stream's
	* {@link ObjectOutput#writeLong(long)} method with this object
	* identifier's object number, and then it writes its address
	* space identifier by invoking its {@link UID#write(DataOutput)}
	* method with the stream.
	*
	* @param   out the <code>ObjectOutput</code> instance to write
	* this <code>ObjID</code> to
	*
	* @throws  IOException if an I/O error occurs while performing
	* this operation
	*/
	@:overload @:public public function write(out : java.io.ObjectOutput) : Void;
	
	/**
	* Constructs and returns a new <code>ObjID</code> instance by
	* unmarshalling a binary representation from an
	* <code>ObjectInput</code> instance.
	*
	* <p>Specifically, this method first invokes the given stream's
	* {@link ObjectInput#readLong()} method to read an object number,
	* then it invokes {@link UID#read(DataInput)} with the
	* stream to read an address space identifier, and then it
	* creates and returns a new <code>ObjID</code> instance that
	* contains the object number and address space identifier that
	* were read from the stream.
	*
	* @param   in the <code>ObjectInput</code> instance to read
	* <code>ObjID</code> from
	*
	* @return  unmarshalled <code>ObjID</code> instance
	*
	* @throws  IOException if an I/O error occurs while performing
	* this operation
	*/
	@:overload @:public @:static public static function read(_in : java.io.ObjectInput) : java.rmi.server.ObjID;
	
	/**
	* Returns the hash code value for this object identifier, the
	* object number.
	*
	* @return  the hash code value for this object identifier
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares the specified object with this <code>ObjID</code> for
	* equality.
	*
	* This method returns <code>true</code> if and only if the
	* specified object is an <code>ObjID</code> instance with the same
	* object number and address space identifier as this one.
	*
	* @param   obj the object to compare this <code>ObjID</code> to
	*
	* @return  <code>true</code> if the given object is equivalent to
	* this one, and <code>false</code> otherwise
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/*
	* The address space identifier is only included in the string
	* representation if it does not denote the local address space
	* (or if the randomIDs property was set).
	*/
	@:overload @:public public function toString() : String;
	
	
}
