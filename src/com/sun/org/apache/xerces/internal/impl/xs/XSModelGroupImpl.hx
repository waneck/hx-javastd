package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2003-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XSModelGroupImpl implements com.sun.org.apache.xerces.internal.xs.XSModelGroup
{
	/**
	* Store schema model group declaration.
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	*
	* @version $Id: XSModelGroupImpl.java,v 1.7 2010-11-01 04:39:55 joehw Exp $
	*/
	public static var MODELGROUP_CHOICE(default, null) : java.StdTypes.Int16;
	
	public static var MODELGROUP_SEQUENCE(default, null) : java.StdTypes.Int16;
	
	public static var MODELGROUP_ALL(default, null) : java.StdTypes.Int16;
	
	public var fCompositor : java.StdTypes.Int16;
	
	public var fParticles : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl>;
	
	public var fParticleCount : Int;
	
	public var fAnnotations : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	@:overload public function isEmpty() : Bool;
	
	/**
	* 3.8.6 Effective Total Range (all and sequence) and
	*       Effective Total Range (choice)
	* The following methods are used to return min/max range for a particle.
	* They are not exactly the same as it's described in the spec, but all the
	* values from the spec are retrievable by these methods.
	*/
	@:overload public function minEffectiveTotalRange() : Int;
	
	@:overload public function maxEffectiveTotalRange() : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function reset() : Void;
	
	/**
	* Get the type of the object, i.e ELEMENT_DECLARATION.
	*/
	@:overload public function getType() : java.StdTypes.Int16;
	
	/**
	* The <code>name</code> of this <code>XSObject</code> depending on the
	* <code>XSObject</code> type.
	*/
	@:overload public function getName() : String;
	
	/**
	* The namespace URI of this node, or <code>null</code> if it is
	* unspecified.  defines how a namespace URI is attached to schema
	* components.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* {compositor} One of all, choice or sequence. The valid constants values
	* are: ALL, CHOICE, SEQUENCE.
	*/
	@:overload public function getCompositor() : java.StdTypes.Int16;
	
	/**
	* {particles} A list of particles
	*/
	@:overload public function getParticles() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* Optional. Annotation.
	*/
	@:overload public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* Optional. Annotations.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	/**
	* @see org.apache.xerces.xs.XSObject#getNamespaceItem()
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
