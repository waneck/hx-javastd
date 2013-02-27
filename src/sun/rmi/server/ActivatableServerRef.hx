package sun.rmi.server;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivatableServerRef extends sun.rmi.server.UnicastServerRef2
{
	/**
	* Construct a Unicast server remote reference to be exported
	* on the specified port.
	*/
	@:overload public function new(id : java.rmi.activation.ActivationID, port : Int) : Void;
	
	/**
	* Construct a Unicast server remote reference to be exported
	* on the specified port.
	*/
	@:overload public function new(id : java.rmi.activation.ActivationID, port : Int, csf : java.rmi.server.RMIClientSocketFactory, ssf : java.rmi.server.RMIServerSocketFactory) : Void;
	
	/**
	* Returns the class of the ref type to be serialized
	*/
	@:overload override public function getRefClass(out : java.io.ObjectOutput) : String;
	
	/**
	* Return the client remote reference for this remoteRef.
	* In the case of a client RemoteRef "this" is the answer.
	* For  a server remote reference, a client side one will have to
	* found or created.
	*/
	@:overload override private function getClientRef() : java.rmi.server.RemoteRef;
	
	/**
	* Prevents serialization (because deserializaion is impossible).
	*/
	@:overload override public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	
}
