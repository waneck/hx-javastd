package com.sun.tools.internal.ws.processor.model.java;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class JavaMethod
{
	@:overload @:public public function new(name : String, options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getReturnType() : com.sun.tools.internal.ws.processor.model.java.JavaType;
	
	@:overload @:public public function setReturnType(returnType : com.sun.tools.internal.ws.processor.model.java.JavaType) : Void;
	
	@:overload @:public public function addParameter(param : com.sun.tools.internal.ws.processor.model.java.JavaParameter) : Void;
	
	@:overload @:public public function getParametersList() : java.util.List<com.sun.tools.internal.ws.processor.model.java.JavaParameter>;
	
	@:overload @:public public function addException(exception : String) : Void;
	
	/** TODO: NB uses it, remove it once we expose it thru some API **/
	@:overload @:public public function getExceptions() : java.util.Iterator<String>;
	
	
}
