package com.sun.xml.internal.messaging.saaj.packaging.mime.internet;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* @(#)SharedInputStream.java 1.2 02/03/27
*/
extern interface SharedInputStream
{
	/**
	* Return the current position in the InputStream, as an
	* offset from the beginning of the InputStream.
	*
	* @return  the current position
	*/
	@:overload public function getPosition() : haxe.Int64;
	
	/**
	* Return a new InputStream representing a subset of the data
	* from this InputStream, starting at <code>start</code> (inclusive)
	* up to <code>end</code> (exclusive).  <code>start</code> must be
	* non-negative.  If <code>end</code> is -1, the new stream ends
	* at the same place as this stream.  The returned InputStream
	* will also implement the SharedInputStream interface.
	*
	* @param   start   the starting position
	* @param   end     the ending position + 1
	* @return          the new stream
	*/
	@:overload public function newStream(start : haxe.Int64, end : haxe.Int64) : java.io.InputStream;
	
	/**
	* Writes the specified region to another {@link OutputStream}.
	*/
	@:overload public function writeTo(start : haxe.Int64, end : haxe.Int64, out : java.io.OutputStream) : Void;
	
	
}
