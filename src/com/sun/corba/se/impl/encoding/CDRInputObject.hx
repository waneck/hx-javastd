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
extern class CDRInputObject extends com.sun.corba.se.impl.encoding.CDRInputStream implements com.sun.corba.se.pept.encoding.InputObject
{
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, corbaConnection : com.sun.corba.se.spi.transport.CorbaConnection, byteBuffer : java.nio.ByteBuffer, header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload @:public @:final public function getConnection() : com.sun.corba.se.spi.transport.CorbaConnection;
	
	@:overload @:public public function getMessageHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	/**
	* Unmarshal the extended GIOP header
	* NOTE: May be fragmented, so should not be called by the ReaderThread.
	* See CorbaResponseWaitingRoomImpl.waitForResponse.  It is done
	* there in the client thread.
	*/
	@:overload @:public public function unmarshalHeader() : Void;
	
	@:overload @:public @:final public function unmarshaledHeader() : Bool;
	
	/**
	* Override the default CDR factory behavior to get the
	* negotiated code sets from the connection.
	*
	* These are only called once per message, the first time needed.
	*
	* In the local case, there is no Connection, so use the
	* local code sets.
	*/
	@:overload @:protected override private function createCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:protected override private function createWCharBTCConverter() : com.sun.corba.se.impl.encoding.CodeSetConversion.CodeSetConversion_BTCConverter;
	
	@:overload @:public @:final override public function getCodeBase() : com.sun.org.omg.SendingContext.CodeBase;
	
	@:overload @:public override public function dup() : com.sun.corba.se.impl.encoding.CDRInputStream;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	
}
