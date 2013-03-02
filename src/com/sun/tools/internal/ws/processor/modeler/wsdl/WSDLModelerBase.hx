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
/**
*
* @author WS Development Team
*
* Base class for WSDL->Model classes.
*/
extern class WSDLModelerBase implements com.sun.tools.internal.ws.processor.modeler.Modeler
{
	private var errReceiver(default, null) : com.sun.tools.internal.ws.wscompile.ErrorReceiverFilter;
	
	private var options(default, null) : com.sun.tools.internal.ws.wscompile.WsimportOptions;
	
	private var forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder;
	
	@:overload public function new(options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder) : Void;
	
	/**
	*
	* @param port
	* @param wsdlPort
	*/
	@:overload private function applyPortMethodCustomization(port : com.sun.tools.internal.ws.wsdl.document.Port, wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload private function isProvider(wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port) : Bool;
	
	@:overload private function getSOAPRequestBody() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody;
	
	@:overload private function isRequestMimeMultipart() : Bool;
	
	@:overload private function isResponseMimeMultipart() : Bool;
	
	@:overload private function getSOAPResponseBody() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody;
	
	@:overload private function getOutputMessage() : com.sun.tools.internal.ws.wsdl.document.Message;
	
	@:overload private function getInputMessage() : com.sun.tools.internal.ws.wsdl.document.Message;
	
	/**
	* @param body request or response body, represents soap:body
	* @param message Input or output message, equivalent to wsdl:message
	* @return iterator over MessagePart
	*/
	@:overload private function getMessageParts(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody, message : com.sun.tools.internal.ws.wsdl.document.Message, isInput : Bool) : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param message
	* @return MessageParts referenced by the mime:content
	*/
	@:overload private function getMimeContentParts(message : com.sun.tools.internal.ws.wsdl.document.Message, ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param mimeParts
	*/
	@:overload private function validateMimeParts(mimeParts : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart>) : Bool;
	
	@:overload private function getAlternateMimeTypes(mimeContents : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>) : java.util.List<String>;
	
	@:overload private function getMimeParts(ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart>;
	
	@:overload private function getMimeContents(part : com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart) : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>;
	
	/**
	* For Document/Lit the wsdl:part should only have element attribute and
	* for RPC/Lit or RPC/Encoded the wsdl:part should only have type attribute
	* inside wsdl:message.
	*/
	@:overload private function isStyleAndPartMatch(soapOperation : com.sun.tools.internal.ws.wsdl.document.soap.SOAPOperation, part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	@:overload private function getRequestNamespaceURI(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody) : String;
	
	@:overload private function getResponseNamespaceURI(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody) : String;
	
	/**
	* @return List of SOAPHeader extensions
	*/
	@:overload private function getHeaderExtensions(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.util.List<com.sun.tools.internal.ws.wsdl.document.soap.SOAPHeader>;
	
	@:overload private function getDuplicateFaultNames() : java.util.Set<Dynamic>;
	
	/**
	* @param operation
	* @return true if operation has valid body parts
	*/
	@:overload private function validateBodyParts(operation : com.sun.tools.internal.ws.wsdl.document.BindingOperation) : Bool;
	
	@:overload private function getLiteralJavaMemberName(fault : com.sun.tools.internal.ws.wsdl.document.Fault) : String;
	
	/**
	* @param ext
	* @param message
	* @param name
	* @return List of MimeContents from ext
	*/
	@:overload private function getMimeContents(ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, message : com.sun.tools.internal.ws.wsdl.document.Message, name : String) : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>;
	
	@:overload private function makePackageQualified(s : String) : String;
	
	@:overload private function getUniqueName(operation : com.sun.tools.internal.ws.wsdl.document.Operation, hasOverloadedOperations : Bool) : String;
	
	@:overload private static function getQNameOf(entity : com.sun.tools.internal.ws.wsdl.framework.GloballyKnown) : javax.xml.namespace.QName;
	
	@:overload private static function getExtensionOfType(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, type : Class<Dynamic>) : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension;
	
	@:overload private function getAnyExtensionOfType(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, type : Class<Dynamic>) : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension;
	
	@:overload private static function findMessage(messageName : javax.xml.namespace.QName, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : com.sun.tools.internal.ws.wsdl.document.Message;
	
	@:overload private static function tokenListContains(tokenList : String, target : String) : Bool;
	
	@:overload private function getUniqueClassName(className : String) : String;
	
	@:overload private function isConflictingClassName(name : String) : Bool;
	
	@:overload private function isConflictingServiceClassName(name : String) : Bool;
	
	@:overload private function isConflictingStubClassName(name : String) : Bool;
	
	@:overload private function isConflictingTieClassName(name : String) : Bool;
	
	@:overload private function isConflictingPortClassName(name : String) : Bool;
	
	@:overload private function isConflictingExceptionClassName(name : String) : Bool;
	
	@:overload private function warning(entity : com.sun.tools.internal.ws.wsdl.framework.Entity, message : String) : Void;
	
	@:overload private function error(entity : com.sun.tools.internal.ws.wsdl.framework.Entity, message : String) : Void;
	
	private static var OPERATION_HAS_VOID_RETURN_TYPE(default, null) : String;
	
	private static var WSDL_PARAMETER_ORDER(default, null) : String;
	
	public static var WSDL_RESULT_PARAMETER(default, null) : String;
	
	public static var MESSAGE_HAS_MIME_MULTIPART_RELATED_BINDING(default, null) : String;
	
	private var info : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModelerBase.WSDLModelerBase_ProcessSOAPOperationInfo;
	
	private var _javaExceptions : java.util.Map<String, com.sun.tools.internal.ws.processor.model.java.JavaException>;
	
	private var _faultTypeToStructureMap : java.util.Map<Dynamic, Dynamic>;
	
	private var _javaTypes : com.sun.tools.internal.ws.processor.modeler.JavaSimpleTypeCreator;
	
	private var _bindingNameToPortMap : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.wsdl.document.Port>;
	
	private var useWSIBasicProfile : Bool;
	
	private var parser : com.sun.tools.internal.ws.wsdl.parser.WSDLParser;
	
	private var document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument;
	
	private static var NULL_LOCATOR(default, null) : org.xml.sax.helpers.LocatorImpl;
	
	/**
	* Returns the top model of a Web Service. May throw a
	* ModelException if there is a problem with the model.
	*
	* @return Model - the root Node of the model of the Web Service
	*
	* @exception ModelerException
	*/
	@:overload public function buildModel() : com.sun.tools.internal.ws.processor.model.Model;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModelerBase$ProcessSOAPOperationInfo') extern class WSDLModelerBase_ProcessSOAPOperationInfo
{
	@:overload public function new(modelPort : com.sun.tools.internal.ws.wsdl.document.Port, port : com.sun.tools.internal.ws.wsdl.document.Port, portTypeOperation : com.sun.tools.internal.ws.wsdl.document.Operation, bindingOperation : com.sun.tools.internal.ws.wsdl.document.BindingOperation, soapBinding : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBinding, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument, hasOverloadedOperations : Bool, headers : java.util.Map<Dynamic, Dynamic>) : Void;
	
	public var modelPort : com.sun.tools.internal.ws.wsdl.document.Port;
	
	public var port : com.sun.tools.internal.ws.wsdl.document.Port;
	
	public var portTypeOperation : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	public var bindingOperation : com.sun.tools.internal.ws.wsdl.document.BindingOperation;
	
	public var soapBinding : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBinding;
	
	public var document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument;
	
	public var hasOverloadedOperations : Bool;
	
	public var headers : java.util.Map<Dynamic, Dynamic>;
	
	public var operation : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	public var uniqueOperationName : String;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModelerBase$WSDLExceptionInfo') extern class WSDLModelerBase_WSDLExceptionInfo
{
	public var exceptionType : String;
	
	public var wsdlMessage : javax.xml.namespace.QName;
	
	public var wsdlMessagePartName : String;
	
	public var constructorOrder : java.util.HashMap<Dynamic, Dynamic>;
	
	
}
