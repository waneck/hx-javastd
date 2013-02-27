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
* Encapsulates different types of character sources - String, InputStream, ...
* Defines a set of common methods
*
* @author <a href="mailto:ales.novak@netbeans.com">Ales Novak</a>
*/
extern interface CharacterIterator
{
	/** @return a substring */
	@:overload public function substring(beginIndex : Int, endIndex : Int) : String;
	
	/** @return a substring */
	@:overload public function substring(beginIndex : Int) : String;
	
	/** @return a character at the specified position. */
	@:overload public function charAt(pos : Int) : java.StdTypes.Char16;
	
	/** @return <tt>true</tt> iff if the specified index is after the end of the character stream */
	@:overload public function isEnd(pos : Int) : Bool;
	
	
}
