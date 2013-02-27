package com.sun.xml.internal.ws.api;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface WSFeatureList extends java.lang.Iterable<javax.xml.ws.WebServiceFeature>
{
	/**
	* Checks if a particular {@link WebServiceFeature} is enabled.
	*
	* @return
	*      true if enabled.
	*/
	@:overload public function isEnabled(feature : Class<javax.xml.ws.WebServiceFeature>) : Bool;
	
	/**
	* Gets a {@link WebServiceFeature} of the specific type.
	*
	* @param featureType
	*      The type of the feature to retrieve.
	* @return
	*      If the feature is present and enabled, return a non-null instance.
	*      Otherwise null.
	*/
	@:overload public function get<F : javax.xml.ws.WebServiceFeature>(featureType : Class<F>) : F;
	
	/**
	* Obtains all the features in the array.
	*/
	@:overload public function toArray() : java.NativeArray<javax.xml.ws.WebServiceFeature>;
	
	/**
	* Merges the extra features that are not already set on binding.
	* i.e, if a feature is set already on binding through someother API
	* the coresponding wsdlFeature is not set.
	*
	* @param features          Web Service features that need to be merged with already configured features.
	* @param reportConflicts   If true, checks if the feature setting in WSDL (wsdl extension or
	*                          policy configuration) colflicts with feature setting in Deployed Service and
	*                          logs warning if there are any conflicts.
	*/
	@:overload public function mergeFeatures(features : java.NativeArray<javax.xml.ws.WebServiceFeature>, reportConflicts : Bool) : Void;
	
	/**
	* Merges the extra features that are not already set on binding.
	* i.e, if a feature is set already on binding through someother API
	* the coresponding wsdlFeature is not set.
	*
	* @param features          Web Service features that need to be merged with already configured features.
	* @param reportConflicts   If true, checks if the feature setting in WSDL (wsdl extension or
	*                          policy configuration) colflicts with feature setting in Deployed Service and
	*                          logs warning if there are any conflicts.
	*/
	@:overload public function mergeFeatures(features : java.lang.Iterable<javax.xml.ws.WebServiceFeature>, reportConflicts : Bool) : Void;
	
	
}
