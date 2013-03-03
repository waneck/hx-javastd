package com.sun.tools.internal.ws.wsdl.document;
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
extern interface WSDLDocumentVisitor extends com.sun.tools.internal.ws.wsdl.framework.ExtensionVisitor
{
	/**
	* A visitor for WSDL documents.
	*
	* @author WS Development Team
	*/
	@:overload @:public public function preVisit(definitions : com.sun.tools.internal.ws.wsdl.document.Definitions) : Void;
	
	@:overload @:public public function postVisit(definitions : com.sun.tools.internal.ws.wsdl.document.Definitions) : Void;
	
	@:overload @:public public function visit(i : com.sun.tools.internal.ws.wsdl.document.Import) : Void;
	
	@:overload @:public public function preVisit(types : com.sun.tools.internal.ws.wsdl.document.Types) : Void;
	
	@:overload @:public public function postVisit(types : com.sun.tools.internal.ws.wsdl.document.Types) : Void;
	
	@:overload @:public public function preVisit(message : com.sun.tools.internal.ws.wsdl.document.Message) : Void;
	
	@:overload @:public public function postVisit(message : com.sun.tools.internal.ws.wsdl.document.Message) : Void;
	
	@:overload @:public public function visit(part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Void;
	
	@:overload @:public public function preVisit(portType : com.sun.tools.internal.ws.wsdl.document.PortType) : Void;
	
	@:overload @:public public function postVisit(portType : com.sun.tools.internal.ws.wsdl.document.PortType) : Void;
	
	@:overload @:public public function preVisit(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : Void;
	
	@:overload @:public public function postVisit(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : Void;
	
	@:overload @:public public function preVisit(input : com.sun.tools.internal.ws.wsdl.document.Input) : Void;
	
	@:overload @:public public function postVisit(input : com.sun.tools.internal.ws.wsdl.document.Input) : Void;
	
	@:overload @:public public function preVisit(output : com.sun.tools.internal.ws.wsdl.document.Output) : Void;
	
	@:overload @:public public function postVisit(output : com.sun.tools.internal.ws.wsdl.document.Output) : Void;
	
	@:overload @:public public function preVisit(fault : com.sun.tools.internal.ws.wsdl.document.Fault) : Void;
	
	@:overload @:public public function postVisit(fault : com.sun.tools.internal.ws.wsdl.document.Fault) : Void;
	
	@:overload @:public public function preVisit(binding : com.sun.tools.internal.ws.wsdl.document.Binding) : Void;
	
	@:overload @:public public function postVisit(binding : com.sun.tools.internal.ws.wsdl.document.Binding) : Void;
	
	@:overload @:public public function preVisit(operation : com.sun.tools.internal.ws.wsdl.document.BindingOperation) : Void;
	
	@:overload @:public public function postVisit(operation : com.sun.tools.internal.ws.wsdl.document.BindingOperation) : Void;
	
	@:overload @:public public function preVisit(input : com.sun.tools.internal.ws.wsdl.document.BindingInput) : Void;
	
	@:overload @:public public function postVisit(input : com.sun.tools.internal.ws.wsdl.document.BindingInput) : Void;
	
	@:overload @:public public function preVisit(output : com.sun.tools.internal.ws.wsdl.document.BindingOutput) : Void;
	
	@:overload @:public public function postVisit(output : com.sun.tools.internal.ws.wsdl.document.BindingOutput) : Void;
	
	@:overload @:public public function preVisit(fault : com.sun.tools.internal.ws.wsdl.document.BindingFault) : Void;
	
	@:overload @:public public function postVisit(fault : com.sun.tools.internal.ws.wsdl.document.BindingFault) : Void;
	
	@:overload @:public public function preVisit(service : com.sun.tools.internal.ws.wsdl.document.Service) : Void;
	
	@:overload @:public public function postVisit(service : com.sun.tools.internal.ws.wsdl.document.Service) : Void;
	
	@:overload @:public public function preVisit(port : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload @:public public function postVisit(port : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload @:public public function visit(documentation : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	
}
