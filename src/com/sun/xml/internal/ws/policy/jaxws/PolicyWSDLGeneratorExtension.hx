package com.sun.xml.internal.ws.policy.jaxws;
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
extern class PolicyWSDLGeneratorExtension extends com.sun.xml.internal.ws.api.wsdl.writer.WSDLGeneratorExtension
{
	@:overload override public function start(context : com.sun.xml.internal.ws.api.wsdl.writer.WSDLGenExtnContext) : Void;
	
	@:overload override public function addDefinitionsExtension(definitions : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	@:overload override public function addServiceExtension(service : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	@:overload override public function addPortExtension(port : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	@:overload override public function addPortTypeExtension(portType : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	@:overload override public function addBindingExtension(binding : com.sun.xml.internal.txw2.TypedXmlWriter) : Void;
	
	@:overload override public function addOperationExtension(operation : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addBindingOperationExtension(operation : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addInputMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addOutputMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addFaultMessageExtension(message : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, exception : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	@:overload override public function addOperationInputExtension(input : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addOperationOutputExtension(output : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addOperationFaultExtension(fault : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, exception : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	@:overload override public function addBindingOperationInputExtension(input : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addBindingOperationOutputExtension(output : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod) : Void;
	
	@:overload override public function addBindingOperationFaultExtension(writer : com.sun.xml.internal.txw2.TypedXmlWriter, method : com.sun.xml.internal.ws.api.model.JavaMethod, exception : com.sun.xml.internal.ws.api.model.CheckedException) : Void;
	
	
}
/**
* Marshals the contents of a policy map to WSDL.
*
* @author Jakub Podlesak (jakub.podlesak at sun.com)
* @author Fabian Ritzmann
*/
@:native('com$sun$xml$internal$ws$policy$jaxws$PolicyWSDLGeneratorExtension$ScopeType') extern enum PolicyWSDLGeneratorExtension_ScopeType
{
	SERVICE;
	ENDPOINT;
	OPERATION;
	INPUT_MESSAGE;
	OUTPUT_MESSAGE;
	FAULT_MESSAGE;
	
}

