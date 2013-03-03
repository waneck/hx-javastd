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
	@:protected @:final private var errReceiver(default, null) : com.sun.tools.internal.ws.wscompile.ErrorReceiverFilter;
	
	@:protected @:final private var options(default, null) : com.sun.tools.internal.ws.wscompile.WsimportOptions;
	
	@:protected private var forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder;
	
	@:overload @:public public function new(options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, forest : com.sun.tools.internal.ws.wsdl.parser.MetadataFinder) : Void;
	
	/**
	*
	* @param port
	* @param wsdlPort
	*/
	@:overload @:protected private function applyPortMethodCustomization(port : com.sun.tools.internal.ws.wsdl.document.Port, wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port) : Void;
	
	@:overload @:protected private function isProvider(wsdlPort : com.sun.tools.internal.ws.wsdl.document.Port) : Bool;
	
	@:overload @:protected private function getSOAPRequestBody() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody;
	
	@:overload @:protected private function isRequestMimeMultipart() : Bool;
	
	@:overload @:protected private function isResponseMimeMultipart() : Bool;
	
	@:overload @:protected private function getSOAPResponseBody() : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody;
	
	@:overload @:protected private function getOutputMessage() : com.sun.tools.internal.ws.wsdl.document.Message;
	
	@:overload @:protected private function getInputMessage() : com.sun.tools.internal.ws.wsdl.document.Message;
	
	/**
	* @param body request or response body, represents soap:body
	* @param message Input or output message, equivalent to wsdl:message
	* @return iterator over MessagePart
	*/
	@:overload @:protected private function getMessageParts(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody, message : com.sun.tools.internal.ws.wsdl.document.Message, isInput : Bool) : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param message
	* @return MessageParts referenced by the mime:content
	*/
	@:overload @:protected private function getMimeContentParts(message : com.sun.tools.internal.ws.wsdl.document.Message, ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.util.List<com.sun.tools.internal.ws.wsdl.document.MessagePart>;
	
	/**
	* @param mimeParts
	*/
	@:overload @:protected private function validateMimeParts(mimeParts : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart>) : Bool;
	
	@:overload @:protected private function getAlternateMimeTypes(mimeContents : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>) : java.util.List<String>;
	
	@:overload @:protected private function getMimeParts(ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.lang.Iterable<com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart>;
	
	@:overload @:protected private function getMimeContents(part : com.sun.tools.internal.ws.wsdl.document.mime.MIMEPart) : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>;
	
	/**
	* For Document/Lit the wsdl:part should only have element attribute and
	* for RPC/Lit or RPC/Encoded the wsdl:part should only have type attribute
	* inside wsdl:message.
	*/
	@:overload @:protected private function isStyleAndPartMatch(soapOperation : com.sun.tools.internal.ws.wsdl.document.soap.SOAPOperation, part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	@:overload @:protected private function getRequestNamespaceURI(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody) : String;
	
	@:overload @:protected private function getResponseNamespaceURI(body : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBody) : String;
	
	/**
	* @return List of SOAPHeader extensions
	*/
	@:overload @:protected private function getHeaderExtensions(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible) : java.util.List<com.sun.tools.internal.ws.wsdl.document.soap.SOAPHeader>;
	
	@:overload @:protected private function getDuplicateFaultNames() : java.util.Set<Dynamic>;
	
	/**
	* @param operation
	* @return true if operation has valid body parts
	*/
	@:overload @:protected private function validateBodyParts(operation : com.sun.tools.internal.ws.wsdl.document.BindingOperation) : Bool;
	
	@:overload @:protected private function getLiteralJavaMemberName(fault : com.sun.tools.internal.ws.wsdl.document.Fault) : String;
	
	/**
	* @param ext
	* @param message
	* @param name
	* @return List of MimeContents from ext
	*/
	@:overload @:protected private function getMimeContents(ext : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, message : com.sun.tools.internal.ws.wsdl.document.Message, name : String) : java.util.List<com.sun.tools.internal.ws.wsdl.document.mime.MIMEContent>;
	
	@:overload @:protected private function makePackageQualified(s : String) : String;
	
	@:overload @:protected private function getUniqueName(operation : com.sun.tools.internal.ws.wsdl.document.Operation, hasOverloadedOperations : Bool) : String;
	
	@:overload @:protected @:static private static function getQNameOf(entity : com.sun.tools.internal.ws.wsdl.framework.GloballyKnown) : javax.xml.namespace.QName;
	
	@:overload @:protected @:static private static function getExtensionOfType(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, type : Class<Dynamic>) : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension;
	
	@:overload @:protected private function getAnyExtensionOfType(extensible : com.sun.tools.internal.ws.api.wsdl.TWSDLExtensible, type : Class<Dynamic>) : com.sun.tools.internal.ws.api.wsdl.TWSDLExtension;
	
	@:overload @:protected @:static private static function findMessage(messageName : javax.xml.namespace.QName, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument) : com.sun.tools.internal.ws.wsdl.document.Message;
	
	@:overload @:protected @:static private static function tokenListContains(tokenList : String, target : String) : Bool;
	
	@:overload @:protected private function getUniqueClassName(className : String) : String;
	
	@:overload @:protected private function isConflictingClassName(name : String) : Bool;
	
	@:overload @:protected private function isConflictingServiceClassName(name : String) : Bool;
	
	@:overload @:protected private function isConflictingStubClassName(name : String) : Bool;
	
	@:overload @:protected private function isConflictingTieClassName(name : String) : Bool;
	
	@:overload @:protected private function isConflictingPortClassName(name : String) : Bool;
	
	@:overload @:protected private function isConflictingExceptionClassName(name : String) : Bool;
	
	@:overload @:protected private function warning(entity : com.sun.tools.internal.ws.wsdl.framework.Entity, message : String) : Void;
	
	@:overload @:protected private function error(entity : com.sun.tools.internal.ws.wsdl.framework.Entity, message : String) : Void;
	
	@:protected @:static @:final private static var OPERATION_HAS_VOID_RETURN_TYPE(default, null) : String;
	
	@:protected @:static @:final private static var WSDL_PARAMETER_ORDER(default, null) : String;
	
	@:public @:static @:final public static var WSDL_RESULT_PARAMETER(default, null) : String;
	
	@:public @:static @:final public static var MESSAGE_HAS_MIME_MULTIPART_RELATED_BINDING(default, null) : String;
	
	@:protected private var info : com.sun.tools.internal.ws.processor.modeler.wsdl.WSDLModelerBase.WSDLModelerBase_ProcessSOAPOperationInfo;
	
	@:protected private var _javaExceptions : java.util.Map<String, com.sun.tools.internal.ws.processor.model.java.JavaException>;
	
	@:protected private var _faultTypeToStructureMap : java.util.Map<Dynamic, Dynamic>;
	
	@:protected private var _javaTypes : com.sun.tools.internal.ws.processor.modeler.JavaSimpleTypeCreator;
	
	@:protected private var _bindingNameToPortMap : java.util.Map<javax.xml.namespace.QName, com.sun.tools.internal.ws.wsdl.document.Port>;
	
	@:protected private var useWSIBasicProfile : Bool;
	
	@:protected private var parser : com.sun.tools.internal.ws.wsdl.parser.WSDLParser;
	
	@:protected private var document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument;
	
	@:protected @:static @:final private static var NULL_LOCATOR(default, null) : org.xml.sax.helpers.LocatorImpl;
	
	/**
	* Returns the top model of a Web Service. May throw a
	* ModelException if there is a problem with the model.
	*
	* @return Model - the root Node of the model of the Web Service
	*
	* @exception ModelerException
	*/
	@:overload @:public public function buildModel() : com.sun.tools.internal.ws.processor.model.Model;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModelerBase$ProcessSOAPOperationInfo') extern class WSDLModelerBase_ProcessSOAPOperationInfo
{
	@:overload @:public public function new(modelPort : com.sun.tools.internal.ws.wsdl.document.Port, port : com.sun.tools.internal.ws.wsdl.document.Port, portTypeOperation : com.sun.tools.internal.ws.wsdl.document.Operation, bindingOperation : com.sun.tools.internal.ws.wsdl.document.BindingOperation, soapBinding : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBinding, document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument, hasOverloadedOperations : Bool, headers : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:public public var modelPort : com.sun.tools.internal.ws.wsdl.document.Port;
	
	@:public public var port : com.sun.tools.internal.ws.wsdl.document.Port;
	
	@:public public var portTypeOperation : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:public public var bindingOperation : com.sun.tools.internal.ws.wsdl.document.BindingOperation;
	
	@:public public var soapBinding : com.sun.tools.internal.ws.wsdl.document.soap.SOAPBinding;
	
	@:public public var document : com.sun.tools.internal.ws.wsdl.document.WSDLDocument;
	
	@:public public var hasOverloadedOperations : Bool;
	
	@:public public var headers : java.util.Map<Dynamic, Dynamic>;
	
	@:public public var operation : com.sun.tools.internal.ws.wsdl.document.Operation;
	
	@:public public var uniqueOperationName : String;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$wsdl$WSDLModelerBase$WSDLExceptionInfo') extern class WSDLModelerBase_WSDLExceptionInfo
{
	@:public public var exceptionType : String;
	
	@:public public var wsdlMessage : javax.xml.namespace.QName;
	
	@:public public var wsdlMessagePartName : String;
	
	@:public public var constructorOrder : java.util.HashMap<Dynamic, Dynamic>;
	
	
}
