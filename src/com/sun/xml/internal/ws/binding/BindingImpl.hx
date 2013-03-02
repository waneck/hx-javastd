package com.sun.xml.internal.ws.binding;
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
extern class BindingImpl implements com.sun.xml.internal.ws.api.WSBinding
{
	/**
	* Instances are created by the service, which then
	* sets the handler chain on the binding impl.
	*
	* <p>
	* This class is made abstract as we don't see a situation when
	* a BindingImpl has much meaning without binding id.
	* IOW, for a specific binding there will be a class
	* extending BindingImpl, for example SOAPBindingImpl.
	*
	* <p>
	* The spi Binding interface extends Binding.
	*
	* @author WS Development Team
	*/
	private var handlerConfig : com.sun.xml.internal.ws.client.HandlerConfiguration;
	
	private var features(default, null) : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	private var serviceMode : javax.xml.ws.Service.Service_Mode;
	
	@:overload private function new(bindingId : com.sun.xml.internal.ws.api.BindingID) : Void;
	
	@:overload public function getHandlerChain() : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>;
	
	@:overload public function getHandlerConfig() : com.sun.xml.internal.ws.client.HandlerConfiguration;
	
	@:overload public function setMode(mode : javax.xml.ws.Service.Service_Mode) : Void;
	
	@:overload public function getBindingId() : com.sun.xml.internal.ws.api.BindingID;
	
	@:overload @:final public function getSOAPVersion() : com.sun.xml.internal.ws.api.SOAPVersion;
	
	@:overload public function getAddressingVersion() : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	@:overload @:final public function createCodec() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	@:overload public static function create(bindingId : com.sun.xml.internal.ws.api.BindingID) : com.sun.xml.internal.ws.binding.BindingImpl;
	
	@:overload public static function create(bindingId : com.sun.xml.internal.ws.api.BindingID, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : com.sun.xml.internal.ws.binding.BindingImpl;
	
	@:overload public static function getDefaultBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload public function getBindingID() : String;
	
	@:overload public function getFeature<F : javax.xml.ws.WebServiceFeature>(featureType : Class<F>) : F;
	
	@:overload public function isFeatureEnabled(feature : Class<javax.xml.ws.WebServiceFeature>) : Bool;
	
	@:overload public function getFeatures() : com.sun.xml.internal.ws.binding.WebServiceFeatureList;
	
	@:overload public function setFeatures(newFeatures : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	@:overload public function addFeature(newFeature : javax.xml.ws.WebServiceFeature) : Void;
	
	/**
	* Sets the handler chain for the protocol binding instance.
	*
	*  @param chain    A List of handler configuration entries
	*  @throws WebServiceException On an error in the configuration of
	*                  the handler chain
	*  @throws java.lang.UnsupportedOperationException If this
	*          operation is not supported. This may be done to
	*          avoid any overriding of a pre-configured handler
	*          chain.
	*/
	@:overload @:public public function setHandlerChain(chain : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>) : Void;
	
	
}
