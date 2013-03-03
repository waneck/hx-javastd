package com.sun.xml.internal.ws.api.pipe;
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
extern class Stubs
{
	/**
	* Creates a new {@link Dispatch} stub for {@link SOAPMessage}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,SOAPMessage.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createSAAJDispatch(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.soap.SOAPMessage>;
	
	/**
	* Creates a new {@link Dispatch} stub for {@link SOAPMessage}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,SOAPMessage.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createSAAJDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.soap.SOAPMessage>;
	
	/**
	* Creates a new {@link Dispatch} stub for {@link DataSource}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,DataSource.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createDataSourceDispatch(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.activation.DataSource>;
	
	/**
	* Creates a new {@link Dispatch} stub for {@link DataSource}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,DataSource.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createDataSourceDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.activation.DataSource>;
	
	/**
	* Creates a new {@link Dispatch} stub for {@link Source}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,Source.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createSourceDispatch(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.transform.Source>;
	
	/**
	* Creates a new {@link Dispatch} stub for {@link Source}.
	*
	* This is short-cut of calling
	* <pre>
	* createDispatch(port,owner,binding,Source.class,mode,next);
	* </pre>
	*/
	@:overload @:public @:static public static function createSourceDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.transform.Source>;
	
	/**
	* Creates a new {@link Dispatch} stub that connects to the given pipe.
	*
	* @param portName
	*      see {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param owner
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param clazz
	*      Type of the {@link Dispatch} to be created.
	*      See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param mode
	*      The mode of the dispatch.
	*      See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param next
	*      see <a href="#param">common parameters</a>
	* @param epr
	*      see <a href="#param">common parameters</a>
	* TODO: are these parameters making sense?
	*/
	@:overload @:public @:static public static function createDispatch<T>(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, clazz : Class<T>, mode : javax.xml.ws.Service.Service_Mode, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<T>;
	
	/**
	* Creates a new {@link Dispatch} stub that connects to the given pipe.
	*
	* @param portInfo
	*      see <a href="#param">common parameters</a>
	* @param owner
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param clazz
	*      Type of the {@link Dispatch} to be created.
	*      See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param mode
	*      The mode of the dispatch.
	*      See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param epr
	*      see <a href="#param">common parameters</a>
	* TODO: are these parameters making sense?
	*/
	@:overload @:public @:static public static function createDispatch<T>(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, clazz : Class<T>, mode : javax.xml.ws.Service.Service_Mode, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<T>;
	
	/**
	* Creates a new JAXB-based {@link Dispatch} stub that connects to the given pipe.
	*
	* @param portName
	*      see {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param owner
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param jaxbContext
	*      {@link JAXBContext} used to convert between objects and XML.
	* @param mode
	*      The mode of the dispatch.
	*      See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param next
	*      see <a href="#param">common parameters</a>
	* @param epr
	*      see <a href="#param">common parameters</a>
	*/
	@:overload @:public @:static public static function createJAXBDispatch(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<Dynamic>;
	
	/**
	* Creates a new JAXB-based {@link Dispatch} stub that connects to the given pipe.
	*
	* @param portInfo    see <a href="#param">common parameters</a>
	* @param binding     see <a href="#param">common parameters</a>
	* @param jaxbContext {@link JAXBContext} used to convert between objects and XML.
	* @param mode        The mode of the dispatch.
	*                    See {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param epr         see <a href="#param">common parameters</a>
	*/
	@:overload @:public @:static public static function createJAXBDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<Dynamic>;
	
	/**
	* Creates a new {@link Message}-based {@link Dispatch} stub that connects to the given pipe.
	* The returned dispatch is always {@link Service.Mode#MESSAGE}.
	*
	* @param portName
	*      see {@link Service#createDispatch(QName, Class, Service.Mode)}.
	* @param owner
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param next
	*      see <a href="#param">common parameters</a>
	* @param epr
	*      see <a href="#param">common parameters</a>
	*/
	@:overload @:public @:static public static function createMessageDispatch(portName : javax.xml.namespace.QName, owner : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<com.sun.xml.internal.ws.api.message.Message>;
	
	/**
	* Creates a new {@link Message}-based {@link Dispatch} stub that connects to the given pipe.
	* The returned dispatch is always {@link Service.Mode#MESSAGE}.
	*
	* @param portInfo
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param epr
	*      see <a href="#param">common parameters</a>
	*/
	@:overload @:public @:static public static function createMessageDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<com.sun.xml.internal.ws.api.message.Message>;
	
	/**
	* Creates a new strongly-typed proxy object that implements a given port interface.
	*
	* @param service
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param model
	*      This model shall represent a port interface.
	*      TODO: can model be constructed from portInterface and binding?
	*      Find out and update.
	* @param portInterface
	*      The port interface that has operations as Java methods.
	* @param next
	*      see <a href="#param">common parameters</a>
	* @param epr
	*      see <a href="#param">common parameters</a>
	*/
	@:overload @:public public function createPortProxy<T>(service : com.sun.xml.internal.ws.api.WSService, binding : com.sun.xml.internal.ws.api.WSBinding, model : com.sun.xml.internal.ws.api.model.SEIModel, portInterface : Class<T>, next : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : T;
	
	/**
	* Creates a new strongly-typed proxy object that implements a given port interface.
	*
	* @param portInfo
	*      see <a href="#param">common parameters</a>
	* @param binding
	*      see <a href="#param">common parameters</a>
	* @param model
	*      This model shall represent a port interface.
	*      TODO: can model be constructed from portInterface and binding?
	*      Find out and update.
	* @param portInterface
	*      The port interface that has operations as Java methods.
	* @param epr
	*      see <a href="#param">common parameters</a>
	*/
	@:overload @:public public function createPortProxy<T>(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.api.WSBinding, model : com.sun.xml.internal.ws.api.model.SEIModel, portInterface : Class<T>, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : T;
	
	
}
