package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: WriterToUTF8Buffered.java,v 1.2.4.1 2005/09/15 08:15:31 suresh_emailid Exp $
*/
@:internal extern class WriterToUTF8Buffered extends java.io.Writer implements com.sun.org.apache.xml.internal.serializer.WriterChain
{
	/**
	* Create an buffered UTF-8 writer.
	*
	*
	* @param   out    the underlying output stream.
	*
	* @throws UnsupportedEncodingException
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Write a single character.  The character to be written is contained in
	* the 16 low-order bits of the given integer value; the 16 high-order bits
	* are ignored.
	*
	* <p> Subclasses that intend to support efficient single-character output
	* should override this method.
	*
	* @param c  int specifying a character to be written.
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function write(c : Int) : Void;
	
	/**
	* Write a portion of an array of characters.
	*
	* @param  chars  Array of characters
	* @param  start   Offset from which to start writing characters
	* @param  length   Number of characters to write
	*
	* @exception  IOException  If an I/O error occurs
	*
	* @throws java.io.IOException
	*/
	@:overload @:public override public function write(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Write a string.
	*
	* @param  s  String to be written
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function write(s : String) : Void;
	
	/**
	* Flush the internal buffer
	*
	* @throws IOException
	*/
	@:overload @:public public function flushBuffer() : Void;
	
	/**
	* Flush the stream.  If the stream has saved any characters from the
	* various write() methods in a buffer, write them immediately to their
	* intended destination.  Then, if that destination is another character or
	* byte stream, flush it.  Thus one flush() invocation will flush all the
	* buffers in a chain of Writers and OutputStreams.
	*
	* @exception  IOException  If an I/O error occurs
	*
	* @throws java.io.IOException
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Close the stream, flushing it first.  Once a stream has been closed,
	* further write() or flush() invocations will cause an IOException to be
	* thrown.  Closing a previously-closed stream, however, has no effect.
	*
	* @exception  IOException  If an I/O error occurs
	*
	* @throws java.io.IOException
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Get the output stream where the events will be serialized to.
	*
	* @return reference to the result stream, or null of only a writer was
	* set.
	*/
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	@:overload @:public public function getWriter() : java.io.Writer;
	
	
}
