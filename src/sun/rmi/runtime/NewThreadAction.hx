package sun.rmi.runtime;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class NewThreadAction implements java.security.PrivilegedAction<java.lang.Thread>
{
	/**
	* Creates an action that will create a new thread in the
	* system thread group.
	*
	* @param   runnable the Runnable for the new thread to execute
	*
	* @param   name the name of the new thread
	*
	* @param   daemon if true, new thread will be a daemon thread;
	* if false, new thread will not be a daemon thread
	*/
	@:overload public function new(runnable : java.lang.Runnable, name : String, daemon : Bool) : Void;
	
	/**
	* Creates an action that will create a new thread.
	*
	* @param   runnable the Runnable for the new thread to execute
	*
	* @param   name the name of the new thread
	*
	* @param   daemon if true, new thread will be a daemon thread;
	* if false, new thread will not be a daemon thread
	*
	* @param   user if true, thread will be created in a non-system
	* thread group; if false, thread will be created in the system
	* thread group
	*/
	@:overload public function new(runnable : java.lang.Runnable, name : String, daemon : Bool, user : Bool) : Void;
	
	@:overload public function run() : java.lang.Thread;
	
	
}
