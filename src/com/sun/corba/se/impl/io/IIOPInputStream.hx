package com.sun.corba.se.impl.io;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class IIOPInputStream extends com.sun.corba.se.impl.io.InputStreamHook
{
	public static var kRemoteTypeCode(default, null) : org.omg.CORBA.TypeCode;
	
	public static var kValueTypeCode(default, null) : org.omg.CORBA.TypeCode;
	
	@:overload private function getStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload public static function setTestFVDFlag(val : Bool) : Void;
	
	/**
	* Dummy constructor; passes upper stream a dummy stream;
	**/
	@:overload public function new() : Void;
	
	@:overload @:final public function setOrbStream(os : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload @:final public function getOrbStream() : org.omg.CORBA_2_3.portable.InputStream;
	
	@:overload @:final public function setSender(cb : com.sun.org.omg.SendingContext.CodeBase) : Void;
	
	@:overload @:final public function getSender() : com.sun.org.omg.SendingContext.CodeBase;
	
	@:overload @:final public function setValueHandler(vh : javax.rmi.CORBA.ValueHandler) : Void;
	
	@:overload @:final public function getValueHandler() : javax.rmi.CORBA.ValueHandler;
	
	@:overload @:final public function increaseRecursionDepth() : Void;
	
	@:overload @:final public function decreaseRecursionDepth() : Int;
	
	/**
	* Override the actions of the final method "readObject()"
	* in ObjectInputStream.
	* @since     JDK1.1.6
	*
	* Read an object from the ObjectInputStream.
	* The class of the object, the signature of the class, and the values
	* of the non-transient and non-static fields of the class and all
	* of its supertypes are read.  Default deserializing for a class can be
	* overriden using the writeObject and readObject methods.
	* Objects referenced by this object are read transitively so
	* that a complete equivalent graph of objects is reconstructed by readObject. <p>
	*
	* The root object is completly restored when all of its fields
	* and the objects it references are completely restored.  At this
	* point the object validation callbacks are executed in order
	* based on their registered priorities. The callbacks are
	* registered by objects (in the readObject special methods)
	* as they are individually restored.
	*
	* Exceptions are thrown for problems with the InputStream and for classes
	* that should not be deserialized.  All exceptions are fatal to the
	* InputStream and leave it in an indeterminate state; it is up to the caller
	* to ignore or recover the stream state.
	* @exception java.lang.ClassNotFoundException Class of a serialized object
	*      cannot be found.
	* @exception InvalidClassException Something is wrong with a class used by
	*     serialization.
	* @exception StreamCorruptedException Control information in the
	*     stream is inconsistent.
	* @exception OptionalDataException Primitive data was found in the
	* stream instead of objects.
	* @exception IOException Any of the usual Input/Output related exceptions.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:final public function readObjectDelegate() : Dynamic;
	
	/* throws OptionalDataException, ClassNotFoundException, IOException */
	@:overload @:final public function simpleSkipObject(repositoryID : String, sender : com.sun.org.omg.SendingContext.CodeBase) : Void;
	
	/**
	* This method is called by trusted subclasses of ObjectOutputStream
	* that constructed ObjectOutputStream using the
	* protected no-arg constructor. The subclass is expected to provide
	* an override method with the modifier "final".
	*
	* @return the Object read from the stream.
	*
	* @see #ObjectInputStream()
	* @see #readObject
	* @since JDK 1.2
	*/
	@:require(java2) @:overload @:final override private function readObjectOverride() : Dynamic;
	
	/**
	* Override the actions of the final method "defaultReadObject()"
	* in ObjectInputStream.
	* @since     JDK1.1.6
	*
	* Read the non-static and non-transient fields of the current class
	* from this stream.  This may only be called from the readObject method
	* of the class being deserialized. It will throw the NotActiveException
	* if it is called otherwise.
	*
	* @exception java.lang.ClassNotFoundException if the class of a serialized
	*              object could not be found.
	* @exception IOException        if an I/O error occurs.
	* @exception NotActiveException if the stream is not currently reading
	*              objects.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:final public function defaultReadObjectDelegate() : Void;
	
	/**
	* Override the actions of the final method "enableResolveObject()"
	* in ObjectInputStream.
	* @since     JDK1.1.6
	*
	* Enable the stream to allow objects read from the stream to be replaced.
	* If the stream is a trusted class it is allowed to enable replacment.
	* Trusted classes are those classes with a classLoader equals null. <p>
	*
	* When enabled the resolveObject method is called for every object
	* being deserialized.
	*
	* @exception SecurityException The classloader of this stream object is non-null.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:final public function enableResolveObjectDelegate(enable : Bool) : Bool;
	
	/* throws SecurityException */
	@:overload @:final public function mark(readAheadLimit : Int) : Void;
	
	@:overload @:final public function markSupported() : Bool;
	
	@:overload @:final public function reset() : Void;
	
	@:overload @:final override public function available() : Int;
	
	@:overload @:final override public function close() : Void;
	
	@:overload @:final override public function read() : Int;
	
	@:overload @:final override public function read(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Int;
	
	@:overload @:final override public function readBoolean() : Bool;
	
	@:overload @:final override public function readByte() : java.StdTypes.Int8;
	
	@:overload @:final override public function readChar() : java.StdTypes.Char16;
	
	@:overload @:final override public function readDouble() : Float;
	
	@:overload @:final override public function readFloat() : Single;
	
	@:overload @:final override public function readFully(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:final override public function readFully(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, size : Int) : Void;
	
	@:overload @:final override public function readInt() : Int;
	
	@:overload @:final override public function readLine() : String;
	
	@:overload @:final override public function readLong() : haxe.Int64;
	
	@:overload @:final override public function readShort() : java.StdTypes.Int16;
	
	@:overload @:final override private function readStreamHeader() : Void;
	
	@:overload @:final override public function readUnsignedByte() : Int;
	
	@:overload @:final override public function readUnsignedShort() : Int;
	
	/**
	* Helper method for correcting the Kestrel bug 4367783 (dealing
	* with larger than 8-bit chars).  The old behavior is preserved
	* in orbutil.IIOPInputStream_1_3 in order to interoperate with
	* our legacy ORBs.
	*/
	@:overload private function internalReadUTF(stream : org.omg.CORBA.portable.InputStream) : String;
	
	@:overload @:final override public function readUTF() : String;
	
	@:overload @:final @:synchronized override public function registerValidation(obj : java.io.ObjectInputValidation, prio : Int) : Void;
	
	@:overload @:final private function resolveClass(v : com.sun.corba.se.impl.io.ObjectStreamClass) : Class<Dynamic>;
	
	@:overload @:final override private function resolveObject(obj : Dynamic) : Dynamic;
	
	@:overload @:final override public function skipBytes(len : Int) : Int;
	
	
}
/**
* This class maintains a map of stream position to
* an Object currently being deserialized.  It is used
* to handle the cases where the are indirections to
* an object on the recursion stack.  The CDR level
* handles indirections to objects previously seen
* (and completely deserialized) in the stream.
*/
@:native('com$sun$corba$se$impl$io$IIOPInputStream$ActiveRecursionManager') @:internal extern class IIOPInputStream_ActiveRecursionManager
{
	@:overload public function new() : Void;
	
	@:overload public function addObject(offset : Int, value : Dynamic) : Void;
	
	@:overload public function getObject(offset : Int) : Dynamic;
	
	@:overload public function removeObject(offset : Int) : Void;
	
	@:overload public function containsObject(offset : Int) : Bool;
	
	
}
