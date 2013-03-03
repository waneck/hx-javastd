package com.sun.xml.internal.ws.api.model;
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
extern interface SEIModel
{
	/**
	* Represents abstraction of SEI.
	*
	* <p>
	* This interface would be used to access which Java concepts correspond to
	* which WSDL concepts, such as which <code>wsdl:port</code> corresponds to
	* a SEI, or which <code>wsdl:operation</code> corresponds to {@link JavaMethod}.
	*
	* <P>
	* It also retains information about the databinding done for a SEI;
	* such as {@link JAXBRIContext} and {@link Bridge}.
	*
	* <p>
	* This model is constructed only when there is a Java SEI. Therefore it's
	* not available with {@link Dispatch} or {@link Provider}. Technologies that
	* need to work regardless of such surface API difference shall not be using
	* this model.
	*
	* @author Vivek Pandey
	*/
	@:overload public function getMarshallerPool() : com.sun.xml.internal.ws.util.Pool.Pool_Marshaller;
	
	/**
	* JAXBContext that will be used to marshall/unmarshall the java classes found in the SEI.
	*
	* @return the <code>{@link JAXBRIContext}</code>
	*/
	@:overload public function getJAXBContext() : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	/**
	* This method will be useful to get the {@link JavaMethod} corrrespondiong to
	* a {@link Method} - such as on the client side.
	*
	* @param method for which {@link JavaMethod} is asked for
	* @return the {@link JavaMethod} representing the <code>method</code>
	*/
	@:overload public function getJavaMethod(method : java.lang.reflect.Method) : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* Gives a {@link JavaMethod} for a given {@link QName}. The {@link QName} will
	* be equivalent to the SOAP Body or Header block or can simply be the name of an
	* infoset that corresponds to the payload.
	* @param name
	* @return the <code>JavaMethod</code> associated with the
	*         operation named name
	*/
	@:overload @:public public function getJavaMethod(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* Gives the JavaMethod associated with the wsdl operation
	* @param operationName QName of the wsdl operation
	* @return
	*/
	@:overload @:public public function getJavaMethodForWsdlOperation(operationName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* Gives all the {@link JavaMethod} for a wsdl:port for which this {@link SEIModel} is
	* created.
	*
	* @return a {@link Collection} of {@link JavaMethod}
	*         associated with the {@link SEIModel}
	*/
	@:overload public function getJavaMethods() : java.util.Collection<com.sun.xml.internal.ws.api.model.JavaMethod>;
	
	/**
	* Location of the WSDL that defines the port associated with the {@link SEIModel}
	*
	* @return wsdl location uri - always non-null
	*/
	@:overload public function getWSDLLocation() : String;
	
	/**
	* wsdl:service qualified name for the port associated with the {@link SEIModel)
	*
	* @return wsdl:service@name value - always non-null
	*/
	@:overload public function getServiceQName() : javax.xml.namespace.QName;
	
	/**
	* Gets the {@link WSDLPort} that represents the port that this SEI binds to.
	*/
	@:overload public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	/**
	* Value of the wsdl:port name associated with the {@link SEIModel)
	*
	* @return wsdl:service/wsdl:port@name value, always non-null
	*/
	@:overload public function getPortName() : javax.xml.namespace.QName;
	
	/**
	* Value of wsdl:portType bound to the port associated with the {@link SEIModel)
	*
	* @return
	*/
	@:overload public function getPortTypeName() : javax.xml.namespace.QName;
	
	/**
	*  Gives the wsdl:binding@name value
	*/
	@:overload public function getBoundPortTypeName() : javax.xml.namespace.QName;
	
	/**
	* Namespace of the wsd;:port associated with the {@link SEIModel)
	*/
	@:overload public function getTargetNamespace() : String;
	
	
}
