package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
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
* $Id: SerializerTraceWriter.java,v 1.2.4.1 2005/09/15 08:15:25 suresh_emailid Exp $
*/
@:internal extern class SerializerTraceWriter extends java.io.Writer implements com.sun.org.apache.xml.internal.serializer.WriterChain
{
	/**
	* Constructor.
	* If the writer passed in is null, then this SerializerTraceWriter will
	* only signal trace events of what would have been written to that writer.
	* If the writer passed in is not null then the trace events will mirror
	* what is going to that writer. In this way tools, such as a debugger, can
	* gather information on what is being written out.
	*
	* @param out the Writer to write to (possibly null)
	* @param tracer the tracer to inform that characters are being written
	*/
	@:overload public function new(out : java.io.Writer, tracer : com.sun.org.apache.xml.internal.serializer.SerializerTrace) : Void;
	
	/**
	* Flush the internal buffer and flush the Writer
	* @see java.io.Writer#flush()
	*/
	@:overload override public function flush() : Void;
	
	/**
	* Flush the internal buffer and close the Writer
	* @see java.io.Writer#close()
	*/
	@:overload override public function close() : Void;
	
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
	@:overload override public function write(c : Int) : Void;
	
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
	@:overload override public function write(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Write a string.
	*
	* @param  s  String to be written
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(s : String) : Void;
	
	/**
	* Get the writer that this one directly wraps.
	*/
	@:overload public function getWriter() : java.io.Writer;
	
	/**
	* Get the OutputStream that is the at the end of the
	* chain of writers.
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	
}
