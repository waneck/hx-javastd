package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CDROutputObject extends com.sun.corba.se.spi.encoding.CorbaOutputObject
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator, header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator, header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message, streamFormatVersion : java.StdTypes.Int8, strategy : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, mediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, connection : com.sun.corba.se.spi.transport.CorbaConnection, header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message, streamFormatVersion : java.StdTypes.Int8) : Void;
	
	@:overload public function getMessageHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload @:final public function finishSendingMessage() : Void;
	
	/**
	* Write the contents of the CDROutputStream to the specified
	* output stream.  Has the side-effect of pushing any current
	* Message onto the Message list.
	* @param s The output stream to write to.
	*/
	@:overload override public function writeTo(connection : com.sun.corba.se.spi.transport.CorbaConnection) : Void;
	
	/** overrides create_input_stream from CDROutputStream */
	@:overload override public function create_input_stream() : org.omg.CORBA.portable.InputStream;
	
	@:overload public function getConnection() : com.sun.corba.se.spi.transport.CorbaConnection;
	
	@:overload @:final public function getByteBufferWithInfo() : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload @:final public function setByteBufferWithInfo(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	/**
	* Override the default CDR factory behavior to get the
	* negotiated code sets from the connection.
	*
	* These are only called once per message, the first time needed.
	*
	* In the local case, there is no Connection, so use the
	* local code sets.
	*/
	@:overload private function createCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload private function createWCharCTBConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_CTBConverter;
	
	@:overload private function dprint(msg : String) : Void;
	
	
}
