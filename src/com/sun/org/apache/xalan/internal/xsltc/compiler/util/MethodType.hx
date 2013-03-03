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
* $Id: MethodType.java,v 1.2.4.1 2005/09/05 11:18:05 pvedula Exp $
*/
extern class MethodType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
{
	@:overload @:public public function new(resultType : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	@:overload @:public public function new(resultType : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg1 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	@:overload @:public public function new(resultType : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg1 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg2 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	@:overload @:public public function new(resultType : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg1 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg2 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, arg3 : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	@:overload @:public public function new(resultType : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type, argsType : java.util.Vector<Dynamic>) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function toSignature() : String;
	
	/**
	* Returns the signature of this method that results by adding
	* <code>lastArgSig</code> to the end of the argument list.
	*/
	@:overload @:public public function toSignature(lastArgSig : String) : String;
	
	@:overload @:public override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload @:public override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload @:public override public function distanceTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Int;
	
	@:overload @:public public function resultType() : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public public function argsType() : java.util.Vector<Dynamic>;
	
	@:overload @:public public function argsCount() : Int;
	
	
}
