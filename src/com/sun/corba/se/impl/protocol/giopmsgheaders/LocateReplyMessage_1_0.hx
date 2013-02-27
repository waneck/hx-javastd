package com.sun.corba.se.impl.protocol.giopmsgheaders;
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
extern class LocateReplyMessage_1_0 extends com.sun.corba.se.impl.protocol.giopmsgheaders.Message_1_0 implements com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage
{
	@:overload public function getRequestId() : Int;
	
	@:overload public function getReplyStatus() : Int;
	
	@:overload public function getAddrDisposition() : java.StdTypes.Int16;
	
	@:overload public function getSystemException(message : String) : org.omg.CORBA.SystemException;
	
	@:overload public function getIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload override public function read(istream : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload override public function write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public static function isValidReplyStatus(replyStatus : Int) : Void;
	
	//@:overload override public function _callback(handler : com.sun.corba.se.impl.protocol.giopmsgheaders.MessageHandler) : Void;
	
	
}