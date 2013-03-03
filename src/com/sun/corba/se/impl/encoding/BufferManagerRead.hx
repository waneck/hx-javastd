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
extern interface BufferManagerRead
{
	/**
	* Case: Called from ReaderThread on complete message or fragments.
	*       The given buf may be entire message or a fragment.
	*
	*  The ReaderThread finds the ReadBufferManager instance either in
	*  in a fragment map (when collecting - GIOP 1.2 phase 1) or
	*  in an active server requests map (when streaming - GIOP 1.2 phase 2).
	*
	*  As a model for implementation see IIOPInputStream's
	*  constructor of the same name. There are going to be some variations.
	*
	*/
	@:overload @:public public function processFragment(byteBuffer : java.nio.ByteBuffer, header : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage) : Void;
	
	/**
	* Case: called from CDRInputStream.grow.
	*
	* Does:
	*
	*  this.bufQ.get()
	*
	*  If streaming then sync on bufQ and wait if empty.
	*/
	@:overload @:public public function underflow(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : com.sun.corba.se.impl.encoding.ByteBufferWithInfo;
	
	/**
	* Called once after creating this buffer manager and before
	* it begins processing.
	*/
	@:overload @:public public function init(header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	/**
	* Returns the mark/reset handler for this stream.
	*/
	@:overload @:public public function getMarkAndResetHandler() : com.sun.corba.se.impl.encoding.MarkAndResetHandler;
	
	/*
	* Signals that the processing be cancelled.
	*/
	@:overload @:public public function cancelProcessing(requestId : Int) : Void;
	
	/*
	* Close BufferManagerRead and perform any oustanding cleanup.
	*/
	@:overload @:public public function close(bbwi : com.sun.corba.se.impl.encoding.ByteBufferWithInfo) : Void;
	
	
}
