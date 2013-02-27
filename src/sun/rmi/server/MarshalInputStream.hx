package sun.rmi.server;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MarshalInputStream extends java.io.ObjectInputStream
{
	/** table to hold sun classes to which access is explicitly permitted */
	private static var permittedSunClasses : java.util.Map<String, Class<Dynamic>>;
	
	/**
	* Create a new MarshalInputStream object.
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Returns a callback previously registered via the setDoneCallback
	* method with given key, or null if no callback has yet been registered
	* with that key.
	*/
	@:overload public function getDoneCallback(key : Dynamic) : java.lang.Runnable;
	
	/**
	* Registers a callback to make when this stream's done() method is
	* invoked, along with a key for retrieving the same callback instance
	* subsequently from the getDoneCallback method.
	*/
	@:overload public function setDoneCallback(key : Dynamic, _callback : java.lang.Runnable) : Void;
	
	/**
	* Indicates that the user of this MarshalInputStream is done reading
	* objects from it, so all callbacks registered with the setDoneCallback
	* method should now be (synchronously) executed.  When this method
	* returns, there are no more callbacks registered.
	*
	* This method is implicitly invoked by close() before it delegates to
	* the superclass's close method.
	*/
	@:overload public function done() : Void;
	
	/**
	* Closes this stream, implicitly invoking done() first.
	*/
	@:overload override public function close() : Void;
	
	/**
	* resolveClass is extended to acquire (if present) the location
	* from which to load the specified class.
	* It will find, load, and return the class.
	*/
	@:overload override private function resolveClass(classDesc : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	/**
	* resolveProxyClass is extended to acquire (if present) the location
	* to determine the class loader to define the proxy class in.
	*/
	@:overload override private function resolveProxyClass(interfaces : java.NativeArray<String>) : Class<Dynamic>;
	
	/**
	* Return the location for the class in the stream.  This method can
	* be overridden by subclasses that store this annotation somewhere
	* else than as the next object in the stream, as is done by this class.
	*/
	@:overload private function readLocation() : Dynamic;
	
	
}
