package sun.nio.ch;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern interface SelChImpl extends java.nio.channels.Channel
{
	/**
	* An interface that allows translation (and more!).
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getFD() : java.io.FileDescriptor;
	
	@:overload public function getFDVal() : Int;
	
	/**
	* Adds the specified ops if present in interestOps. The specified
	* ops are turned on without affecting the other ops.
	*
	* @return  true iff the new value of sk.readyOps() set by this method
	*          contains at least one bit that the previous value did not
	*          contain
	*/
	@:overload public function translateAndUpdateReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	/**
	* Sets the specified ops if present in interestOps. The specified
	* ops are turned on, and all other ops are turned off.
	*
	* @return  true iff the new value of sk.readyOps() set by this method
	*          contains at least one bit that the previous value did not
	*          contain
	*/
	@:overload public function translateAndSetReadyOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Bool;
	
	@:overload public function translateAndSetInterestOps(ops : Int, sk : sun.nio.ch.SelectionKeyImpl) : Void;
	
	@:overload public function validOps() : Int;
	
	@:overload public function kill() : Void;
	
	
}
