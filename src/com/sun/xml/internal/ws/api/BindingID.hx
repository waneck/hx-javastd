package com.sun.xml.internal.ws.api;
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
extern class BindingID
{
	/**
	* Creates an instance of {@link WSBinding} (which is conceptually an "use"
	* of {@link BindingID}) from a {@link BindingID}.
	*
	* @return
	*      Always a new instance.
	*/
	@:overload @:final public function createBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	/**
	* Returns wsdl:binding@transport attribute. Sub classes
	* are expected to override this method to provide their transport
	* attribute.
	*
	* @return wsdl:binding@transport attribute
	* @since JAX-WS RI 2.1.6
	*/
	@:require(java1) @:overload public function getTransport() : String;
	
	@:overload @:final public function createBinding(features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload @:final public function createBinding(features : com.sun.xml.internal.ws.api.WSFeatureList) : com.sun.xml.internal.ws.api.WSBinding;
	
	/**
	* Gets the SOAP version of this binding.
	*
	* TODO: clarify what to do with XML/HTTP binding
	*
	* @return
	*      If the binding is using SOAP, this method returns
	*      a {@link SOAPVersion} constant.
	*
	*      If the binding is not based on SOAP, this method
	*      returns null. See {@link Message} for how a non-SOAP
	*      binding shall be handled by {@link Tube}s.
	*/
	@:overload @:abstract public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	/**
	* Creates a new {@link Codec} for this binding.
	*
	* @param binding
	*      Ocassionally some aspects of binding can be overridden by
	*      {@link WSBinding} at runtime by users, so some {@link Codec}s
	*      need to have access to {@link WSBinding} that it's working for.
	*/
	@:overload @:abstract public function createEncoder(binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* Gets the binding ID, which uniquely identifies the binding.
	*
	* <p>
	* The relevant specs define the binding IDs and what they mean.
	* The ID is used in many places to identify the kind of binding
	* (such as SOAP1.1, SOAP1.2, REST, ...)
	*
	* @return
	*      Always non-null same value.
	*/
	@:overload @:abstract public function toString() : String;
	
	/**
	* Returna a new {@link WebServiceFeatureList} instance
	* that represents the features that are built into this binding ID.
	*
	* <p>
	* For example, {@link BindingID} for
	* <tt>"{@value SOAPBinding#SOAP11HTTP_MTOM_BINDING}"</tt>
	* would always return a list that has {@link MTOMFeature} enabled.
	*/
	@:overload public function createBuiltinFeatureList() : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	/**
	* Returns true if this binding can generate WSDL.
	*
	* <p>
	* For e.g.: SOAP 1.1 and "XSOAP 1.2" is supposed to return true
	* from this method. For SOAP1.2, there is no standard WSDL, so the
	* runtime is not generating one and it expects the WSDL is packaged.
	*
	*/
	@:overload public function canGenerateWSDL() : Bool;
	
	/**
	* Returns a parameter of this binding ID.
	*
	* <p>
	* Some binding ID, such as those for SOAP/HTTP, uses the URL
	* query syntax (like <tt>?mtom=true</tt>) to control
	* the optional part of the binding. This method obtains
	* the value for such optional parts.
	*
	* <p>
	* For implementors of the derived classes, if your binding ID
	* does not define such optional parts (such as the XML/HTTP binding ID),
	* then you should simply return the specified default value
	* (which is what this implementation does.)
	*
	* @param parameterName
	*      The parameter name, such as "mtom" in the above example.
	* @param defaultValue
	*      If this binding ID doesn't have the specified parameter explicitly,
	*      this value will be returned.
	*
	* @return
	*      the value of the parameter, if it's present (such as "true"
	*      in the above example.) If not present, this method returns
	*      the {@code defaultValue}.
	*/
	@:overload public function getParameter(parameterName : String, defaultValue : String) : String;
	
	/**
	* Compares the equality based on {@link #toString()}.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* Parses a binding ID string into a {@link BindingID} object.
	*
	* <p>
	* This method first checks for a few known values and then delegate
	* the parsing to {@link BindingIDFactory}.
	*
	* <p>
	* If parsing succeeds this method returns a value. Otherwise
	* throws {@link WebServiceException}.
	*
	* @throws WebServiceException
	*      If the binding ID is not understood.
	*/
	@:overload public static function parse(lexical : String) : BindingID;
	
	/**
	* Figures out the binding from {@link BindingType} annotation.
	*
	* @return
	*      default to {@link BindingID#SOAP11_HTTP}, if no such annotation is present.
	* @see #parse(String)
	*/
	@:overload public static function parse(implClass : Class<Dynamic>) : BindingID;
	
	/**
	* Constant that represents implementation specific SOAP1.2/HTTP which is
	* used to generate non-standard WSDLs
	*/
	public static var X_SOAP12_HTTP(default, null) : BindingID_SOAPHTTPImpl;
	
	/**
	* Constant that represents SOAP1.2/HTTP.
	*/
	public static var SOAP12_HTTP(default, null) : BindingID_SOAPHTTPImpl;
	
	/**
	* Constant that represents SOAP1.1/HTTP.
	*/
	public static var SOAP11_HTTP(default, null) : BindingID_SOAPHTTPImpl;
	
	/**
	* Constant that represents SOAP1.2/HTTP.
	*/
	public static var SOAP12_HTTP_MTOM(default, null) : BindingID_SOAPHTTPImpl;
	
	/**
	* Constant that represents SOAP1.1/HTTP.
	*/
	public static var SOAP11_HTTP_MTOM(default, null) : BindingID_SOAPHTTPImpl;
	
	/**
	* Constant that represents REST.
	*/
	public static var XML_HTTP(default, null) : BindingID;
	
	
}
@:native('com$sun$xml$internal$ws$api$BindingID$Impl') @:internal extern class BindingID_Impl extends BindingID
{
	@:overload public function new(version : com.sun.xml.internal.ws.api.SOAPVersion, lexical : String, canGenerateWSDL : Bool) : Void;
	
	@:overload override public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	@:overload override public function toString() : String;
	
	@:overload override public function canGenerateWSDL() : Bool;
	
	
}
/**
* Internal implementation for SOAP/HTTP.
*/
@:native('com$sun$xml$internal$ws$api$BindingID$SOAPHTTPImpl') @:internal extern class BindingID_SOAPHTTPImpl extends BindingID_Impl implements java.lang.Cloneable
{
	@:overload public function new(version : com.sun.xml.internal.ws.api.SOAPVersion, lexical : String, canGenerateWSDL : Bool) : Void;
	
	@:overload public function new(version : com.sun.xml.internal.ws.api.SOAPVersion, lexical : String, canGenerateWSDL : Bool, mtomEnabled : Bool) : Void;
	
	@:overload override public function createEncoder(binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.pipe.Codec;
	
	@:overload override public function createBuiltinFeatureList() : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	@:overload override public function getParameter(parameterName : String, defaultValue : String) : String;
	
	
}
