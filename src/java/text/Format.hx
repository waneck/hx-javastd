package java.text;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class Format implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Formats an object to produce a string. This is equivalent to
	* <blockquote>
	* {@link #format(Object, StringBuffer, FieldPosition) format}<code>(obj,
	*         new StringBuffer(), new FieldPosition(0)).toString();</code>
	* </blockquote>
	*
	* @param obj    The object to format
	* @return       Formatted string.
	* @exception IllegalArgumentException if the Format cannot format the given
	*            object
	*/
	@:overload @:public @:final public function format(obj : Dynamic) : String;
	
	/**
	* Formats an object and appends the resulting text to a given string
	* buffer.
	* If the <code>pos</code> argument identifies a field used by the format,
	* then its indices are set to the beginning and end of the first such
	* field encountered.
	*
	* @param obj    The object to format
	* @param toAppendTo    where the text is to be appended
	* @param pos    A <code>FieldPosition</code> identifying a field
	*               in the formatted text
	* @return       the string buffer passed in as <code>toAppendTo</code>,
	*               with formatted text appended
	* @exception NullPointerException if <code>toAppendTo</code> or
	*            <code>pos</code> is null
	* @exception IllegalArgumentException if the Format cannot format the given
	*            object
	*/
	@:overload @:public @:abstract public function format(obj : Dynamic, toAppendTo : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats an Object producing an <code>AttributedCharacterIterator</code>.
	* You can use the returned <code>AttributedCharacterIterator</code>
	* to build the resulting String, as well as to determine information
	* about the resulting String.
	* <p>
	* Each attribute key of the AttributedCharacterIterator will be of type
	* <code>Field</code>. It is up to each <code>Format</code> implementation
	* to define what the legal values are for each attribute in the
	* <code>AttributedCharacterIterator</code>, but typically the attribute
	* key is also used as the attribute value.
	* <p>The default implementation creates an
	* <code>AttributedCharacterIterator</code> with no attributes. Subclasses
	* that support fields should override this and create an
	* <code>AttributedCharacterIterator</code> with meaningful attributes.
	*
	* @exception NullPointerException if obj is null.
	* @exception IllegalArgumentException when the Format cannot format the
	*            given object.
	* @param obj The object to format
	* @return AttributedCharacterIterator describing the formatted value.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function formatToCharacterIterator(obj : Dynamic) : java.text.AttributedCharacterIterator;
	
	/**
	* Parses text from a string to produce an object.
	* <p>
	* The method attempts to parse text starting at the index given by
	* <code>pos</code>.
	* If parsing succeeds, then the index of <code>pos</code> is updated
	* to the index after the last character used (parsing does not necessarily
	* use all characters up to the end of the string), and the parsed
	* object is returned. The updated <code>pos</code> can be used to
	* indicate the starting point for the next call to this method.
	* If an error occurs, then the index of <code>pos</code> is not
	* changed, the error index of <code>pos</code> is set to the index of
	* the character where the error occurred, and null is returned.
	*
	* @param source A <code>String</code>, part of which should be parsed.
	* @param pos A <code>ParsePosition</code> object with index and error
	*            index information as described above.
	* @return An <code>Object</code> parsed from the string. In case of
	*         error, returns null.
	* @exception NullPointerException if <code>pos</code> is null.
	*/
	@:overload @:public @:abstract public function parseObject(source : String, pos : java.text.ParsePosition) : Dynamic;
	
	/**
	* Parses text from the beginning of the given string to produce an object.
	* The method may not use the entire text of the given string.
	*
	* @param source A <code>String</code> whose beginning should be parsed.
	* @return An <code>Object</code> parsed from the string.
	* @exception ParseException if the beginning of the specified string
	*            cannot be parsed.
	*/
	@:overload @:public public function parseObject(source : String) : Dynamic;
	
	/**
	* Creates and returns a copy of this object.
	*
	* @return a clone of this instance.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
/**
* Defines constants that are used as attribute keys in the
* <code>AttributedCharacterIterator</code> returned
* from <code>Format.formatToCharacterIterator</code> and as
* field identifiers in <code>FieldPosition</code>.
*
* @since 1.4
*/
@:require(java4) @:native('java$text$Format$Field') extern class Format_Field extends java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute
{
	/**
	* Creates a Field with the specified name.
	*
	* @param name Name of the attribute
	*/
	@:overload @:protected private function new(name : String) : Void;
	
	
}
/**
* FieldDelegate is notified by the various <code>Format</code>
* implementations as they are formatting the Objects. This allows for
* storage of the individual sections of the formatted String for
* later use, such as in a <code>FieldPosition</code> or for an
* <code>AttributedCharacterIterator</code>.
* <p>
* Delegates should NOT assume that the <code>Format</code> will notify
* the delegate of fields in any particular order.
*
* @see FieldPosition.Delegate
* @see CharacterIteratorFieldDelegate
*/
@:native('java$text$Format$FieldDelegate') @:internal extern interface Format_FieldDelegate
{
	/**
	* Notified when a particular region of the String is formatted. This
	* method will be invoked if there is no corresponding integer field id
	* matching <code>attr</code>.
	*
	* @param attr Identifies the field matched
	* @param value Value associated with the field
	* @param start Beginning location of the field, will be >= 0
	* @param end End of the field, will be >= start and <= buffer.length()
	* @param buffer Contains current formatted value, receiver should
	*        NOT modify it.
	*/
	@:overload @:public public function formatted(attr : java.text.Format.Format_Field, value : Dynamic, start : Int, end : Int, buffer : java.lang.StringBuffer) : Void;
	
	/**
	* Notified when a particular region of the String is formatted.
	*
	* @param fieldID Identifies the field by integer
	* @param attr Identifies the field matched
	* @param value Value associated with the field
	* @param start Beginning location of the field, will be >= 0
	* @param end End of the field, will be >= start and <= buffer.length()
	* @param buffer Contains current formatted value, receiver should
	*        NOT modify it.
	*/
	@:overload @:public public function formatted(fieldID : Int, attr : java.text.Format.Format_Field, value : Dynamic, start : Int, end : Int, buffer : java.lang.StringBuffer) : Void;
	
	
}
