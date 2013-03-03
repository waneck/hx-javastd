package com.sun.org.apache.xalan.internal.xsltc.cmdline;
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
* $Id: Transform.java,v 1.2.4.1 2005/09/12 09:07:33 pvedula Exp $
*/
extern class Transform
{
	@:overload @:public public function new(className : String, fileName : String, uri : Bool, debug : Bool, iterations : Int) : Void;
	
	@:overload @:public public function getFileName() : String;
	
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function setParameters(params : java.util.Vector<Dynamic>) : Void;
	
	@:overload @:public @:static public static function printUsage() : Void;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	
}
