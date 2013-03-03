package sun.rmi.runtime;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class RuntimeUtil
{
	/**
	* Returns the shared thread pool for scheduling delayed tasks.
	*
	* Note that the returned pool has limited concurrency, so
	* submitted tasks should be short-lived and should not block.
	**/
	@:overload @:public public function getScheduler() : java.util.concurrent.ScheduledThreadPoolExecutor;
	
	
}
/**
* A PrivilegedAction for getting the RuntimeUtil instance.
**/
@:native('sun$rmi$runtime$RuntimeUtil$GetInstanceAction') extern class RuntimeUtil_GetInstanceAction implements java.security.PrivilegedAction<sun.rmi.runtime.RuntimeUtil>
{
	/**
	* Creates an action that returns the RuntimeUtil instance.
	**/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function run() : sun.rmi.runtime.RuntimeUtil;
	
	
}
