package javax.rmi.CORBA;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Util
{
	/**
	* Maps a SystemException to a RemoteException.
	* @param ex the SystemException to map.
	* @return the mapped exception.
	*/
	@:overload @:public @:static public static function mapSystemException(ex : org.omg.CORBA.SystemException) : java.rmi.RemoteException;
	
	/**
	* Writes any java.lang.Object as a CORBA any.
	* @param out the stream in which to write the any.
	* @param obj the object to write as an any.
	*/
	@:overload @:public @:static public static function writeAny(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Reads a java.lang.Object as a CORBA any.
	* @param in the stream from which to read the any.
	* @return the object read from the stream.
	*/
	@:overload @:public @:static public static function readAny(_in : org.omg.CORBA.portable.InputStream) : Dynamic;
	
	/**
	* Writes a java.lang.Object as a CORBA Object. If <code>obj</code> is
	* an exported RMI-IIOP server object, the tie is found
	* and wired to <code>obj</code>, then written to
<code>out.write_Object(org.omg.CORBA.Object)</code>.
	* If <code>obj</code> is a CORBA Object, it is written to
	* <code>out.write_Object(org.omg.CORBA.Object)</code>.
	* @param out the stream in which to write the object.
	* @param obj the object to write.
	*/
	@:overload @:public @:static public static function writeRemoteObject(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Writes a java.lang.Object as either a value or a CORBA Object.
	* If <code>obj</code> is a value object or a stub object, it is written to
	* <code>out.write_abstract_interface(java.lang.Object)</code>. If <code>obj</code>
is
an exported
	* RMI-IIOP server object, the tie is found and wired to <code>obj</code>,
	* then written to <code>out.write_abstract_interface(java.lang.Object)</code>.
	* @param out the stream in which to write the object.
	* @param obj the object to write.
	*/
	@:overload @:public @:static public static function writeAbstractObject(out : org.omg.CORBA.portable.OutputStream, obj : Dynamic) : Void;
	
	/**
	* Registers a target for a tie. Adds the tie to an internal table and calls
	* {@link Tie#setTarget} on the tie object.
	* @param tie the tie to register.
	* @param target the target for the tie.
	*/
	@:overload @:public @:static public static function registerTarget(tie : javax.rmi.CORBA.Tie, target : java.rmi.Remote) : Void;
	
	/**
	* Removes the associated tie from an internal table and calls {@link
Tie#deactivate}
	* to deactivate the object.
	* @param target the object to unexport.
	*/
	@:overload @:public @:static public static function unexportObject(target : java.rmi.Remote) : Void;
	
	/**
	* Returns the tie (if any) for a given target object.
	* @return the tie or null if no tie is registered for the given target.
	*/
	@:overload @:public @:static public static function getTie(target : java.rmi.Remote) : javax.rmi.CORBA.Tie;
	
	/**
	* Returns a singleton instance of a class that implements the
	* {@link ValueHandler} interface.
	* @return a class which implements the ValueHandler interface.
	*/
	@:overload @:public @:static public static function createValueHandler() : javax.rmi.CORBA.ValueHandler;
	
	/**
	* Returns the codebase, if any, for the given class.
	* @param clz the class to get a codebase for.
	* @return a space-separated list of URLs, or null.
	*/
	@:overload @:public @:static public static function getCodebase(clz : Class<Dynamic>) : String;
	
	/**
	* Returns a class instance for the specified class.
	* <P>The spec for this method is the "Java to IDL language
	* mapping", ptc/00-01-06.
	* <P>In Java SE Platform, this method works as follows:
	* <UL><LI>Find the first non-null <tt>ClassLoader</tt> on the
	* call stack and attempt to load the class using this
	* <tt>ClassLoader</tt>.
	* <LI>If the first step fails, and if <tt>remoteCodebase</tt>
	* is non-null and
	* <tt>useCodebaseOnly</tt> is false, then call
	* <tt>java.rmi.server.RMIClassLoader.loadClass(remoteCodebase, className)</tt>.
	* <LI>If <tt>remoteCodebase</tt> is null or <tt>useCodebaseOnly</tt>
	* is true, then call <tt>java.rmi.server.RMIClassLoader.loadClass(className)</tt>.
	* <LI>If a class was not successfully loaded by step 1, 2, or 3,
	* and <tt>loader</tt> is non-null, then call <tt>loader.loadClass(className)</tt>.
	* <LI>If a class was successfully loaded by step 1, 2, 3, or 4, then
	*  return the loaded class, else throw <tt>ClassNotFoundException</tt>.
	* @param className the name of the class.
	* @param remoteCodebase a space-separated list of URLs at which
	* the class might be found. May be null.
	* @param loader a <tt>ClassLoader</tt> that may be used to
	* load the class if all other methods fail.
	* @return the <code>Class</code> object representing the loaded class.
	* @exception ClassNotFoundException if class cannot be loaded.
	*/
	@:overload @:public @:static public static function loadClass(className : String, remoteCodebase : String, loader : java.lang.ClassLoader) : Class<Dynamic>;
	
	/**
	* The <tt>isLocal</tt> method has the same semantics as the
	* <tt>ObjectImpl._is_local</tt>
	* method, except that it can throw a <tt>RemoteException</tt>.
	*
	* The <tt>_is_local()</tt> method is provided so that stubs may determine if a
	* particular object is implemented by a local servant and hence local
	* invocation APIs may be used.
	*
	* @param stub the stub to test.
	*
	* @return The <tt>_is_local()</tt> method returns true if
	* the servant incarnating the object is located in the same process as
	* the stub and they both share the same ORB instance.  The <tt>_is_local()</tt>
	* method returns false otherwise. The default behavior of <tt>_is_local()</tt> is
	* to return false.
	*
	* @throws RemoteException The Java to IDL specification does not
	* specify the conditions that cause a <tt>RemoteException</tt> to be thrown.
	*/
	@:overload @:public @:static public static function isLocal(stub : javax.rmi.CORBA.Stub) : Bool;
	
	/**
	* Wraps an exception thrown by an implementation
	* method.  It returns the corresponding client-side exception.
	* @param orig the exception to wrap.
	* @return the wrapped exception.
	*/
	@:overload @:public @:static public static function wrapException(orig : java.lang.Throwable) : java.rmi.RemoteException;
	
	/**
	* Copies or connects an array of objects. Used by local stubs
	* to copy any number of actual parameters, preserving sharing
	* across parameters as necessary to support RMI semantics.
	* @param obj the objects to copy or connect.
	* @param orb the ORB.
	* @return the copied or connected objects.
	* @exception RemoteException if any object could not be copied or connected.
	*/
	@:overload @:public @:static public static function copyObjects(obj : java.NativeArray<Dynamic>, orb : org.omg.CORBA.ORB) : java.NativeArray<Dynamic>;
	
	/**
	* Copies or connects an object. Used by local stubs to copy
	* an actual parameter, result object, or exception.
	* @param obj the object to copy.
	* @param orb the ORB.
	* @return the copy or connected object.
	* @exception RemoteException if the object could not be copied or connected.
	*/
	@:overload @:public @:static public static function copyObject(obj : Dynamic, orb : org.omg.CORBA.ORB) : Dynamic;
	
	
}
