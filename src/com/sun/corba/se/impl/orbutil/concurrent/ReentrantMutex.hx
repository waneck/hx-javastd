package com.sun.corba.se.impl.orbutil.concurrent;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
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
File: Mutex.java

Originally written by Doug Lea and released into the public domain.
This may be used for any purposes whatsoever without acknowledgment.
Thanks for the assistance and support of Sun Microsystems Labs,
and everyone contributing, testing, and using this code.

History:
Date       Who                What
11Jun1998  dl               Create public version
*/
extern class ReentrantMutex implements com.sun.corba.se.impl.orbutil.concurrent.Sync
{
	/** The thread holding the lock **/
	private var holder_ : java.lang.Thread;
	
	/** number of times thread has acquired the lock **/
	private var counter_ : Int;
	
	private var debug : Bool;
	
	@:overload public function new() : Void;
	
	@:overload public function new(debug : Bool) : Void;
	
	@:overload public function acquire() : Void;
	
	@:overload @:synchronized public function release() : Void;
	
	@:overload public function attempt(msecs : haxe.Int64) : Bool;
	
	
}
