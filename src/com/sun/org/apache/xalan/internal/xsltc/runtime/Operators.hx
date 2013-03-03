package com.sun.org.apache.xalan.internal.xsltc.runtime;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
/*
* $Id: Operators.java,v 1.2.4.1 2005/09/12 12:02:15 pvedula Exp $
*/
/**
* @author Jacek Ambroziak
* @author Santiago Pericas-Geertsen
*/
extern class Operators
{
	@:public @:static @:final public static var EQ(default, null) : Int;
	
	@:public @:static @:final public static var NE(default, null) : Int;
	
	@:public @:static @:final public static var GT(default, null) : Int;
	
	@:public @:static @:final public static var LT(default, null) : Int;
	
	@:public @:static @:final public static var GE(default, null) : Int;
	
	@:public @:static @:final public static var LE(default, null) : Int;
	
	@:overload @:public @:static @:final public static function getOpNames(operator : Int) : String;
	
	@:overload @:public @:static @:final public static function swapOp(operator : Int) : Int;
	
	
}
