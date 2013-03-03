package javax.xml.transform.stream;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class StreamResult implements javax.xml.transform.Result
{
	/** If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the Transformer supports Result output of this type.
	*/
	@:public @:static @:final public static var FEATURE(default, null) : String;
	
	/**
	* Zero-argument default constructor.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a StreamResult from a byte stream.  Normally,
	* a stream should be used rather than a reader, so that
	* the transformer may use instructions contained in the
	* transformation instructions to control the encoding.
	*
	* @param outputStream A valid OutputStream reference.
	*/
	@:overload @:public public function new(outputStream : java.io.OutputStream) : Void;
	
	/**
	* Construct a StreamResult from a character stream.  Normally,
	* a stream should be used rather than a reader, so that
	* the transformer may use instructions contained in the
	* transformation instructions to control the encoding.  However,
	* there are times when it is useful to write to a character
	* stream, such as when using a StringWriter.
	*
	* @param writer  A valid Writer reference.
	*/
	@:overload @:public public function new(writer : java.io.Writer) : Void;
	
	/**
	* Construct a StreamResult from a URL.
	*
	* @param systemId Must be a String that conforms to the URI syntax.
	*/
	@:overload @:public public function new(systemId : String) : Void;
	
	/**
	* Construct a StreamResult from a File.
	*
	* @param f Must a non-null File reference.
	*/
	@:overload @:public public function new(f : java.io.File) : Void;
	
	/**
	* Set the ByteStream that is to be written to.  Normally,
	* a stream should be used rather than a reader, so that
	* the transformer may use instructions contained in the
	* transformation instructions to control the encoding.
	*
	* @param outputStream A valid OutputStream reference.
	*/
	@:overload @:public public function setOutputStream(outputStream : java.io.OutputStream) : Void;
	
	/**
	* Get the byte stream that was set with setOutputStream.
	*
	* @return The byte stream that was set with setOutputStream, or null
	* if setOutputStream or the ByteStream constructor was not called.
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Set the writer that is to receive the result.  Normally,
	* a stream should be used rather than a writer, so that
	* the transformer may use instructions contained in the
	* transformation instructions to control the encoding.  However,
	* there are times when it is useful to write to a writer,
	* such as when using a StringWriter.
	*
	* @param writer  A valid Writer reference.
	*/
	@:overload @:public public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Get the character stream that was set with setWriter.
	*
	* @return The character stream that was set with setWriter, or null
	* if setWriter or the Writer constructor was not called.
	*/
	@:overload @:public public function getWriter() : java.io.Writer;
	
	/**
	* Set the systemID that may be used in association
	* with the byte or character stream, or, if neither is set, use
	* this value as a writeable URI (probably a file name).
	*
	* @param systemId The system identifier as a URI string.
	*/
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	/**
	* <p>Set the system ID from a <code>File</code> reference.</p>
	*
	*
	* @param f Must a non-null File reference.
	*/
	@:overload @:public public function setSystemId(f : java.io.File) : Void;
	
	/**
	* Get the system identifier that was set with setSystemId.
	*
	* @return The system identifier that was set with setSystemId, or null
	* if setSystemId was not called.
	*/
	@:overload @:public public function getSystemId() : String;
	
	
}
