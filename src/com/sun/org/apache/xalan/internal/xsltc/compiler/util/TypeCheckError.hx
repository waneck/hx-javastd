package com.sun.org.apache.xalan.internal.xsltc.compiler.util;
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
* $Id: TypeCheckError.java,v 1.2.4.1 2005/09/05 11:42:57 pvedula Exp $
*/
extern class TypeCheckError extends java.lang.Exception
{
	@:overload @:public public function new(node : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	@:overload @:public public function new(error : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg) : Void;
	
	@:overload @:public public function new(code : String, param : Dynamic) : Void;
	
	@:overload @:public public function new(code : String, param1 : Dynamic, param2 : Dynamic) : Void;
	
	@:overload @:public public function getErrorMsg() : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
	
	@:overload @:public override public function getMessage() : String;
	
	@:overload @:public override public function toString() : String;
	
	
}
