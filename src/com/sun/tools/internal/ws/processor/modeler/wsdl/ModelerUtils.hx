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
@:internal extern class ModelerUtils
{
	/**
	* This method should be called incase of wrapper style operations. This is
	* equivalent to wrapper style schema component or JAXB Mapping object.
	*
	* @param jaxbType JAXBType from which a JAXBStructured type will be created.
	* @return returns JAXBStructured type
	*/
	@:overload @:public @:static public static function createJAXBStructureType(jaxbType : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType) : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType;
	
	/**
	* This method uses JAXBStructured type (wrapper style operations) and
	* unwraps it to create list of parameters.
	*
	*
	* @param jaxbType instance of JAXBType, could be JAXBStructured type.
	* @param block The Block (body/Header/Attachment) to which the created Parameter belong.
	* @return list of Parameters
	*/
	@:overload @:public @:static public static function createUnwrappedParameters(jaxbType : com.sun.tools.internal.ws.processor.model.jaxb.JAXBType, block : com.sun.tools.internal.ws.processor.model.Block) : java.util.List<com.sun.tools.internal.ws.processor.model.Parameter>;
	
	@:overload @:public @:static public static function createRpcLitParameters(message : com.sun.tools.internal.ws.wsdl.document.Message, block : com.sun.tools.internal.ws.processor.model.Block, jaxbModel : com.sun.tools.internal.xjc.api.S2JJAXBModel, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiverFilter) : java.util.List<com.sun.tools.internal.ws.processor.model.Parameter>;
	
	/**
	* Called for non-wrapper style operations. It returns a Parameter constructed
	* using the JAXBType and the Block.
	*
	* @param partName typically wsdl:part or any name to be given to the parameter
	* @param jaxbType type of Parameter
	* @param block Block to which the parameter belongs to
	* @return Parameter created.
	*/
	@:overload @:public @:static public static function createParameter(partName : String, jaxbType : com.sun.tools.internal.ws.processor.model.AbstractType, block : com.sun.tools.internal.ws.processor.model.Block) : com.sun.tools.internal.ws.processor.model.Parameter;
	
	/**
	* Get Parameter from the list of parameters.
	*
	* @param paramName
	* @param parameters
	* @return the Parameter with name paramName from parameters
	*/
	@:overload @:public @:static public static function getParameter(paramName : String, parameters : java.util.List<com.sun.tools.internal.ws.processor.model.Parameter>) : com.sun.tools.internal.ws.processor.model.Parameter;
	
	/**
	* Compares two JAXBStructures.
	*
	* @param struct1
	* @param struct2
	* @return true if struct1 and struct2 are equivalent.
	*/
	@:overload @:public @:static public static function isEquivalentLiteralStructures(struct1 : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType, struct2 : com.sun.tools.internal.ws.processor.model.jaxb.JAXBStructuredType) : Bool;
	
	@:overload @:public @:static public static function getRawTypeName(parameter : com.sun.tools.internal.ws.processor.model.Parameter) : javax.xml.namespace.QName;
	
	/**
	* @param part
	* @return true if part is bound to Mime content
	*/
	@:overload @:public @:static public static function isBoundToMimeContent(part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	/**
	* @param part
	* @return true if part is bound to SOAPBody
	*/
	@:overload @:public @:static public static function isBoundToSOAPBody(part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	/**
	* @param part
	* @return true if part is bound to SOAPHeader
	*/
	@:overload @:public @:static public static function isBoundToSOAPHeader(part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	@:overload @:public @:static public static function isUnbound(part : com.sun.tools.internal.ws.wsdl.document.MessagePart) : Bool;
	
	
}
