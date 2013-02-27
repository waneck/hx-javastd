package com.sun.org.apache.xpath.internal.objects;
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
extern class DTMXRTreeFrag
{
	@:overload public function new(dtmIdentity : Int, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	@:overload @:final public function destruct() : Void;
	
	@:overload @:final public function getDTMIdentity() : Int;
	
	@:overload @:final public function hashCode() : Int;
	
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	
}
