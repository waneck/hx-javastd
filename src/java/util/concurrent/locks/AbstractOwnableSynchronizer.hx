package java.util.concurrent.locks;
/*
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
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
/**
* A synchronizer that may be exclusively owned by a thread.  This
* class provides a basis for creating locks and related synchronizers
* that may entail a notion of ownership.  The
* <tt>AbstractOwnableSynchronizer</tt> class itself does not manage or
* use this information. However, subclasses and tools may use
* appropriately maintained values to help control and monitor access
* and provide diagnostics.
*
* @since 1.6
* @author Doug Lea
*/
@:require(java6) extern class AbstractOwnableSynchronizer implements java.io.Serializable
{
	/**
	* Empty constructor for use by subclasses.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Sets the thread that currently owns exclusive access. A
	* <tt>null</tt> argument indicates that no thread owns access.
	* This method does not otherwise impose any synchronization or
	* <tt>volatile</tt> field accesses.
	*/
	@:overload @:protected @:final private function setExclusiveOwnerThread(t : java.lang.Thread) : Void;
	
	/**
	* Returns the thread last set by
	* <tt>setExclusiveOwnerThread</tt>, or <tt>null</tt> if never
	* set.  This method does not otherwise impose any synchronization
	* or <tt>volatile</tt> field accesses.
	* @return the owner thread
	*/
	@:overload @:protected @:final private function getExclusiveOwnerThread() : java.lang.Thread;
	
	
}
