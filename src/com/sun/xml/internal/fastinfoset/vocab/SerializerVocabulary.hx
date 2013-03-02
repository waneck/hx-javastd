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
extern class SerializerVocabulary extends com.sun.xml.internal.fastinfoset.vocab.Vocabulary
{
	public var restrictedAlphabet(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var encodingAlgorithm(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var namespaceName(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var prefix(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var localName(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var otherNCName(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var otherURI(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var attributeValue(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	public var otherString(default, null) : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap;
	
	public var characterContentChunk(default, null) : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap;
	
	public var elementName(default, null) : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap;
	
	public var attributeName(default, null) : com.sun.xml.internal.fastinfoset.util.LocalNameQualifiedNamesMap;
	
	public var tables(default, null) : java.NativeArray<com.sun.xml.internal.fastinfoset.util.KeyIntMap>;
	
	private var _useLocalNameAsKey : Bool;
	
	private var _readOnlyVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;
	
	@:overload public function new() : Void;
	
	@:overload public function new(v : com.sun.xml.internal.org.jvnet.fastinfoset.Vocabulary, useLocalNameAsKey : Bool) : Void;
	
	@:overload public function getReadOnlyVocabulary() : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary;
	
	@:overload private function setReadOnlyVocabulary(readOnlyVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary, clear : Bool) : Void;
	
	@:overload public function setInitialVocabulary(initialVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary, clear : Bool) : Void;
	
	@:overload public function setExternalVocabulary(externalVocabularyURI : String, externalVocabulary : com.sun.xml.internal.fastinfoset.vocab.SerializerVocabulary, clear : Bool) : Void;
	
	@:overload public function clear() : Void;
	
	
}
