package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferManagerWriteGrow extends com.sun.corba.se.impl.encoding.BufferManagerWrite
{
	@:overload @:public override public function sentFragment() : Bool;
	
	/**
	* Returns the correct buffer size for this type of
	* buffer manager as set in the ORB.
	*/
	@:overload @:public override public function getBufferSize() : Int;
	
	@:overload @:public override public function overflow(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload @:public override public function sendMessage() : Void;
	
	/**
	* Close the BufferManagerWrite and do any outstanding cleanup.
	*
	* No work to do for a BufferManagerWriteGrow.
	*/
	@:overload @:public override public function close() : Void;
	
	
}
