package java.rmi;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MarshalledObject<T> implements java.io.Serializable
{
	/**
	* Creates a new <code>MarshalledObject</code> that contains the
	* serialized representation of the current state of the supplied object.
	* The object is serialized with the semantics used for marshaling
	* parameters for RMI calls.
	*
	* @param obj the object to be serialized (must be serializable)
	* @exception IOException if an <code>IOException</code> occurs; an
	* <code>IOException</code> may occur if <code>obj</code> is not
	* serializable.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function new(obj : T) : Void;
	
	/**
	* Returns a new copy of the contained marshalledobject.  The internal
	* representation is deserialized with the semantics used for
	* unmarshaling paramters for RMI calls.
	*
	* @return a copy of the contained object
	* @exception IOException if an <code>IOException</code> occurs while
	* deserializing the object from its internal representation.
	* @exception ClassNotFoundException if a
	* <code>ClassNotFoundException</code> occurs while deserializing the
	* object from its internal representation.
	* could not be found
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function get() : T;
	
	/**
	* Return a hash code for this <code>MarshalledObject</code>.
	*
	* @return a hash code
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this <code>MarshalledObject</code> to another object.
	* Returns true if and only if the argument refers to a
	* <code>MarshalledObject</code> that contains exactly the same
	* serialized representation of an object as this one does. The
	* comparison ignores any class codebase annotation, meaning that
	* two objects are equivalent if they have the same serialized
	* representation <i>except</i> for the codebase of each class
	* in the serialized representation.
	*
	* @param obj the object to compare with this <code>MarshalledObject</code>
	* @return <code>true</code> if the argument contains an equaivalent
	* serialized object; <code>false</code> otherwise
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* This class is used to marshal objects for
* <code>MarshalledObject</code>.  It places the location annotations
* to one side so that two <code>MarshalledObject</code>s can be
* compared for equality if they differ only in location
* annotations.  Objects written using this stream should be read back
* from a <code>MarshalledObjectInputStream</code>.
*
* @see java.rmi.MarshalledObject
* @see MarshalledObjectInputStream
*/
@:native('java$rmi$MarshalledObject$MarshalledObjectOutputStream') @:internal extern class MarshalledObject_MarshalledObjectOutputStream extends sun.rmi.server.MarshalOutputStream
{
	/**
	* Overrides MarshalOutputStream.writeLocation implementation to write
	* annotations to the location stream.
	*/
	@:overload @:protected override private function writeLocation(loc : String) : Void;
	
	@:overload @:public override public function flush() : Void;
	
	
}
/**
* The counterpart to <code>MarshalledObjectOutputStream</code>.
*
* @see MarshalledObjectOutputStream
*/
@:native('java$rmi$MarshalledObject$MarshalledObjectInputStream') @:internal extern class MarshalledObject_MarshalledObjectInputStream extends sun.rmi.server.MarshalInputStream
{
	/**
	* Overrides MarshalInputStream.readLocation to return locations from
	* the stream we were given, or <code>null</code> if we were given a
	* <code>null</code> location stream.
	*/
	@:overload @:protected override private function readLocation() : Dynamic;
	
	
}
