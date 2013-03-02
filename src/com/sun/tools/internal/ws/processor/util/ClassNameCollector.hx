package com.sun.tools.internal.ws.processor.util;
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
extern class ClassNameCollector extends com.sun.tools.internal.ws.processor.model.ExtendedModelVisitor implements com.sun.tools.internal.ws.processor.model.jaxb.JAXBTypeVisitor
{
	/**
	* This class writes out a Model as an XML document.
	*
	* @author WS Development Team
	*/
	@:overload public function new() : Void;
	
	@:overload public function process(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload public function getConflictingClassNames() : java.util.Set<Dynamic>;
	
	@:overload private function postVisit(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload private function preVisit(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload private function processPort11x(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload private function preVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload private function postVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload private function shouldVisit(port : com.sun.tools.internal.ws.processor.model.Port) : Bool;
	
	@:overload private function preVisit(fault : com.sun.tools.internal.ws.processor.model.Fault) : Void;
	
	@:overload private function visitBodyBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload private function visitHeaderBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload private function visitFaultBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload private function visitBlock(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload private function visit(parameter : com.sun.tools.internal.ws.processor.model.Parameter) : Void;
	
	@:overload public function getSeiClassNames() : java.util.Set<String>;
	
	@:overload public function getJaxbGeneratedClassNames() : java.util.Set<String>;
	
	@:overload public function getExceptionClassNames() : java.util.Set<String>;
	
	@:overload public function visit(type : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType) : Void;
	
	@:overload public function visit(type : com.sun.tools.internal.ws.processor.model.jaxb.RpcLitStructure) : Void;
	
	
}
