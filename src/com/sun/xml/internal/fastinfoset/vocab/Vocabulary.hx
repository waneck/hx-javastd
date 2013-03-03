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
extern class Vocabulary
{
	@:public @:static @:final public static var RESTRICTED_ALPHABET(default, null) : Int;
	
	@:public @:static @:final public static var ENCODING_ALGORITHM(default, null) : Int;
	
	@:public @:static @:final public static var PREFIX(default, null) : Int;
	
	@:public @:static @:final public static var NAMESPACE_NAME(default, null) : Int;
	
	@:public @:static @:final public static var LOCAL_NAME(default, null) : Int;
	
	@:public @:static @:final public static var OTHER_NCNAME(default, null) : Int;
	
	@:public @:static @:final public static var OTHER_URI(default, null) : Int;
	
	@:public @:static @:final public static var ATTRIBUTE_VALUE(default, null) : Int;
	
	@:public @:static @:final public static var OTHER_STRING(default, null) : Int;
	
	@:public @:static @:final public static var CHARACTER_CONTENT_CHUNK(default, null) : Int;
	
	@:public @:static @:final public static var ELEMENT_NAME(default, null) : Int;
	
	@:public @:static @:final public static var ATTRIBUTE_NAME(default, null) : Int;
	
	@:protected private var _hasInitialReadOnlyVocabulary : Bool;
	
	@:protected private var _referencedVocabularyURI : String;
	
	@:overload @:public public function hasInitialVocabulary() : Bool;
	
	@:overload @:protected private function setInitialReadOnlyVocabulary(hasInitialReadOnlyVocabulary : Bool) : Void;
	
	@:overload @:public public function hasExternalVocabulary() : Bool;
	
	@:overload @:public public function getExternalVocabularyURI() : String;
	
	@:overload @:protected private function setExternalVocabularyURI(referencedVocabularyURI : String) : Void;
	
	
}
