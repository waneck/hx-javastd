package com.sun.corba.se.impl.encoding;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferManagerReadStream implements com.sun.corba.se.impl.encoding.BufferManagerRead implements com.sun.corba.se.impl.encoding.MarkAndResetHandler
{
	@:overload public function cancelProcessing(requestId : Int) : Void;
	
	@:overload public function processFragment(byteBuffer : java.nio.ByteBuffer, msg : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage) : Void;
	
	@:overload public function underflow(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	@:overload public function init(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload public function close(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload private function getByteBufferPool() : com.sun.corba.se.pept.transport.ByteBufferPool;
	
	@:overload public function mark(inputStream : com.sun.corba.se.impl.encoding.RestorableInputStream) : Void;
	
	@:overload public function fragmentationOccured(newFragment : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function getMarkAndResetHandler() : com.sun.corba.se.impl.encoding.MarkAndResetHandler;
	
	
}
