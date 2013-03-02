package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NameContext
{
	/**
	* Get a context for the given name. Name may be null, in
	* which case this method will return the default context.
	*/
	@:overload @:synchronized public static function forName(name : String, allowCollisions : Bool, env : sun.rmi.rmic.iiop.BatchEnvironment) : sun.rmi.rmic.iiop.NameContext;
	
	/**
	* Construct a context.
	* @param allowCollisions true if case-sensitive name collisions
	* are allowed, false if not.
	*/
	@:overload public function new(allowCollisions : Bool) : Void;
	
	/**
	* Add a name to this context. If constructed with allowCollisions
	* false and a collision occurs, this method will throw an exception
	* in which the message contains the string: "name" and "collision".
	*/
	@:overload public function assertPut(name : String) : Void;
	
	/**
	* Add a name to this context..
	*/
	@:overload public function put(name : String) : Void;
	
	/**
	* Get a name from the context. If it has collisions, the name
	* will be converted as specified in section 5.2.7.
	*/
	@:overload public function get(name : String) : String;
	
	/**
	* Remove all entries.
	*/
	@:overload public function clear() : Void;
	
	
}
@:native('sun$rmi$rmic$iiop$NameContext$Name') extern class NameContext_Name
{
	public var name : String;
	
	public var collisions : Bool;
	
	@:overload public function new(name : String, collisions : Bool) : Void;
	
	
}
