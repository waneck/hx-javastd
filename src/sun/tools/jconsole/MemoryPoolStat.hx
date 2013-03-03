package sun.tools.jconsole;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MemoryPoolStat
{
	/**
	* Returns the memory pool name.
	*/
	@:overload @:public public function getPoolName() : String;
	
	/**
	* Returns the current memory usage.
	*/
	@:overload @:public public function getUsage() : java.lang.management.MemoryUsage;
	
	/**
	* Returns the current usage threshold.
	* -1 if not supported.
	*/
	@:overload @:public public function getUsageThreshold() : haxe.Int64;
	
	/**
	* Returns the current collection usage threshold.
	* -1 if not supported.
	*/
	@:overload @:public public function getCollectionUsageThreshold() : haxe.Int64;
	
	/**
	* Returns the Id of GC.
	*/
	@:overload @:public public function getLastGcId() : haxe.Int64;
	
	/**
	* Returns the start time of the most recent GC on
	* the memory pool for this statistics in milliseconds.
	*
	* Return 0 if no GC occurs.
	*/
	@:overload @:public public function getLastGcStartTime() : haxe.Int64;
	
	/**
	* Returns the end time of the most recent GC on
	* the memory pool for this statistics in milliseconds.
	*
	* Return 0 if no GC occurs.
	*/
	@:overload @:public public function getLastGcEndTime() : haxe.Int64;
	
	/**
	* Returns the memory usage before the most recent GC started.
	* null if no GC occurs.
	*/
	@:overload @:public public function getBeforeGcUsage() : java.lang.management.MemoryUsage;
	
	/**
	* Returns the memory usage after the most recent GC finished.
	* null if no GC occurs.
	*/
	@:overload @:public public function getAfterGcUsage() : java.lang.management.MemoryUsage;
	
	
}
