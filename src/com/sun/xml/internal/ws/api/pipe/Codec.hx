package com.sun.xml.internal.ws.api.pipe;
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
extern interface Codec
{
	/**
	* Get the MIME type associated with this Codec.
	* <p>
	* If available the MIME type will represent the media that the codec
	* encodes and decodes.
	*
	* The MIME type returned will be the most general representation independent
	* of an instance of this MIME type utilized as a MIME content-type.
	*
	* @return
	*      null if the MIME type can't be determined by the <code>Codec</code>
	*      implementation. Otherwise the MIME type is returned.
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* If the MIME content-type of the encoding is known statically
	* then this method returns it.
	*
	* <p>
	* Transports often need to write the content type before it writes
	* the message body, and since the encode method returns the content type
	* after the body is written, it requires a buffering.
	*
	* For those {@link Codec}s that always use a constant content type,
	* This method allows a transport to streamline the write operation.
	*
	* @return
	*      null if the content-type can't be determined in short of
	*      encodin the packet. Otherwise content type for this {@link Packet},
	*      such as "application/xml".
	*/
	@:overload public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	/**
	* Encodes an XML infoset portion of the {@link Message}
	* (from &lt;soap:Envelope> to &lt;/soap:Envelope>).
	*
	* <p>
	* Internally, this method is most likely invoke {@link Message#writeTo(XMLStreamWriter)}
	* to turn the message into infoset.
	*
	* @param packet
	* @param out
	*      Must not be null. The caller is responsible for closing the stream,
	*      not the callee.
	*
	* @return
	*      The MIME content type of the encoded message (such as "application/xml").
	*      This information is often ncessary by transport.
	*
	* @throws IOException
	*      if a {@link OutputStream} throws {@link IOException}.
	*/
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	/**
	* The version of {@link #encode(Packet,OutputStream)}
	* that writes to NIO {@link ByteBuffer}.
	*
	* <p>
	* TODO: for the convenience of implementation, write
	* an adapter that wraps {@link WritableByteChannel} to {@link OutputStream}.
	*/
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	/**
	* Creates a copy of this {@link Codec}.
	*
	* <p>
	* Since {@link Codec} instance is not re-entrant, the caller
	* who needs to encode two {@link Message}s simultaneously will
	* want to have two {@link Codec} instances. That's what this
	* method produces.
	*
	* <h3>Implentation Note</h3>
	* <p>
	* Note that this method might be invoked by one thread while
	* another thread is executing one of the {@link #encode} methods.
	* <!-- or otherwise you'd always have to maintain one idle copy -->
	* <!-- just so that you can make copies from -->
	* This should be OK because you'll be only copying things that
	* are thread-safe, and creating new ones for thread-unsafe resources,
	* but please let us know if this contract is difficult.
	*
	* @return
	*      always non-null valid {@link Codec} that performs
	*      the encoding work in the same way --- that is, if you
	*      copy an FI codec, you'll get another FI codec.
	*
	*      <p>
	*      Once copied, two {@link Codec}s may be invoked from
	*      two threads concurrently; therefore, they must not share
	*      any state that requires isolation (such as temporary buffer.)
	*
	*      <p>
	*      If the {@link Codec} implementation is already
	*      re-entrant and multi-thread safe to begin with,
	*      then this method may simply return <tt>this</tt>.
	*/
	@:overload public function copy() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* Reads bytes from {@link InputStream} and constructs a {@link Message}.
	*
	* <p>
	* The design encourages lazy decoding of a {@link Message}, where
	* a {@link Message} is returned even before the whole message is parsed,
	* and additional parsing is done as the {@link Message} body is read along.
	* A {@link Codec} is most likely have its own implementation of {@link Message}
	* for this purpose.
	*
	* @param in
	*      the data to be read into a {@link Message}. The transport would have
	*      read any transport-specific header before it passes an {@link InputStream},
	*      and {@link InputStream} is expected to be read until EOS. Never null.
	*
	*      <p>
	*      Some transports, such as SMTP, may 'encode' data into another format
	*      (such as uuencode, base64, etc.) It is the caller's responsibility to
	*      'decode' these transport-level encoding before it passes data into
	*      {@link Codec}.
	*
	* @param contentType
	*      The MIME content type (like "application/xml") of this byte stream.
	*      Thie text includes all the sub-headers of the content-type header. Therefore,
	*      in more complex case, this could be something like
	*      <tt>multipart/related; boundary="--=_outer_boundary"; type="multipart/alternative"</tt>.
	*      This parameter must not be null.
	*
	* @param response
	*      The parsed {@link Message} will be set to this {@link Packet}.
	*      {@link Codec} may add additional properties to this {@link Packet}.
	*      On a successful method completion, a {@link Packet} must contain a
	*      {@link Message}.
	*
	* @throws IOException
	*      if {@link InputStream} throws an exception.
	*/
	@:overload public function decode(_in : java.io.InputStream, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	*
	* @see #decode(InputStream, String, Packet)
	*/
	@:overload public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}
