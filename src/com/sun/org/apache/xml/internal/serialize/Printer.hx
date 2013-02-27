package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
//// Sep 14, 2000:
////  Fixed serializer to report IO exception directly, instead at
////  the end of document processing.
////  Reported by Patrick Higgins <phiggins@transzap.com>
extern class Printer
{
	/**
	* The output format associated with this serializer. This will never
	* be a null reference. If no format was passed to the constructor,
	* the default one for this document type will be used. The format
	* object is never changed by the serializer.
	*/
	private var _format(default, null) : com.sun.org.apache.xml.internal.serialize.OutputFormat;
	
	/**
	* The writer to which the document is written.
	*/
	private var _writer : java.io.Writer;
	
	/**
	* The DTD writer. When we switch to DTD mode, all output is
	* accumulated in this DTD writer. When we switch out of it,
	* the output is obtained as a string. Must not be reset to
	* null until we're done with the document.
	*/
	private var _dtdWriter : java.io.StringWriter;
	
	/**
	* Holds a reference to the document writer while we are
	* in DTD mode.
	*/
	private var _docWriter : java.io.Writer;
	
	/**
	* Holds the exception thrown by the serializer.  Exceptions do not cause
	* the serializer to quit, but are held and one is thrown at the end.
	*/
	private var _exception : java.io.IOException;
	
	@:overload public function new(writer : java.io.Writer, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload public function getException() : java.io.IOException;
	
	/**
	* Called by any of the DTD handlers to enter DTD mode.
	* Once entered, all output will be accumulated in a string
	* that can be printed as part of the document's DTD.
	* This method may be called any number of time but will only
	* have affect the first time it's called. To exist DTD state
	* and get the accumulated DTD, call {@link #leaveDTD}.
	*/
	@:overload public function enterDTD() : Void;
	
	/**
	* Called by the root element to leave DTD mode and if any
	* DTD parts were printer, will return a string with their
	* textual content.
	*/
	@:overload public function leaveDTD() : String;
	
	@:overload public function printText(text : String) : Void;
	
	@:overload public function printText(text : java.lang.StringBuffer) : Void;
	
	@:overload public function printText(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function printText(ch : java.StdTypes.Char16) : Void;
	
	@:overload public function printSpace() : Void;
	
	@:overload public function breakLine() : Void;
	
	@:overload public function breakLine(preserveSpace : Bool) : Void;
	
	@:overload public function flushLine(preserveSpace : Bool) : Void;
	
	/**
	* Flush the output stream. Must be called when done printing
	* the document, otherwise some text might be buffered.
	*/
	@:overload public function flush() : Void;
	
	@:overload public function indent() : Void;
	
	@:overload public function unindent() : Void;
	
	@:overload public function getNextIndent() : Int;
	
	@:overload public function setNextIndent(indent : Int) : Void;
	
	@:overload public function setThisIndent(indent : Int) : Void;
	
	
}
