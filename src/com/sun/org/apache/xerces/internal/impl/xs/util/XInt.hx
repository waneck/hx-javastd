package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
/**
* @xerces.internal
*
* @author Henry Zongaro, IBM
*/
extern class XInt
{
	@:overload @:final public function intValue() : Int;
	
	@:overload @:final public function shortValue() : java.StdTypes.Int16;
	
	@:overload @:final public function equals(compareVal : com.sun.org.apache.xerces.internal.impl.xs.util.XInt) : Bool;
	
	@:overload public function toString() : String;
	
	
}
