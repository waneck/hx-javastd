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
extern interface Message
{
	/**
	* This is the base interface for different message type interfaces.
	*
	* @author Ram Jeyaraman 05/14/2000
	*/
	public var defaultBufferSize : Int;
	
	public var GIOPBigEndian : Int;
	
	public var GIOPLittleEndian : Int;
	
	public var GIOPBigMagic : Int;
	
	public var GIOPLittleMagic : Int;
	
	public var GIOPMessageHeaderLength : Int;
	
	public var LITTLE_ENDIAN_BIT : java.StdTypes.Int8;
	
	public var MORE_FRAGMENTS_BIT : java.StdTypes.Int8;
	
	public var FLAG_NO_FRAG_BIG_ENDIAN : java.StdTypes.Int8;
	
	public var CDR_ENC_VERSION : java.StdTypes.Int8;
	
	public var JAVA_ENC_VERSION : java.StdTypes.Int8;
	
	public var GIOPRequest : java.StdTypes.Int8;
	
	public var GIOPReply : java.StdTypes.Int8;
	
	public var GIOPCancelRequest : java.StdTypes.Int8;
	
	public var GIOPLocateRequest : java.StdTypes.Int8;
	
	public var GIOPLocateReply : java.StdTypes.Int8;
	
	public var GIOPCloseConnection : java.StdTypes.Int8;
	
	public var GIOPMessageError : java.StdTypes.Int8;
	
	public var GIOPFragment : java.StdTypes.Int8;
	
	@:overload public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload public function getEncodingVersion() : java.StdTypes.Int8;
	
	@:overload public function isLittleEndian() : Bool;
	
	@:overload public function moreFragmentsToFollow() : Bool;
	
	@:overload public function getType() : Int;
	
	@:overload public function getSize() : Int;
	
	@:overload public function getByteBuffer() : java.nio.ByteBuffer;
	
	@:overload public function getThreadPoolToUse() : Int;
	
	@:overload public function read(istream : org.omg.CORBA.portable.InputStream) : Void;
	
	@:overload public function write(ostream : org.omg.CORBA.portable.OutputStream) : Void;
	
	@:overload public function setSize(byteBuffer : java.nio.ByteBuffer, size : Int) : Void;
	
	@:overload public function createFragmentMessage() : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage;
	
	//@:overload public function _callback(handler : com.sun.corba.se.impl.protocol.giopmsgheaders.MessageHandler) : Void;
	
	@:overload public function setByteBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload public function setEncodingVersion(version : java.StdTypes.Int8) : Void;
	
	
}
