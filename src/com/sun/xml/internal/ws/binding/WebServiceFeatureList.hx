package com.sun.xml.internal.ws.binding;
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
extern class WebServiceFeatureList implements com.sun.xml.internal.ws.api.WSFeatureList
{
	@:overload public function new() : Void;
	
	@:overload public function new(features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	/**
	* Creates a list by reading featuers from the annotation on a class.
	*/
	@:overload public function new(endpointClass : Class<Dynamic>) : Void;
	
	/**
	* Adds the corresponding features to the list for feature annotations(i.e
	* which have {@link WebServiceFeatureAnnotation} meta annotation)
	*
	* @param annIt collection of annotations(that can have non-feature annotations)
	*/
	@:overload public function parseAnnotations(annIt : java.lang.Iterable<java.lang.annotation.Annotation>) : Void;
	
	/**
	* Returns a corresponding feature for a feature annotation(i.e which has
	* {@link WebServiceFeatureAnnotation} meta annotation)
	*
	* @return corresponding feature for the annotation
	*         null, if the annotation is nota feature annotation
	*/
	@:overload public static function getFeature(a : java.lang.annotation.Annotation) : javax.xml.ws.WebServiceFeature;
	
	/**
	* Reads {@link WebServiceFeatureAnnotation feature annotations} on a class
	* and adds them to the list.
	*
	* @param endpointClass web service impl class
	*/
	@:overload public function parseAnnotations(endpointClass : Class<Dynamic>) : Void;
	
	@:overload public function iterator() : java.util.Iterator<javax.xml.ws.WebServiceFeature>;
	
	@:overload public function toArray() : java.NativeArray<javax.xml.ws.WebServiceFeature>;
	
	@:overload public function isEnabled(feature : Class<javax.xml.ws.WebServiceFeature>) : Bool;
	
	@:overload public function get<F : javax.xml.ws.WebServiceFeature>(featureType : Class<F>) : F;
	
	/**
	* Adds a feature to the list if it's not already added.
	*/
	@:overload public function add(f : javax.xml.ws.WebServiceFeature) : Void;
	
	/**
	* Adds features to the list if it's not already added.
	*/
	@:overload public function addAll(list : com.sun.xml.internal.ws.api.WSFeatureList) : Void;
	
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
	
	@:overload public function mergeFeatures(features : java.NativeArray<javax.xml.ws.WebServiceFeature>, reportConflicts : Bool) : Void;
	
	/**
	* Set the parent features. Basically the parent feature list will be overriden
	* by this feature list.
	*/
	@:overload public function setParentFeaturedObject(parent : com.sun.xml.internal.ws.api.model.wsdl.WSDLFeaturedObject) : Void;
	
	@:overload public static function getFeature<F : javax.xml.ws.WebServiceFeature>(features : java.NativeArray<javax.xml.ws.WebServiceFeature>, featureType : Class<F>) : F;
	
	
}
/**
* A Union of this WebServiceFeatureList and the parent.
*/
@:native('com$sun$xml$internal$ws$binding$WebServiceFeatureList$MergedFeatures') @:internal extern class WebServiceFeatureList_MergedFeatures implements java.util.Iterator<javax.xml.ws.WebServiceFeature>
{
	@:overload public function new(parent : com.sun.xml.internal.ws.api.WSFeatureList) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : javax.xml.ws.WebServiceFeature;
	
	@:overload public function remove() : Void;
	
	@:overload public function toArray() : java.NativeArray<javax.xml.ws.WebServiceFeature>;
	
	
}
