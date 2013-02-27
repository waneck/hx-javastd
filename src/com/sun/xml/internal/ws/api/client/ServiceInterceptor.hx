package com.sun.xml.internal.ws.api.client;
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
extern class ServiceInterceptor
{
	/**
	* Called before {@link WSBinding} is created, to allow interceptors
	* to add {@link WebServiceFeature}s to the created {@link WSBinding}.
	*
	* @param port
	*      Information about the port for which dispatch/proxy will be created.
	* @param serviceEndpointInterface
	*      Null if the created binding is for {@link Dispatch}. Otheriwse
	*      it represents the port interface of the proxy to be created.
	* @param defaultFeatures
	*      The list of features that are currently scheduled to be set for
	*      the newly created {@link WSBinding}.
	*
	* @return
	*      A set of features to be added to the newly created {@link WSBinding}.
	*      Can be empty but never null.
	*      <tt>defaultFeatures</tt> will take precedence over what this method
	*      would return (because it includes user-specified ones which will
	*      take the at-most priority), but features you return from this method
	*      will take precedence over {@link BindingID}'s
	*      {@link BindingID#createBuiltinFeatureList() implicit features}.
	*/
	@:overload public function preCreateBinding(port : com.sun.xml.internal.ws.api.client.WSPortInfo, serviceEndpointInterface : Class<Dynamic>, defaultFeatures : com.sun.xml.internal.ws.api.WSFeatureList) : java.util.List<javax.xml.ws.WebServiceFeature>;
	
	/**
	* A callback to notify the event of creation of proxy object for SEI endpoint. The
	* callback could set some properties on the {@link BindingProvider}.
	*
	* @param bp created proxy instance
	* @param serviceEndpointInterface SEI of the endpoint
	*/
	@:overload public function postCreateProxy(bp : com.sun.xml.internal.ws.developer.WSBindingProvider, serviceEndpointInterface : Class<Dynamic>) : Void;
	
	/**
	* A callback to notify that a {@link Dispatch} object is created. The callback
	* could set some properties on the {@link BindingProvider}.
	*
	* @param bp BindingProvider of dispatch object
	*/
	@:overload public function postCreateDispatch(bp : com.sun.xml.internal.ws.developer.WSBindingProvider) : Void;
	
	/**
	* Aggregates multiple interceptors into one facade.
	*/
	@:overload public static function aggregate(interceptors : java.NativeArray<ServiceInterceptor>) : ServiceInterceptor;
	
	
}
