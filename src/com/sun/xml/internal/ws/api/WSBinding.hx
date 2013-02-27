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
extern interface WSBinding extends javax.xml.ws.Binding
{
	/**
	* Gets the SOAP version of this binding.
	*
	* TODO: clarify what to do with XML/HTTP binding
	*
	* <p>
	* This is just a shor-cut for  {@code getBindingID().getSOAPVersion()}
	*
	* @return
	*      If the binding is using SOAP, this method returns
	*      a {@link SOAPVersion} constant.
	*
	*      If the binding is not based on SOAP, this method
	*      returns null. See {@link Message} for how a non-SOAP
	*      binding shall be handled by {@link Tube}s.
	*/
	@:overload public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	/**
	* Gets the WS-Addressing version of this binding.
	* <p/>
	* TODO: clarify what to do with XML/HTTP binding
	*
	* @return If the binding is using SOAP and WS-Addressing is enabled,
	*         this method returns a {@link AddressingVersion} constant.
	*         If binding is not using SOAP or WS-Addressing is not enabled,
	*         this method returns null.
	*
	*          This might be little slow as it has to go over all the features on binding.
	*          Its advisable to cache the addressingVersion wherever possible and reuse it.
	*/
	@:overload public function getAddressingVersion() : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
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
	@:overload public function getBindingId() : com.sun.xml.internal.ws.api.BindingID;
	
	@:overload public function getHandlerChain() : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>;
	
	/**
	* Checks if a particular {@link WebServiceFeature} is enabled.
	*
	* @return
	*      true if enabled.
	*/
	@:overload public function isFeatureEnabled(feature : Class<javax.xml.ws.WebServiceFeature>) : Bool;
	
	/**
	* Gets a {@link WebServiceFeature} of the specific type.
	*
	* @param featureType
	*      The type of the feature to retrieve.
	* @return
	*      If the feature is present and enabled, return a non-null instance.
	*      Otherwise null.
	*/
	@:overload public function getFeature<F : javax.xml.ws.WebServiceFeature>(featureType : Class<F>) : F;
	
	/**
	* Returns a list of features associated with {@link WSBinding}.
	*/
	@:overload public function getFeatures() : com.sun.xml.internal.ws.api.WSFeatureList;
	
	
}
