package com.sun.xml.internal.ws.wsdl.writer;
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
extern class WSDLGenerator
{
	/**
	* Creates the WSDLGenerator
	* @param model The {@link AbstractSEIModelImpl} used to generate the WSDL
	* @param wsdlResolver The {@link WSDLResolver} to use resovle names while generating the WSDL
	* @param binding specifies which {@link javax.xml.ws.BindingType} to generate
	* @param extensions an array {@link WSDLGeneratorExtension} that will
	* be invoked to generate WSDL extensions
	*/
	@:overload public function new(model : com.sun.xml.internal.ws.model.AbstractSEIModelImpl, wsdlResolver : com.sun.xml.internal.ws.wsdl.writer.WSDLResolver, binding : com.sun.xml.internal.ws.api.WSBinding, container : com.sun.xml.internal.ws.api.server.Container, implType : Class<Dynamic>, inlineSchemas : Bool, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.writer.WSDLGeneratorExtension>) : Void;
	
	/**
	* Sets the endpoint address string to be written.
	* Defaults to {@link #REPLACE_WITH_ACTUAL_URL}.
	*
	* @param address wsdl:port/soap:address/[@location] value
	*/
	@:overload public function setEndpointAddress(address : String) : Void;
	
	/**
	* Performes the actual WSDL generation
	*/
	@:overload public function doGeneration() : Void;
	
	/**
	* Generates the types section of the WSDL
	*/
	@:overload private function generateTypes() : Void;
	
	/**
	* Generates the WSDL messages
	*/
	@:overload private function generateMessages() : Void;
	
	/**
	* Generates messages for a SOAPBinding
	* @param method The {@link JavaMethod} to generate messages for
	* @param binding The {@link com.sun.xml.internal.ws.api.model.soap.SOAPBinding} to add the generated messages to
	*/
	@:overload private function generateSOAPMessages(method : com.sun.xml.internal.ws.model.JavaMethodImpl, binding : com.sun.xml.internal.ws.api.model.soap.SOAPBinding) : Void;
	
	/**
	* Generates the WSDL portType
	*/
	@:overload private function generatePortType() : Void;
	
	/**
	* Determines if the <CODE>method</CODE> is wrapper style
	* @param method The {@link JavaMethod} to check if it is wrapper style
	* @return true if the method is wrapper style, otherwise, false.
	*/
	@:overload private function isWrapperStyle(method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Bool;
	
	/**
	* Determines if a {@link JavaMethod} is rpc/literal
	* @param method The method to check
	* @return true if method is rpc/literal, otherwise, false
	*/
	@:overload private function isRpcLit(method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Bool;
	
	/**
	* Generates the parameterOrder for a PortType operation
	* @param operation The operation to generate the parameterOrder for
	* @param method The {@link JavaMethod} to generate the parameterOrder from
	*/
	@:overload private function generateParameterOrder(operation : com.sun.xml.internal.ws.wsdl.writer.document.Operation, method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Void;
	
	/**
	* Generates the parameterOrder for a PortType operation
	* @param operation the operation to generate the parameterOrder for
	* @param method the {@link JavaMethod} to generate the parameterOrder from
	*/
	@:overload private function generateRpcParameterOrder(operation : com.sun.xml.internal.ws.wsdl.writer.document.Operation, method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Void;
	
	/**
	* Generates the parameterOrder for a PortType operation
	* @param operation the operation to generate the parameterOrder for
	* @param method the {@link JavaMethod} to generate the parameterOrder from
	*/
	@:overload private function generateDocumentParameterOrder(operation : com.sun.xml.internal.ws.wsdl.writer.document.Operation, method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Void;
	
	/**
	* Sorts the parameters for the method by their position
	* @param method the {@link JavaMethod} used to sort the parameters
	* @return the sorted {@link List} of parameters
	*/
	@:overload private function sortMethodParameters(method : com.sun.xml.internal.ws.model.JavaMethodImpl) : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>;
	
	/**
	* Determines if a parameter is associated with the message Body
	* @param parameter the parameter to check
	* @return true if the parameter is a <code>body</code> parameter
	*/
	@:overload private function isBodyParameter(parameter : com.sun.xml.internal.ws.model.ParameterImpl) : Bool;
	
	@:overload private function isHeaderParameter(parameter : com.sun.xml.internal.ws.model.ParameterImpl) : Bool;
	
	@:overload private function isAttachmentParameter(parameter : com.sun.xml.internal.ws.model.ParameterImpl) : Bool;
	
	/**
	* Generates the Binding section of the WSDL
	*/
	@:overload private function generateBinding() : Void;
	
	@:overload private function generateBindingOperation(method : com.sun.xml.internal.ws.model.JavaMethodImpl, binding : com.sun.xml.internal.ws.wsdl.writer.document.Binding) : Void;
	
	@:overload private function generateSOAP12BindingOperation(method : com.sun.xml.internal.ws.model.JavaMethodImpl, binding : com.sun.xml.internal.ws.wsdl.writer.document.Binding) : Void;
	
	@:overload private function splitParameters(bodyParams : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>, headerParams : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>, params : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>) : Void;
	
	@:overload private function generateSOAPHeaders(writer : com.sun.xml.internal.txw2.TypedXmlWriter, parameters : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>, message : javax.xml.namespace.QName) : Void;
	
	@:overload private function generateSOAP12Headers(writer : com.sun.xml.internal.txw2.TypedXmlWriter, parameters : java.util.List<com.sun.xml.internal.ws.model.ParameterImpl>, message : javax.xml.namespace.QName) : Void;
	
	/**
	* Generates the Service section of the WSDL
	*/
	@:overload private function generateService() : Void;
	
	@:overload private function generateInputMessage(operation : com.sun.xml.internal.ws.wsdl.writer.document.Operation, method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Void;
	
	@:overload private function generateOutputMessage(operation : com.sun.xml.internal.ws.wsdl.writer.document.Operation, method : com.sun.xml.internal.ws.model.JavaMethodImpl) : Void;
	
	/**
	* Creates the {@link Result} object used by JAXB to generate a schema for the
	* namesapceUri namespace.
	* @param namespaceUri The namespace for the schema being generated
	* @param suggestedFileName the JAXB suggested file name for the schema file
	* @return the {@link Result} for JAXB to generate the schema into
	* @throws java.io.IOException thrown if on IO error occurs
	*/
	@:overload public function createOutputFile(namespaceUri : String, suggestedFileName : String) : javax.xml.transform.Result;
	
	/**
	* Relativizes a URI by using another URI (base URI.)
	*
	* <p>
	* For example, {@code relative("http://www.sun.com/abc/def","http://www.sun.com/pqr/stu") => "../abc/def"}
	*
	* <p>
	* This method only works on hierarchical URI's, not opaque URI's (refer to the
	* <a href="http://java.sun.com/j2se/1.5.0/docs/api/java/net/URI.html">java.net.URI</a>
	* javadoc for complete definitions of these terms.
	*
	* <p>
	* This method will not normalize the relative URI.
	* @param uri the URI to relativize
	*
	*
	* @param baseUri the base URI to use for the relativization
	* @return the relative URI or the original URI if a relative one could not be computed
	*/
	@:overload private static function relativize(uri : String, baseUri : String) : String;
	
	
}
/**
* Writing directly to XmlSerializer is a problem, since it doesn't suppress
* xml declaration. Creating filter so that comment is written before TXW writes
* anything in the WSDL.
*/
@:native('com$sun$xml$internal$ws$wsdl$writer$WSDLGenerator$CommentFilter') @:internal extern class WSDLGenerator_CommentFilter implements com.sun.xml.internal.txw2.output.XmlSerializer
{
	@:overload public function startDocument() : Void;
	
	@:overload public function beginStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function writeAttribute(uri : String, localName : String, prefix : String, value : java.lang.StringBuilder) : Void;
	
	@:overload public function writeXmlns(prefix : String, uri : String) : Void;
	
	@:overload public function endStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function endTag() : Void;
	
	@:overload public function text(text : java.lang.StringBuilder) : Void;
	
	@:overload public function cdata(text : java.lang.StringBuilder) : Void;
	
	@:overload public function comment(comment : java.lang.StringBuilder) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function flush() : Void;
	
	
}
/**
* Implements the SchemaOutputResolver used by JAXB to
*/
@:native('com$sun$xml$internal$ws$wsdl$writer$WSDLGenerator$JAXWSOutputSchemaResolver') extern class WSDLGenerator_JAXWSOutputSchemaResolver extends javax.xml.bind.SchemaOutputResolver
{
	/**
	* Creates the {@link Result} object used by JAXB to generate a schema for the
	* namesapceUri namespace.
	* @param namespaceUri The namespace for the schema being generated
	* @param suggestedFileName the JAXB suggested file name for the schema file
	* @return the {@link Result} for JAXB to generate the schema into
	* @throws java.io.IOException thrown if on IO error occurs
	*/
	@:overload override public function createOutput(namespaceUri : String, suggestedFileName : String) : javax.xml.transform.Result;
	
	
}
