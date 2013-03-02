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
extern class MessageBase implements com.sun.corba.se.impl.protocol.giopmsgheaders.Message
{
	/**
	* This class acts as the base class for the various GIOP message types. This
	* also serves as a factory to create various message types. We currently
	* support GIOP 1.0, 1.1 and 1.2 message types.
	*
	* @author Ram Jeyaraman 05/14/2000
	*/
	public var giopHeader : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function typeToString(type : Int) : String;
	
	@:overload public static function typeToString(type : java.StdTypes.Int8) : String;
	
	@:overload public static function readGIOPMessage(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.spi.transport.CorbaConnection) : com.sun.corba.se.impl.protocol.giopmsgheaders.MessageBase;
	
	@:overload public static function readGIOPHeader(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.spi.transport.CorbaConnection) : com.sun.corba.se.impl.protocol.giopmsgheaders.MessageBase;
	
	@:overload public static function readGIOPBody(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.spi.transport.CorbaConnection, msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload public static function createRequest(orb : com.sun.corba.se.spi.orb.ORB, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, request_id : Int, response_expected : Bool, ior : com.sun.corba.se.spi.ior.IOR, addrDisp : java.StdTypes.Int16, operation : String, service_contexts : com.sun.corba.se.spi.servicecontext.ServiceContexts, requesting_principal : org.omg.CORBA.Principal) : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
	
	@:overload public static function createReply(orb : com.sun.corba.se.spi.orb.ORB, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, request_id : Int, reply_status : Int, service_contexts : com.sun.corba.se.spi.servicecontext.ServiceContexts, ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage;
	
	@:overload public static function createLocateRequest(orb : com.sun.corba.se.spi.orb.ORB, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, request_id : Int, object_key : java.NativeArray<java.StdTypes.Int8>) : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage;
	
	@:overload public static function createLocateReply(orb : com.sun.corba.se.spi.orb.ORB, gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, request_id : Int, locate_status : Int, ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage;
	
	@:overload public static function createCancelRequest(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion, request_id : Int) : com.sun.corba.se.impl.protocol.giopmsgheaders.CancelRequestMessage;
	
	@:overload public static function createCloseConnection(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload public static function createMessageError(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:native('createFragmentMessage') @:overload public static function _createFragmentMessage(gv : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage;
	
	@:overload public static function getRequestId(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Int;
	
	/**
	* Set a flag in the given buffer (fragment bit, byte order bit, etc)
	*/
	@:overload public static function setFlag(byteBuffer : java.nio.ByteBuffer, flag : Int) : Void;
	
	/**
	* Clears a flag in the given buffer
	*/
	@:overload public static function clearFlag(buf : java.NativeArray<java.StdTypes.Int8>, flag : Int) : Void;
	
	//@:overload public function _callback(handler : com.sun.corba.se.impl.protocol.giopmsgheaders.MessageHandler) : Void;
	
	@:overload public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload public function getThreadPoolToUse() : Int;
	
	@:overload public function getEncodingVersion() : java.StdTypes.Int8;
	
	@:overload public function setEncodingVersion(version : java.StdTypes.Int8) : Void;
	
	@:overload public function read(istream : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function isLittleEndian() : Bool;
	
	@:overload public function moreFragmentsToFollow() : Bool;
	
	@:overload public function createFragmentMessage() : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage;
	
	@:overload public function getType() : Int;
	
	@:overload public function setSize(byteBuffer : java.nio.ByteBuffer, size : Int) : Void;
	
	@:overload public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload public function getSize() : Int;
	
	
}
