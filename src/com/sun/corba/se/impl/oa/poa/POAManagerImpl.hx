package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class POAManagerImpl extends org.omg.CORBA.LocalObject implements org.omg.PortableServer.POAManager
{
	@:overload public function toString() : String;
	
	@:overload public function getManagerId() : Int;
	
	@:overload public function getORTState() : java.StdTypes.Int16;
	
	/**
	* <code>activate</code>
	* <b>Spec: pages 3-14 thru 3-18</b>
	*/
	@:overload @:synchronized public function activate() : Void;
	
	/**
	* <code>hold_requests</code>
	* <b>Spec: pages 3-14 thru 3-18</b>
	*/
	@:overload @:synchronized public function hold_requests(wait_for_completion : Bool) : Void;
	
	/**
	* <code>discard_requests</code>
	* <b>Spec: pages 3-14 thru 3-18</b>
	*/
	@:overload @:synchronized public function discard_requests(wait_for_completion : Bool) : Void;
	
	/**
	* <code>deactivate</code>
	* <b>Spec: pages 3-14 thru 3-18</b>
	* Note: INACTIVE is a permanent state.
	*/
	@:overload public function deactivate(etherealize_objects : Bool, wait_for_completion : Bool) : Void;
	
	/**
	* Added according to the spec CORBA V2.3; this returns the
	* state of the POAManager
	*/
	@:overload public function get_state() : org.omg.PortableServer.POAManagerPackage.State;
	
	/** Activate the POAManager if no explicit state change has ever been
	* previously invoked.
	*/
	@:overload @:synchronized public function implicitActivation() : Void;
	
	
}
@:native('com$sun$corba$se$impl$oa$poa$POAManagerImpl$POAManagerDeactivator') @:internal extern class POAManagerImpl_POAManagerDeactivator implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
