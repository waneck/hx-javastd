package java.rmi.server;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class RemoteObject implements java.rmi.Remote implements java.io.Serializable
{
	/** The object's remote reference. */
	@:transient private var ref : java.rmi.server.RemoteRef;
	
	/**
	* Creates a remote object.
	*/
	@:overload private function new() : Void;
	
	/**
	* Creates a remote object, initialized with the specified remote
	* reference.
	* @param newref remote reference
	*/
	@:overload private function new(newref : java.rmi.server.RemoteRef) : Void;
	
	/**
	* Returns the remote reference for the remote object.
	*
	* <p>Note: The object returned from this method may be an instance of
	* an implementation-specific class.  The <code>RemoteObject</code>
	* class ensures serialization portability of its instances' remote
	* references through the behavior of its custom
	* <code>writeObject</code> and <code>readObject</code> methods.  An
	* instance of <code>RemoteRef</code> should not be serialized outside
	* of its <code>RemoteObject</code> wrapper instance or the result may
	* be unportable.
	*
	* @return remote reference for the remote object
	* @since 1.2
	*/
	@:require(java2) @:overload public function getRef() : java.rmi.server.RemoteRef;
	
	/**
	* Returns the stub for the remote object <code>obj</code> passed
	* as a parameter. This operation is only valid <i>after</i>
	* the object has been exported.
	* @param obj the remote object whose stub is needed
	* @return the stub for the remote object, <code>obj</code>.
	* @exception NoSuchObjectException if the stub for the
	* remote object could not be found.
	* @since 1.2
	*/
	@:require(java2) @:overload public static function toStub(obj : java.rmi.Remote) : java.rmi.Remote;
	
	/**
	* Returns a hashcode for a remote object.  Two remote object stubs
	* that refer to the same remote object will have the same hash code
	* (in order to support remote objects as keys in hash tables).
	*
	* @see             java.util.Hashtable
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares two remote objects for equality.
	* Returns a boolean that indicates whether this remote object is
	* equivalent to the specified Object. This method is used when a
	* remote object is stored in a hashtable.
	* If the specified Object is not itself an instance of RemoteObject,
	* then this method delegates by returning the result of invoking the
	* <code>equals</code> method of its parameter with this remote object
	* as the argument.
	* @param   obj     the Object to compare with
	* @return  true if these Objects are equal; false otherwise.
	* @see             java.util.Hashtable
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a String that represents the value of this remote object.
	*/
	@:overload public function toString() : String;
	
	
}
