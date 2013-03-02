package javax.print;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MimeType implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Construct a new MIME type object from the given string. The given
	* string is converted into canonical form and stored internally.
	*
	* @param  s  MIME media type string.
	*
	* @exception  NullPointerException
	*     (unchecked exception) Thrown if <CODE>s</CODE> is null.
	* @exception  IllegalArgumentException
	*     (unchecked exception) Thrown if <CODE>s</CODE> does not obey the
	*     syntax for a MIME media type string.
	*/
	@:overload public function new(s : String) : Void;
	
	/**
	* Returns this MIME type object's MIME type string based on the canonical
	* form. Each parameter value is enclosed in quotes.
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* Returns this MIME type object's media type.
	*/
	@:overload public function getMediaType() : String;
	
	/**
	* Returns this MIME type object's media subtype.
	*/
	@:overload public function getMediaSubtype() : String;
	
	/**
	* Returns an unmodifiable map view of the parameters in this MIME type
	* object. Each entry in the parameter map view consists of a parameter
	* name String (key) mapping to a parameter value String. If this MIME
	* type object has no parameters, an empty map is returned.
	*
	* @return  Parameter map for this MIME type object.
	*/
	@:overload public function getParameterMap() : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Converts this MIME type object to a string.
	*
	* @return  MIME type string based on the canonical form. Each parameter
	*          value is enclosed in quotes.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hash code for this MIME type object.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Determine if this MIME type object is equal to the given object. The two
	* are equal if the given object is not null, is an instance of class
	* net.jini.print.data.MimeType, and has the same canonical form as this
	* MIME type object (that is, has the same type, subtype, and parameters).
	* Thus, if two MIME type objects are the same except for comments, they are
	* considered equal. However, "text/plain" and "text/plain;
	* charset=us-ascii" are not considered equal, even though they represent
	* the same media type (because the default character set for plain text is
	* US-ASCII).
	*
	* @param  obj  Object to test.
	*
	* @return  True if this MIME type object equals <CODE>obj</CODE>, false
	*          otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
/**
* Parameter map entry.
*/
@:native('javax$print$MimeType$ParameterMapEntry') @:internal extern class MimeType_ParameterMapEntry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload public function new(theIndex : Int) : Void;
	
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function setValue(value : Dynamic) : Dynamic;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* Parameter map entry set iterator.
*/
@:native('javax$print$MimeType$ParameterMapEntrySetIterator') @:internal extern class MimeType_ParameterMapEntrySetIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
/**
* Parameter map entry set.
*/
@:native('javax$print$MimeType$ParameterMapEntrySet') @:internal extern class MimeType_ParameterMapEntrySet extends java.util.AbstractSet<Dynamic>
{
	@:overload public function iterator() : java.util.Iterator<Dynamic>;
	
	@:overload public function size() : Int;
	
	
}
/**
* Parameter map.
*/
@:native('javax$print$MimeType$ParameterMap') @:internal extern class MimeType_ParameterMap extends java.util.AbstractMap<Dynamic, Dynamic>
{
	@:overload public function entrySet() : java.util.Set<Dynamic>;
	
	
}
@:native('javax$print$MimeType$LexicalAnalyzer') @:internal extern class MimeType_LexicalAnalyzer
{
	private var mySource : String;
	
	private var mySourceLength : Int;
	
	private var myCurrentIndex : Int;
	
	private var myLexemeType : Int;
	
	private var myLexemeBeginIndex : Int;
	
	private var myLexemeEndIndex : Int;
	
	@:overload public function new(theSource : String) : Void;
	
	@:overload public function getLexemeType() : Int;
	
	@:overload public function getLexeme() : String;
	
	@:overload public function getLexemeFirstCharacter() : java.StdTypes.Char16;
	
	@:overload public function nextLexeme() : Void;
	
	
}
