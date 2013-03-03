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
extern class MarshalOutputStream extends java.io.ObjectOutputStream
{
	/**
	* Creates a marshal output stream with protocol version 1.
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a marshal output stream with the given protocol version.
	*/
	@:overload @:public public function new(out : java.io.OutputStream, protocolVersion : Int) : Void;
	
	/**
	* Checks for objects that are instances of java.rmi.Remote
	* that need to be serialized as proxy objects.
	*/
	@:overload @:protected @:final override private function replaceObject(obj : Dynamic) : Dynamic;
	
	/**
	* Serializes a location from which to load the the specified class.
	*/
	@:overload @:protected override private function annotateClass(cl : Class<Dynamic>) : Void;
	
	/**
	* Serializes a location from which to load the specified class.
	*/
	@:overload @:protected override private function annotateProxyClass(cl : Class<Dynamic>) : Void;
	
	/**
	* Writes the location for the class into the stream.  This method can
	* be overridden by subclasses that store this annotation somewhere
	* else than as the next object in the stream, as is done by this class.
	*/
	@:overload @:protected private function writeLocation(location : String) : Void;
	
	
}
