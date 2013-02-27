package java.security;
/*
* Copyright (c) 1996, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class DigestInputStream extends java.io.FilterInputStream
{
	/**
	* The message digest associated with this stream.
	*/
	private var digest : java.security.MessageDigest;
	
	/**
	* Creates a digest input stream, using the specified input stream
	* and message digest.
	*
	* @param stream the input stream.
	*
	* @param digest the message digest to associate with this stream.
	*/
	@:overload public function new(stream : java.io.InputStream, digest : java.security.MessageDigest) : Void;
	
	/**
	* Returns the message digest associated with this stream.
	*
	* @return the message digest associated with this stream.
	* @see #setMessageDigest(java.security.MessageDigest)
	*/
	@:overload public function getMessageDigest() : java.security.MessageDigest;
	
	/**
	* Associates the specified message digest with this stream.
	*
	* @param digest the message digest to be associated with this stream.
	* @see #getMessageDigest()
	*/
	@:overload public function setMessageDigest(digest : java.security.MessageDigest) : Void;
	
	/**
	* Reads a byte, and updates the message digest (if the digest
	* function is on).  That is, this method reads a byte from the
	* input stream, blocking until the byte is actually read. If the
	* digest function is on (see {@link #on(boolean) on}), this method
	* will then call <code>update</code> on the message digest associated
	* with this stream, passing it the byte read.
	*
	* @return the byte read.
	*
	* @exception IOException if an I/O error occurs.
	*
	* @see MessageDigest#update(byte)
	*/
	@:overload override public function read() : Int;
	
	/**
	* Reads into a byte array, and updates the message digest (if the
	* digest function is on).  That is, this method reads up to
	* <code>len</code> bytes from the input stream into the array
	* <code>b</code>, starting at offset <code>off</code>. This method
	* blocks until the data is actually
	* read. If the digest function is on (see
	* {@link #on(boolean) on}), this method will then call <code>update</code>
	* on the message digest associated with this stream, passing it
	* the data.
	*
	* @param b the array into which the data is read.
	*
	* @param off the starting offset into <code>b</code> of where the
	* data should be placed.
	*
	* @param len the maximum number of bytes to be read from the input
	* stream into b, starting at offset <code>off</code>.
	*
	* @return  the actual number of bytes read. This is less than
	* <code>len</code> if the end of the stream is reached prior to
	* reading <code>len</code> bytes. -1 is returned if no bytes were
	* read because the end of the stream had already been reached when
	* the call was made.
	*
	* @exception IOException if an I/O error occurs.
	*
	* @see MessageDigest#update(byte[], int, int)
	*/
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Turns the digest function on or off. The default is on.  When
	* it is on, a call to one of the <code>read</code> methods results in an
	* update on the message digest.  But when it is off, the message
	* digest is not updated.
	*
	* @param on true to turn the digest function on, false to turn
	* it off.
	*/
	@:overload public function on(on : Bool) : Void;
	
	/**
	* Prints a string representation of this digest input stream and
	* its associated message digest object.
	*/
	@:overload public function toString() : String;
	
	
}
