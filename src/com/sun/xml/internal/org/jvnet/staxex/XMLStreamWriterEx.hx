package com.sun.xml.internal.org.jvnet.staxex;
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
extern interface XMLStreamWriterEx extends javax.xml.stream.XMLStreamWriter
{
	/**
	* Write the binary data.
	*
	* <p>
	* Conceptually (infoset-wise), this produces the base64-encoded binary data on the
	* output. But this allows implementations like FastInfoset or XOP to do the smart
	* thing.
	*
	* <p>
	* The use of this method has some restriction to support XOP. Namely, this method
	* must be invoked as a sole content of an element.
	*
	* <p>
	* (data,start,len) triplet identifies the binary data to be written.
	* After the method invocation, the callee owns the buffer.
	*
	* @param contentType
	*      this mandatory parameter identifies the MIME type of the binary data.
	*      If the MIME type isn't known by the caller, "application/octet-stream" can
	*      be always used to indicate "I don't know." Never null.
	*/
	@:overload public function writeBinary(data : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int, contentType : String) : Void;
	
	/**
	* Writes the binary data.
	*
	* <p>
	* This method works like the {@link #writeBinary(byte[], int, int, String)} method,
	* except that it takes the binary data in the form of {@link DataHandler}, which
	* contains a MIME type ({@link DataHandler#getContentType()} as well as the payload
	* {@link DataHandler#getInputStream()}.
	*
	* @param data
	*      always non-null. After this method call, the callee owns the data handler.
	*/
	@:overload public function writeBinary(data : javax.activation.DataHandler) : Void;
	
	/**
	* Writes the binary data.
	*
	* <p>
	* This version of the writeBinary method allows the caller to produce
	* the binary data by writing it to {@link OutputStream}.
	*
	* <p>
	* It is the caller's responsibility to write and close
	* a stream before it invokes any other methods on {@link XMLStreamWriter}.
	*
	* TODO: experimental. appreciate feedback
	* @param contentType
	*      See the content-type parameter of
	*      {@link #writeBinary(byte[], int, int, String)}. Must not be null.
	*
	* @return
	*      always return a non-null {@link OutputStream}.
	*/
	@:overload public function writeBinary(contentType : String) : java.io.OutputStream;
	
	/**
	* Writes like {@link #writeCharacters(String)} but hides
	* actual data format.
	*
	* @param data
	*      The {@link CharSequence} that represents the
	*      character infoset items to be written.
	*
	*      <p>
	*      The {@link CharSequence} is normally a {@link String},
	*      but can be any other {@link CharSequence} implementation.
	*      For binary data, however, use of {@link Base64Data} is
	*      recommended (so that the consumer interested in seeing it
	*      as binary data may take advantage of mor efficient
	*      data representation.)
	*
	*/
	@:overload public function writePCDATA(data : java.lang.CharSequence) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	
}
