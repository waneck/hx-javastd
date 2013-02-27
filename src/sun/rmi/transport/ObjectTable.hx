package sun.rmi.transport;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectTable
{
	/**
	* Returns the target associated with the remote object
	*/
	@:overload public static function getTarget(impl : java.rmi.Remote) : sun.rmi.transport.Target;
	
	/**
	* Returns the stub for the remote object <b>obj</b> passed
	* as a parameter. This operation is only valid <i>after</i>
	* the object has been exported.
	*
	* @return the stub for the remote object, <b>obj</b>.
	* @exception NoSuchObjectException if the stub for the
	* remote object could not be found.
	*/
	@:overload public static function getStub(impl : java.rmi.Remote) : java.rmi.Remote;
	
	/**
	* Remove the remote object, obj, from the RMI runtime. If
	* successful, the object can no longer accept incoming RMI calls.
	* If the force parameter is true, the object is forcibly unexported
	* even if there are pending calls to the remote object or the
	* remote object still has calls in progress.  If the force
	* parameter is false, the object is only unexported if there are
	* no pending or in progress calls to the object.
	*
	* @param obj the remote object to be unexported
	* @param force if true, unexports the object even if there are
	* pending or in-progress calls; if false, only unexports the object
	* if there are no pending or in-progress calls
	* @return true if operation is successful, false otherwise
	* @exception NoSuchObjectException if the remote object is not
	* currently exported
	*/
	@:overload public static function unexportObject(obj : java.rmi.Remote, force : Bool) : Bool;
	
	
}
/**
* The Reaper thread waits for notifications that weak references in the
* object table have been cleared.  When it receives a notification, it
* removes the corresponding entry from the table.
*
* Since the Reaper is created as a non-daemon thread, it also serves
* to keep the VM from exiting while there are objects in the table
* (other than permanent entries that should neither be reaped nor
* keep the VM alive).
*/
@:native('sun$rmi$transport$ObjectTable$Reaper') @:internal extern class ObjectTable_Reaper implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
