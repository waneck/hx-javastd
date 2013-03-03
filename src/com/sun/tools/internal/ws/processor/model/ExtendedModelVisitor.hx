package com.sun.tools.internal.ws.processor.model;
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
extern class ExtendedModelVisitor
{
	/**
	*
	* A model visitor incorporating all the logic required to walk through the model.
	*
	* @author WS Development Team
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function visit(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload @:protected private function shouldVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Bool;
	
	@:overload @:protected private function preVisit(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload @:protected private function postVisit(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload @:protected private function preVisit(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload @:protected private function postVisit(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload @:protected private function preVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload @:protected private function postVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload @:protected private function preVisit(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload @:protected private function postVisit(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload @:protected private function preVisit(request : com.sun.tools.internal.ws.processor.model.Request) : Void;
	
	@:overload @:protected private function postVisit(request : com.sun.tools.internal.ws.processor.model.Request) : Void;
	
	@:overload @:protected private function preVisit(response : com.sun.tools.internal.ws.processor.model.Response) : Void;
	
	@:overload @:protected private function postVisit(response : com.sun.tools.internal.ws.processor.model.Response) : Void;
	
	@:overload @:protected private function preVisit(fault : com.sun.tools.internal.ws.processor.model.Fault) : Void;
	
	@:overload @:protected private function postVisit(fault : com.sun.tools.internal.ws.processor.model.Fault) : Void;
	
	@:overload @:protected private function visitBodyBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:protected private function visitHeaderBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:protected private function visitFaultBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:protected private function visit(parameter : com.sun.tools.internal.ws.processor.model.Parameter) : Void;
	
	
}
