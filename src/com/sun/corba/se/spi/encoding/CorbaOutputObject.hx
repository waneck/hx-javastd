package com.sun.corba.se.spi.encoding;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaOutputObject extends com.sun.corba.se.impl.encoding.CDROutputStream implements com.sun.corba.se.pept.encoding.OutputObject
{
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, version : com.sun.corba.se.spi.ior.iiop.GIOPVersion, encodingVersion : java.StdTypes.Int8, littleEndian : Bool, bufferManager : com.sun.corba.se.impl.encoding.BufferManagerWrite, streamFormatVersion : java.StdTypes.Int8, usePooledByteBuffers : Bool) : Void;
	
	@:overload @:abstract public function writeTo(connection : com.sun.corba.se.spi.transport.CorbaConnection) : Void;
	
	/**
	* <p> An <code>OutputObject</code> is the interface used by the
	* presentation block to give programming language typed data to
	* the encoding block to be encoded and sent in a message. </p>
	*
	* <p> The implementation of an <code>OutputObject</code> contains the
	* encoded data.  When the presentation block gives programming language
	* typed data to
	* <code>OutputObject</code>, the
	* implementation of <code>OutputObject</code> is responsible for converting
	* that data to the encoded representation of the data for a particular
	* encoding.</p>
	*
	* <p>A particular <em>encoding</em> would subclass
	* <code>OutputObject</code>.  The subclass would provide methods to set
	* the data types appropriate to the presentation block (e.g., simple
	* types such as int or boolean, all the way to any type derived from
	* <code>java.io.Serializable</code>.).</p>
	*
	* <p>Note: the protocol block may also use the <code>OutputObject</code> to
	* set header metadata.</p>
	*
	* @author Harold Carr
*/
	@:overload override public function setMessageMediator(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload override public function getMessageMediator() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload override public function close() : Void;
	
	
}
