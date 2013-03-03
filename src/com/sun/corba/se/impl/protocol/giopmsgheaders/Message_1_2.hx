package com.sun.corba.se.impl.protocol.giopmsgheaders;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Message_1_2 extends com.sun.corba.se.impl.protocol.giopmsgheaders.Message_1_1
{
	@:protected private var request_id : Int;
	
	/**
	* The byteBuffer is presumed to have contents of the message already
	* read in.  It must have 12 bytes of space at the beginning for the GIOP header,
	* but the header doesn't have to be copied in.
	*/
	@:overload @:public public function unmarshalRequestID(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public override public function write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	
}
