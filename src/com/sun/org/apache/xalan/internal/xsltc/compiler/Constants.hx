package com.sun.org.apache.xalan.internal.xsltc.compiler;
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
* $Id: Constants.java,v 1.7 2006/06/19 19:49:04 spericas Exp $
*/
extern interface Constants extends com.sun.org.apache.bcel.internal.generic.InstructionConstants
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	public var INTERNAL(default, null) : Int;
	
	public var UNSUPPORTED(default, null) : Int;
	
	public var FATAL(default, null) : Int;
	
	public var ERROR(default, null) : Int;
	
	public var WARNING(default, null) : Int;
	
	
}
