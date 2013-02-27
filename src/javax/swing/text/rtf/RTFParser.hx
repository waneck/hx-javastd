package javax.swing.text.rtf;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* <b>RTFParser</b> is a subclass of <b>AbstractFilter</b> which understands basic RTF syntax
* and passes a stream of control words, text, and begin/end group
* indications to its subclass.
*
* Normally programmers will only use <b>RTFFilter</b>, a subclass of this class that knows what to
* do with the tokens this class parses.
*
* @see AbstractFilter
* @see RTFFilter
*/
@:internal extern class RTFParser extends javax.swing.text.rtf.AbstractFilter
{
	/** The current RTF group nesting level. */
	public var level : Int;
	
	/** A stream to which to write warnings and debugging information
	*  while parsing. This is set to <code>System.out</code> to log
	*  any anomalous information to stdout. */
	private var warnings : java.io.PrintStream;
	
	/** Implemented by subclasses to interpret a parameter-less RTF keyword.
	*  The keyword is passed without the leading '/' or any delimiting
	*  whitespace. */
	@:overload @:abstract public function handleKeyword(keyword : String) : Bool;
	
	/** Implemented by subclasses to interpret a keyword with a parameter.
	*  @param keyword   The keyword, as with <code>handleKeyword(String)</code>.
	*  @param parameter The parameter following the keyword. */
	@:overload @:abstract public function handleKeyword(keyword : String, parameter : Int) : Bool;
	
	/** Implemented by subclasses to interpret text from the RTF stream. */
	@:overload @:abstract public function handleText(text : String) : Void;
	
	@:overload public function handleText(ch : java.StdTypes.Char16) : Void;
	
	/** Implemented by subclasses to handle the contents of the \bin keyword. */
	@:overload @:abstract public function handleBinaryBlob(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** Implemented by subclasses to react to an increase
	*  in the nesting level. */
	@:overload @:abstract public function begingroup() : Void;
	
	/** Implemented by subclasses to react to the end of a group. */
	@:overload @:abstract public function endgroup() : Void;
	
	@:overload public function new() : Void;
	
	@:overload override public function writeSpecial(b : Int) : Void;
	
	@:overload private function warning(s : String) : Void;
	
	@:overload override public function write(s : String) : Void;
	
	@:overload override public function write(ch : java.StdTypes.Char16) : Void;
	
	/** Flushes any buffered but not yet written characters.
	*  Subclasses which override this method should call this
	*  method <em>before</em> flushing
	*  any of their own buffers. */
	@:overload override public function flush() : Void;
	
	/** Closes the parser. Currently, this simply does a <code>flush()</code>,
	*  followed by some minimal consistency checks. */
	@:overload override public function close() : Void;
	
	
}
