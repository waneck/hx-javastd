package sun.nio.fs;
/*
* Copyright (c) 2008, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Cancellable implements java.lang.Runnable
{
	@:overload private function new() : Void;
	
	/**
	* Returns the memory address of a 4-byte int that should be polled to
	* detect cancellation.
	*/
	@:overload private function addressToPollForCancel() : haxe.Int64;
	
	/**
	* The value to write to the polled memory location to indicate that the
	* task has been cancelled. If this method is not overridden then it
	* defaults to MAX_VALUE.
	*/
	@:overload private function cancelValue() : Int;
	
	@:overload @:final public function run() : Void;
	
	
}
