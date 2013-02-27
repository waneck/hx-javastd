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
extern interface JavaMethod
{
	/**
	* Gets the root {@link SEIModel} that owns this model.
	*/
	@:overload public function getOwner() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* On the server side, it uses this for invocation of the web service
	*
	* <p>
	* {@link @WebService}(endpointInterface="I")
	* class A { }
	*
	* In this case, it retuns A's method
	*
	* <p>
	* {@link @WebService}(endpointInterface="I")
	* class A implements I { }
	* In this case, it returns A's method
	*
	* <p>
	* {@link @WebService}
	* class A { }
	* In this case, it returns A's method
	*
	* @return Returns the java {@link Method}
	*/
	@:overload public function getMethod() : java.lang.reflect.Method;
	
	/**
	* This should be used if you want to access annotations on WebMethod
	* Returns the SEI method if there is one.
	*
	* <p>
	* {@link @WebService}(endpointInterface="I")
	* class A { }
	* In this case, it retuns I's method
	*
	* <p>
	* {@link @WebService}(endpointInterface="I")
	* class A implements I { }
	* In this case, it returns I's method
	*
	* <p>
	* {@link @WebService}
	* class A { }
	* In this case, it returns A's method
	*
	* @return Returns the java {@link Method}
	*/
	@:overload public function getSEIMethod() : java.lang.reflect.Method;
	
	/**
	* @return Returns the {@link MEP}.
	*/
	@:overload public function getMEP() : com.sun.xml.internal.ws.api.model.MEP;
	
	/**
	* Binding object - a {@link SOAPBinding} isntance.
	*
	* @return the Binding object
	*/
	@:overload public function getBinding() : com.sun.xml.internal.ws.api.model.soap.SOAPBinding;
	
	/**
	* Gives the wsdl:operation@name value
	*/
	@:overload public function getOperationName() : String;
	
	/**
	* Gives the request wsdl:message@name value
	*/
	@:overload public function getRequestMessageName() : String;
	
	/**
	* Gives the response wsdl:messageName value
	* @return null if its a oneway operation that is getMEP().isOneWay()==true.
	* @see com.sun.xml.internal.ws.api.model.MEP#isOneWay()
	*/
	@:overload public function getResponseMessageName() : String;
	
	/**
	* Gives soap:Body's first child's name for request message.
	*
	* @return
	*      null if this operation doesn't have any request parameter bound to the body.
	*/
	@:overload public function getRequestPayloadName() : javax.xml.namespace.QName;
	
	/**
	* Gives soap:Body's first child's name for response message.
	*
	* @return
	*      null if this operation doesn't have any response parameter bound to the body.
	*/
	@:overload public function getResponsePayloadName() : javax.xml.namespace.QName;
	
	
}