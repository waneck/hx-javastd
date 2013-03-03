package com.sun.tools.internal.ws.processor.modeler.wsdl;
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
extern class WSDLModeler extends com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModelerBase
{
	@:overload @:public public function new(options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder) : Void;
	
	@:overload @:public override public function buildModel() : com.sun.tools.internal.ws.processor.model.Model;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processService(Service, Model, WSDLDocument)
	*/
	@:overload @:protected private function processService(wsdlService : com.sun.tools.internal.ws.wsdl.document.Service, model : com.sun.tools.internal.ws.processor.model.Model, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Void;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processPort(WSDLPort, Service, WSDLDocument)
	*/
	@:overload @:protected private function processPort(wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port, service : com.sun.tools.internal.ws.wsdl.document.Service, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Bool;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processSOAPOperation()
	*/
	@:overload @:protected private function processSOAPOperation() : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:overload @:protected private function processLiteralSOAPOperation(styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse) : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:overload @:protected private function getAsyncOperationName(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : String;
	
	@:overload @:protected private function isAsync(portType : com.sun.tools.internal.ws.wsdl.document.PortType, wsdlOperation : com.sun.tools.internal.ws.wsdl.document.Operation) : Bool;
	
	@:overload @:protected private function handleLiteralSOAPHeaders(request : com.sun.tools.internal.ws.processor.model.Request, response : com.sun.tools.internal.ws.processor.model.Response, headerParts : java.util.Iterator<Dynamic>, duplicateNames : java.util.Set<Dynamic>, definitiveParameterList : java.util.List<String>, processRequest : Bool) : Void;
	
	@:overload @:protected private function handleLiteralSOAPFault(response : com.sun.tools.internal.ws.processor.model.Response, duplicateNames : java.util.Set<Dynamic>) : Void;
	
	@:overload @:protected private function setMessagePartsBinding(styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse) : Bool;
	
	@:overload @:protected private function setMessagePartsBinding(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody, message : com.sun.tools.internal.ws.wsdl.document.Message, styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse, isInput : Bool) : Bool;
	
	@:overload @:protected override private function isConflictingPortClassName(name : String) : Bool;
	
	@:overload @:protected private function isUnwrappable() : Bool;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#isSingleInOutPart(Set, MessagePart)
	*/
	@:overload @:protected private function isSingleInOutPart(inputParameterNames : java.util.Set<Dynamic>, outputPart : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	@:overload @:protected private function buildJAXBModel(wsdlDocument : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Void;
	
	@:overload @:protected private function getJavaPackage() : String;
	
	@:overload @:protected private function createJavaInterfaceForProviderPort(port : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload @:protected private function createJavaInterfaceForPort(port : com.sun.tools.internal.ws.wsdl.document.Port, isProvider : Bool) : Void;
	
	@:overload @:protected private function getServiceInterfaceName(serviceQName : javax.xml.namespace.QName, wsdlService : com.sun.tools.internal.ws.wsdl.document.Service) : String;
	
	@:overload @:protected private function getJavaNameOfSEI(port : com.sun.tools.internal.ws.wsdl.document.Port) : String;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#createJavaMethodForOperation(WSDLPort, WSDLOperation, JavaInterface, Set, Set)
	*/
	@:overload @:protected private function createJavaMethodForOperation(port : com.sun.tools.internal.ws.wsdl.document.Port, operation : com.sun.tools.internal.ws.wsdl.document.Operation, intf : com.sun.tools.internal.ws.processor.model.java.JavaInterface) : Void;
	
	@:overload @:protected private function createJavaExceptionFromLiteralType(fault : com.sun.tools.internal.ws.wsdl.document.Fault, port : com.sun.tools.internal.ws.processor.model.Port, operationName : String) : Bool;
	
	@:overload @:protected private function isRequestResponse() : Bool;
	
	@:overload @:protected private function getAsynParameterOrder() : java.util.List<String>;
	
	@:overload @:protected private function getParameterOrder() : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param port
	* @param suffix
	* @return the Java ClassName for a port
	*/
	@:overload @:protected private function getClassName(port : com.sun.tools.internal.ws.wsdl.document.Port, suffix : String) : String;
	
	@:overload @:protected override private function isConflictingServiceClassName(name : String) : Bool;
	
	@:overload @:protected override private function isConflictingExceptionClassName(name : String) : Bool;
	
	@:overload @:protected private function getJAXBModelBuilder() : com.sun.tools.internal.ws.processor.modeler.wsdl.JAXBModelBuilder;
	
	@:overload @:protected private function validateWSDLBindingStyle(binding : com.sun.tools.internal.ws.wsdl.document.Binding) : Bool;
	
	@:overload @:protected @:static private static function setDocumentationIfPresent(obj : com.sun.tools.internal.ws.processor.model.ModelObject, documentation : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload @:protected private function getJavaNameForOperation(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : String;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModeler$StyleAndUse') privateextern enum WSDLModeler_StyleAndUse
{
	RPC_LITERAL;
	DOC_LITERAL;
	
}

