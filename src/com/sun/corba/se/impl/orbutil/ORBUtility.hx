package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2000, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ORBUtility
{
	/**
	* Static method for writing a CORBA standard exception to an Any.
	* @param any The Any to write the SystemException into.
	*/
	@:overload public static function insertSystemException(ex : org.omg.CORBA.SystemException, any : org.omg.CORBA.Any) : Void;
	
	@:overload public static function extractSystemException(any : org.omg.CORBA.Any) : org.omg.CORBA.SystemException;
	
	/**
	* Return default ValueHandler
	*/
	@:overload public static function createValueHandler() : javax.rmi.CORBA.ValueHandler;
	
	/**
	* Returns true if it was accurately determined that the remote ORB is
	* a foreign (non-JavaSoft) ORB.  Note:  If passed the ORBSingleton, this
	* will return false.
	*/
	@:overload public static function isForeignORB(orb : com.sun.corba.se.spi.orb.ORB) : Bool;
	
	/** Unmarshal a byte array to an integer.
	Assume the bytes are in BIGENDIAN order.
	i.e. array[offset] is the most-significant-byte
	and  array[offset+3] is the least-significant-byte.
	@param array The array of bytes.
	@param offset The offset from which to start unmarshalling.
	*/
	@:overload public static function bytesToInt(array : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	/** Marshal an integer to a byte array.
	The bytes are in BIGENDIAN order.
	i.e. array[offset] is the most-significant-byte
	and  array[offset+3] is the least-significant-byte.
	@param array The array of bytes.
	@param offset The offset from which to start marshalling.
	*/
	@:overload public static function intToBytes(value : Int, array : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Void;
	
	/** Converts an Ascii Character into Hexadecimal digit
	*/
	@:overload public static function hexOf(x : java.StdTypes.Char16) : Int;
	
	/**
	* Static method for writing a CORBA standard exception to a stream.
	* @param strm The OutputStream to use for marshaling.
	*/
	@:overload public static function writeSystemException(ex : org.omg.CORBA.SystemException, strm : org.omg.CORBA.portable.OutputStream) : Void;
	
	/**
	* Static method for reading a CORBA standard exception from a stream.
	* @param strm The InputStream to use for unmarshaling.
	*/
	@:overload public static function readSystemException(strm : org.omg.CORBA.portable.InputStream) : org.omg.CORBA.SystemException;
	
	/**
	* Get the class name corresponding to a particular repository Id.
	* This is used by the system to unmarshal (instantiate) the
	* appropriate exception class for an marshaled as the value of
	* its repository Id.
	* @param repositoryId The repository Id for which we want a class name.
	*/
	@:overload public static function classNameOf(repositoryId : String) : String;
	
	/**
	* Return true if this repositoryId is a SystemException.
	* @param repositoryId The repository Id to check.
	*/
	@:overload public static function isSystemException(repositoryId : String) : Bool;
	
	/**
	* @return the Java serialization encoding version.
	*/
	@:overload public static function getEncodingVersion(orb : com.sun.corba.se.spi.orb.ORB, ior : com.sun.corba.se.spi.ior.IOR) : java.StdTypes.Int8;
	
	/**
	* Get the repository id corresponding to a particular class.
	* This is used by the system to write the
	* appropriate repository id for a system exception.
	* @param name The class name of the system exception.
	*/
	@:overload public static function repositoryIdOf(name : String) : String;
	
	/** Parse a version string such as "1.1.6" or "jdk1.2fcs" into
	a version array of integers {1, 1, 6} or {1, 2}.
	A string of "n." or "n..m" is equivalent to "n.0" or "n.0.m" respectively.
	*/
	@:overload public static function parseVersion(version : String) : java.NativeArray<Int>;
	
	/** Compare two version arrays.
	Return 1, 0 or -1 if v1 is greater than, equal to, or less than v2.
	*/
	@:overload public static function compareVersion(v1 : java.NativeArray<Int>, v2 : java.NativeArray<Int>) : Int;
	
	/** Compare two version strings.
	Return 1, 0 or -1 if v1 is greater than, equal to, or less than v2.
	*/
	@:overload @:synchronized public static function compareVersion(v1 : String, v2 : String) : Int;
	
	@:overload public static function getThreadName(thr : java.lang.Thread) : String;
	
	@:native('dprint') @:overload @:synchronized public static function _dprint(obj : Dynamic, msg : String) : Void;
	
	@:native('dprint') @:overload @:synchronized public static function _dprint(className : String, msg : String) : Void;
	
	@:overload @:synchronized public function dprint(msg : String) : Void;
	
	@:overload @:synchronized public static function dprintTrace(obj : Dynamic, msg : String) : Void;
	
	@:native('dprint') @:overload @:synchronized public static function _dprint(caller : Dynamic, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public static function concatenateStringArrays(arr1 : java.NativeArray<String>, arr2 : java.NativeArray<String>) : java.NativeArray<String>;
	
	/**
	* Throws the CORBA equivalent of a java.io.NotSerializableException
	*
	* Duplicated from util/Utility for Pure ORB reasons.  There are two
	* reasons for this:
	*
	* 1) We can't introduce dependencies on the util version from outside
	* of the io/util packages since it will not exist in the pure ORB
	* build running on JDK 1.3.x.
	*
	* 2) We need to pick up the correct minor code from OMGSystemException.
	*/
	@:overload public static function throwNotSerializableForCorba(className : String) : Void;
	
	/**
	* Returns the maximum stream format version supported by our
	* ValueHandler.
	*/
	@:overload public static function getMaxStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload public static function makeClientDelegate(ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.spi.protocol.CorbaClientDelegate;
	
	/** This method is used to create untyped object references.
	*/
	@:overload public static function makeObjectReference(ior : com.sun.corba.se.spi.ior.IOR) : org.omg.CORBA.Object;
	
	/** This method obtains an IOR from a CORBA object reference.
	* It will return null if obj is a local object, a null object,
	* or an object implemented by a different ORB.  It will
	* throw BAD_OPERATION if obj is an unconnected RMI-IIOP object.
	* @return IOR the IOR that represents this objref.  This will
	* never be null.
	* @exception BAD_OPERATION (from oi._get_delegate) if obj is a
	* normal objref, but does not have a delegate set.
	* @exception BAD_PARAM if obj is a local object, or else was
	* created by a foreign ORB.
	*/
	@:overload public static function getIOR(obj : org.omg.CORBA.Object) : com.sun.corba.se.spi.ior.IOR;
	
	/** Obtains an IOR for the object reference obj, first connecting it to
	* the ORB if necessary.
	* @return IOR the IOR that represents this objref.  This will
	* never be null.
	* @exception BAD_OPERATION if the object could not be connected,
	* if a connection attempt was needed.
	* @exception BAD_PARAM if obj is a local object, or else was
	* created by a foreign ORB.
	*/
	@:overload public static function connectAndGetIOR(orb : com.sun.corba.se.spi.orb.ORB, obj : org.omg.CORBA.Object) : com.sun.corba.se.spi.ior.IOR;
	
	@:overload public static function operationNameAndRequestId(m : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : String;
	
	@:overload public static function isPrintable(c : java.StdTypes.Char16) : Bool;
	
	@:overload public static function getClassSecurityInfo(cl : Class<Dynamic>) : String;
	
	
}
