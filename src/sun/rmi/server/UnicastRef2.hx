package sun.rmi.server;
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
extern class UnicastRef2 extends sun.rmi.server.UnicastRef
{
	/**
	* Create a new (empty) Unicast remote reference.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new Unicast RemoteRef.
	*/
	@:overload public function new(liveRef : sun.rmi.transport.LiveRef) : Void;
	
	/**
	* Returns the class of the ref type to be serialized
	*/
	@:overload override public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* Write out external representation for remote ref.
	*/
	@:overload override public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* Read in external representation for remote ref.
	* @exception ClassNotFoundException If the class for an object
	* being restored cannot be found.
	*/
	@:overload override public function readExternal(_in : java.io.ObjectInput) : Void;
	
	
}
