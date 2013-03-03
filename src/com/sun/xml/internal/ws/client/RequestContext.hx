package com.sun.xml.internal.ws.client;
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
extern class RequestContext extends com.sun.xml.internal.ws.api.PropertySet
{
	/**
	* Creates {@link BindingProvider#ENDPOINT_ADDRESS_PROPERTY} view
	* on top of {@link #endpointAddress}.
	*
	* @deprecated
	*      always access {@link #endpointAddress}.
	*/
	@:overload @:public public function getEndPointAddressString() : String;
	
	@:overload @:public public function setEndPointAddressString(s : String) : Void;
	
	@:overload @:public public function setEndpointAddress(epa : com.sun.xml.internal.ws.api.EndpointAddress) : Void;
	
	@:overload @:public public function getEndpointAddress() : com.sun.xml.internal.ws.api.EndpointAddress;
	
	/**
	* The value of {@link ContentNegotiation#PROPERTY}
	* property.
	*/
	@:public public var contentNegotiation : com.sun.xml.internal.ws.client.ContentNegotiation;
	
	@:overload @:public public function getContentNegotiationString() : String;
	
	@:overload @:public public function setContentNegotiationString(s : String) : Void;
	
	@:overload @:public public function getSoapAction() : String;
	
	@:overload @:public public function setSoapAction(sAction : String) : Void;
	
	@:overload @:public public function getSoapActionUse() : Null<Bool>;
	
	@:overload @:public public function setSoapActionUse(sActionUse : Null<Bool>) : Void;
	
	/**
	* The efficient get method that reads from {@link RequestContext}.
	*/
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	/**
	* The efficient put method that updates {@link RequestContext}.
	*/
	@:overload @:public override public function put(key : String, value : Dynamic) : Dynamic;
	
	/**
	* Gets the {@link Map} view of this request context.
	*
	* @return
	*      Always same object. Returned map is live.
	*/
	@:overload @:public public function getMapView() : java.util.Map<String, Dynamic>;
	
	/**
	* Fill a {@link Packet} with values of this {@link RequestContext}.
	*/
	@:overload @:public public function fill(packet : com.sun.xml.internal.ws.api.message.Packet, isAddressingEnabled : Bool) : Void;
	
	@:overload @:public public function copy() : com.sun.xml.internal.ws.client.RequestContext;
	
	@:overload @:protected override private function getPropertyMap() : com.sun.xml.internal.ws.api.PropertySet.PropertySet_PropertyMap;
	
	
}
@:native('com$sun$xml$internal$ws$client$RequestContext$MapView') @:internal extern class RequestContext_MapView implements java.util.Map<String, Dynamic>
{
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	@:overload @:public public function containsValue(value : Dynamic) : Bool;
	
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	@:overload @:public public function put(key : String, value : Dynamic) : Dynamic;
	
	@:overload @:public public function remove(key : Dynamic) : Dynamic;
	
	@:overload @:public public function putAll(t : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function keySet() : java.util.Set<String>;
	
	@:overload @:public public function values() : java.util.Collection<Dynamic>;
	
	@:overload @:public public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, Dynamic>>;
	
	
}
