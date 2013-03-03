package com.sun.org.apache.xerces.internal.impl.xs;
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
* This exception might be thrown by any constraint checking method.
*
* @xerces.internal
*
* @author Elena Litani, IBM
*
*/
extern class XMLSchemaException extends java.lang.Exception
{
	@:overload @:public public function new(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function getKey() : String;
	
	@:overload @:public public function getArgs() : java.NativeArray<Dynamic>;
	
	
}
