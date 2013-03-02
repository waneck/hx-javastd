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
	@:overload public function new(options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder) : Void;
	
	@:overload public function buildModel() : com.sun.tools.internal.ws.processor.model.Model;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processService(Service, Model, WSDLDocument)
	*/
	@:overload private function processService(wsdlService : com.sun.tools.internal.ws.wsdl.document.Service, model : com.sun.tools.internal.ws.processor.model.Model, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Void;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processPort(WSDLPort, Service, WSDLDocument)
	*/
	@:overload private function processPort(wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port, service : com.sun.tools.internal.ws.wsdl.document.Service, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Bool;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#processSOAPOperation()
	*/
	@:overload private function processSOAPOperation() : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:overload private function processLiteralSOAPOperation(styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse) : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:overload private function getAsyncOperationName(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : String;
	
	@:overload private function isAsync(portType : com.sun.tools.internal.ws.wsdl.document.PortType, wsdlOperation : com.sun.tools.internal.ws.wsdl.document.Operation) : Bool;
	
	@:overload private function handleLiteralSOAPHeaders(request : com.sun.tools.internal.ws.processor.model.Request, response : com.sun.tools.internal.ws.processor.model.Response, headerParts : java.util.Iterator<Dynamic>, duplicateNames : java.util.Set<Dynamic>, definitiveParameterList : java.util.List<String>, processRequest : Bool) : Void;
	
	@:overload private function handleLiteralSOAPFault(response : com.sun.tools.internal.ws.processor.model.Response, duplicateNames : java.util.Set<Dynamic>) : Void;
	
	@:overload private function setMessagePartsBinding(styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse) : Bool;
	
	@:overload private function setMessagePartsBinding(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody, message : com.sun.tools.internal.ws.wsdl.document.Message, styleAndUse : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModeler.WSDLModeler_StyleAndUse, isInput : Bool) : Bool;
	
	@:overload private function isConflictingPortClassName(name : String) : Bool;
	
	@:overload private function isUnwrappable() : Bool;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#isSingleInOutPart(Set, MessagePart)
	*/
	@:overload private function isSingleInOutPart(inputParameterNames : java.util.Set<Dynamic>, outputPart : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	@:overload private function buildJAXBModel(wsdlDocument : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : Void;
	
	@:overload private function getJavaPackage() : String;
	
	@:overload private function createJavaInterfaceForProviderPort(port : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload private function createJavaInterfaceForPort(port : com.sun.tools.internal.ws.wsdl.document.Port, isProvider : Bool) : Void;
	
	@:overload private function getServiceInterfaceName(serviceQName : javax.xml.namespace.QName, wsdlService : com.sun.tools.internal.ws.wsdl.document.Service) : String;
	
	@:overload private function getJavaNameOfSEI(port : com.sun.tools.internal.ws.wsdl.document.Port) : String;
	
	/* (non-Javadoc)
	* @see WSDLModelerBase#createJavaMethodForOperation(WSDLPort, WSDLOperation, JavaInterface, Set, Set)
	*/
	@:overload private function createJavaMethodForOperation(port : com.sun.tools.internal.ws.wsdl.document.Port, operation : com.sun.tools.internal.ws.wsdl.document.Operation, intf : com.sun.tools.internal.ws.processor.model.java.JavaInterface) : Void;
	
	@:overload private function createJavaExceptionFromLiteralType(fault : com.sun.tools.internal.ws.wsdl.document.Fault, port : com.sun.tools.internal.ws.processor.model.Port, operationName : String) : Bool;
	
	@:overload private function isRequestResponse() : Bool;
	
	@:overload private function getAsynParameterOrder() : java.util.List<String>;
	
	@:overload private function getParameterOrder() : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param port
	* @param suffix
	* @return the Java ClassName for a port
	*/
	@:overload private function getClassName(port : com.sun.tools.internal.ws.wsdl.document.Port, suffix : String) : String;
	
	@:overload private function isConflictingServiceClassName(name : String) : Bool;
	
	@:overload private function isConflictingExceptionClassName(name : String) : Bool;
	
	@:overload private function getJAXBModelBuilder() : com.sun.tools.internal.ws.processor.modeler.wsdl.JAXBModelBuilder;
	
	@:overload private function validateWSDLBindingStyle(binding : com.sun.tools.internal.ws.wsdl.document.Binding) : Bool;
	
	@:overload private static function setDocumentationIfPresent(obj : com.sun.tools.internal.ws.processor.model.ModelObject, documentation : com.sun.tools.internal.ws.wsdl.document.Documentation) : Void;
	
	@:overload private function getJavaNameForOperation(operation : com.sun.tools.internal.ws.wsdl.document.Operation) : String;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModeler$StyleAndUse') privateextern enum WSDLModeler_StyleAndUse
{
	RPC_LITERAL;
	DOC_LITERAL;
	
}

