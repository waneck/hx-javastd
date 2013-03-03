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
extern class IndentPrinter extends com.sun.org.apache.xml.internal.serialize.Printer
{
	@:overload @:public public function new(writer : java.io.Writer, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Called by any of the DTD handlers to enter DTD mode.
	* Once entered, all output will be accumulated in a string
	* that can be printed as part of the document's DTD.
	* This method may be called any number of time but will only
	* have affect the first time it's called. To exist DTD state
	* and get the accumulated DTD, call {@link #leaveDTD}.
	*/
	@:overload @:public override public function enterDTD() : Void;
	
	/**
	* Called by the root element to leave DTD mode and if any
	* DTD parts were printer, will return a string with their
	* textual content.
	*/
	@:overload @:public override public function leaveDTD() : String;
	
	/**
	* Called to print additional text. Each time this method is called
	* it accumulates more text. When a space is printed ({@link
	* #printSpace}) all the accumulated text becomes one part and is
	* added to the accumulate line. When a line is long enough, it can
	* be broken at its text boundary.
	*
	* @param text The text to print
	*/
	@:overload @:public override public function printText(text : String) : Void;
	
	@:overload @:public override public function printText(text : java.lang.StringBuffer) : Void;
	
	@:overload @:public override public function printText(ch : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function printText(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Called to print a single space between text parts that may be
	* broken into separate lines. Must not be called to print a space
	* when preserving spaces. The text accumulated so far with {@link
	* #printText} will be added to the accumulated line, and a space
	* separator will be counted. If the line accumulated so far is
	* long enough, it will be printed.
	*/
	@:overload @:public override public function printSpace() : Void;
	
	/**
	* Called to print a line consisting of the text accumulated so
	* far. This is equivalent to calling {@link #printSpace} but
	* forcing the line to print and starting a new line ({@link
	* #printSpace} will only start a new line if the current line
	* is long enough).
	*/
	@:overload @:public override public function breakLine() : Void;
	
	@:overload @:public override public function breakLine(preserveSpace : Bool) : Void;
	
	/**
	* Flushes the line accumulated so far to the writer and get ready
	* to accumulate the next line. This method is called by {@link
	* #printText} and {@link #printSpace} when the accumulated line plus
	* accumulated text are two long to fit on a given line. At the end of
	* this method _line is empty and _spaces is zero.
	*/
	@:overload @:public override public function flushLine(preserveSpace : Bool) : Void;
	
	/**
	* Flush the output stream. Must be called when done printing
	* the document, otherwise some text might be buffered.
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Increment the indentation for the next line.
	*/
	@:overload @:public override public function indent() : Void;
	
	/**
	* Decrement the indentation for the next line.
	*/
	@:overload @:public override public function unindent() : Void;
	
	@:overload @:public override public function getNextIndent() : Int;
	
	@:overload @:public override public function setNextIndent(indent : Int) : Void;
	
	@:overload @:public override public function setThisIndent(indent : Int) : Void;
	
	
}
