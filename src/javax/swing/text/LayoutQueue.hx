package javax.swing.text;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class LayoutQueue
{
	/**
	* Construct a layout queue.
	*/
	@:overload public function new() : Void;
	
	/**
	* Fetch the default layout queue.
	*/
	@:overload public static function getDefaultQueue() : javax.swing.text.LayoutQueue;
	
	/**
	* Set the default layout queue.
	*
	* @param q the new queue.
	*/
	@:overload public static function setDefaultQueue(q : javax.swing.text.LayoutQueue) : Void;
	
	/**
	* Add a task that is not needed immediately because
	* the results are not believed to be visible.
	*/
	@:overload @:synchronized public function addTask(task : java.lang.Runnable) : Void;
	
	/**
	* Used by the worker thread to get a new task to execute
	*/
	@:overload @:synchronized private function waitForWork() : java.lang.Runnable;
	
	
}
/**
* low priority thread to perform layout work forever
*/
@:native('javax$swing$text$LayoutQueue$LayoutThread') @:internal extern class LayoutQueue_LayoutThread extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
