package javax.rmi.CORBA;
/*
* Copyright (c) 1998, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern interface Tie extends org.omg.CORBA.portable.InvokeHandler
{
	/**
	* Returns an object reference for the target object represented by
	* this tie.
	* @return an object reference for the target object.
	*/
	@:overload public function thisObject() : org.omg.CORBA.Object;
	
	/**
	* Deactivates the target object represented by this tie.
	*/
	@:overload public function deactivate() : Void;
	
	/**
	* Returns the ORB for this tie.
	* @return the ORB.
	*/
	@:overload public function orb() : org.omg.CORBA.ORB;
	
	/**
	* Sets the ORB for this tie.
	* @param orb the ORB.
	*/
	@:overload public function orb(orb : org.omg.CORBA.ORB) : Void;
	
	/**
	* Called by {@link Util#registerTarget} to set the target
	* for this tie.
	* @param target the object to use as the target for this tie.
	*/
	@:overload public function setTarget(target : java.rmi.Remote) : Void;
	
	/**
	* Returns the target for this tie.
	* @return the target.
	*/
	@:overload public function getTarget() : java.rmi.Remote;
	
	
}
