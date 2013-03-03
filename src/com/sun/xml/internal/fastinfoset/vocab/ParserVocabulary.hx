package com.sun.xml.internal.fastinfoset.vocab;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class ParserVocabulary extends com.sun.xml.internal.fastinfoset.vocab.Vocabulary
{
	@:public @:static @:final public static var IDENTIFYING_STRING_TABLE_MAXIMUM_ITEMS_PEOPERTY(default, null) : String;
	
	@:public @:static @:final public static var NON_IDENTIFYING_STRING_TABLE_MAXIMUM_ITEMS_PEOPERTY(default, null) : String;
	
	@:public @:static @:final public static var NON_IDENTIFYING_STRING_TABLE_MAXIMUM_CHARACTERS_PEOPERTY(default, null) : String;
	
	@:protected @:static @:final private static var IDENTIFYING_STRING_TABLE_MAXIMUM_ITEMS(default, null) : Int;
	
	@:protected @:static @:final private static var NON_IDENTIFYING_STRING_TABLE_MAXIMUM_ITEMS(default, null) : Int;
	
	@:protected @:static @:final private static var NON_IDENTIFYING_STRING_TABLE_MAXIMUM_CHARACTERS(default, null) : Int;
	
	@:public @:final public var restrictedAlphabet(default, null) : com.sun.xml.internal.fastinfoset.util.CharArrayArray;
	
	@:public @:final public var encodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var namespaceName(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var prefix(default, null) : com.sun.xml.internal.fastinfoset.util.PrefixArray;
	
	@:public @:final public var localName(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var otherNCName(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var otherURI(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var attributeValue(default, null) : com.sun.xml.internal.fastinfoset.util.StringArray;
	
	@:public @:final public var otherString(default, null) : com.sun.xml.internal.fastinfoset.util.CharArrayArray;
	
	@:public @:final public var characterContentChunk(default, null) : com.sun.xml.internal.fastinfoset.util.ContiguousCharArrayArray;
	
	@:public @:final public var elementName(default, null) : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	@:public @:final public var attributeName(default, null) : com.sun.xml.internal.fastinfoset.util.QualifiedNameArray;
	
	@:public @:final public var tables(default, null) : java.NativeArray<com.sun.xml.internal.fastinfoset.util.ValueArray>;
	
	@:protected private var _readOnlyVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;
	
	/** Creates a new instance of ParserVocabulary */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(v : com.sun.xml.internal.org.jvnet.fastinfoset.Vocabulary) : Void;
	
	@:overload @:public public function setInitialVocabulary(initialVocabulary : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary, clear : Bool) : Void;
	
	@:overload @:public public function setReferencedVocabulary(referencedVocabularyURI : String, referencedVocabulary : com.sun.xml.internal.fastinfoset.vocab.ParserVocabulary, clear : Bool) : Void;
	
	@:overload @:public public function clear() : Void;
	
	
}
