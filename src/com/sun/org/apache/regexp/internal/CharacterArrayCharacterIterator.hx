package com.sun.org.apache.regexp.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
/**
* Encapsulates char[] as CharacterIterator
*
* @author <a href="mailto:ales.novak@netbeans.com">Ales Novak</a>
*/
extern class CharacterArrayCharacterIterator implements com.sun.org.apache.regexp.internal.CharacterIterator
{
	/** @param src - encapsulated String */
	@:overload @:public public function new(src : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/** @return a substring */
	@:overload @:public public function substring(beginIndex : Int, endIndex : Int) : String;
	
	/** @return a substring */
	@:overload @:public public function substring(beginIndex : Int) : String;
	
	/** @return a character at the specified position. */
	@:overload @:public public function charAt(pos : Int) : java.StdTypes.Char16;
	
	/** @return <tt>true</tt> iff if the specified index is after the end of the character stream */
	@:overload @:public public function isEnd(pos : Int) : Bool;
	
	
}
