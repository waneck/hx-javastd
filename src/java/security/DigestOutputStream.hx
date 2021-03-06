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
extern class DigestOutputStream extends java.io.FilterOutputStream
{
	/**
	* The message digest associated with this stream.
	*/
	@:protected private var digest : java.security.MessageDigest;
	
	/**
	* Creates a digest output stream, using the specified output stream
	* and message digest.
	*
	* @param stream the output stream.
	*
	* @param digest the message digest to associate with this stream.
	*/
	@:overload @:public public function new(stream : java.io.OutputStream, digest : java.security.MessageDigest) : Void;
	
	/**
	* Returns the message digest associated with this stream.
	*
	* @return the message digest associated with this stream.
	* @see #setMessageDigest(java.security.MessageDigest)
	*/
	@:overload @:public public function getMessageDigest() : java.security.MessageDigest;
	
	/**
	* Associates the specified message digest with this stream.
	*
	* @param digest the message digest to be associated with this stream.
	* @see #getMessageDigest()
	*/
	@:overload @:public public function setMessageDigest(digest : java.security.MessageDigest) : Void;
	
	/**
	* Updates the message digest (if the digest function is on) using
	* the specified byte, and in any case writes the byte
	* to the output stream. That is, if the digest function is on
	* (see {@link #on(boolean) on}), this method calls
	* <code>update</code> on the message digest associated with this
	* stream, passing it the byte <code>b</code>. This method then
	* writes the byte to the output stream, blocking until the byte
	* is actually written.
	*
	* @param b the byte to be used for updating and writing to the
	* output stream.
	*
	* @exception IOException if an I/O error occurs.
	*
	* @see MessageDigest#update(byte)
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Updates the message digest (if the digest function is on) using
	* the specified subarray, and in any case writes the subarray to
	* the output stream. That is, if the digest function is on (see
	* {@link #on(boolean) on}), this method calls <code>update</code>
	* on the message digest associated with this stream, passing it
	* the subarray specifications. This method then writes the subarray
	* bytes to the output stream, blocking until the bytes are actually
	* written.
	*
	* @param b the array containing the subarray to be used for updating
	* and writing to the output stream.
	*
	* @param off the offset into <code>b</code> of the first byte to
	* be updated and written.
	*
	* @param len the number of bytes of data to be updated and written
	* from <code>b</code>, starting at offset <code>off</code>.
	*
	* @exception IOException if an I/O error occurs.
	*
	* @see MessageDigest#update(byte[], int, int)
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Turns the digest function on or off. The default is on.  When
	* it is on, a call to one of the <code>write</code> methods results in an
	* update on the message digest.  But when it is off, the message
	* digest is not updated.
	*
	* @param on true to turn the digest function on, false to turn it
	* off.
	*/
	@:overload @:public public function on(on : Bool) : Void;
	
	/**
	* Prints a string representation of this digest output stream and
	* its associated message digest object.
	*/
	@:overload @:public public function toString() : String;
	
	
}
