package com.sun.org.apache.xml.internal.security.c14n.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2008 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class Canonicalizer11_WithComments extends com.sun.org.apache.xml.internal.security.c14n.implementations.Canonicalizer11
{
	/**
	* @author Sean Mullan
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:final override public function engineGetURI() : String;
	
	@:overload @:public @:final override public function engineGetIncludeComments() : Bool;
	
	
}
