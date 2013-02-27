package com.sun.org.apache.xerces.internal.impl.xs.traversers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
@:internal extern class XSDAbstractTraverser
{
	/**
	* Class <code>XSDAbstractTraverser</code> serves as the base class for all
	* other <code>XSD???Traverser</code>s. It holds the common data and provide
	* a unified way to initialize these data.
	*
	* @xerces.internal
	*
	* @author Elena Litani, IBM
	* @author Rahul Srivastava, Sun Microsystems Inc.
	* @author Neeraj Bajaj, Sun Microsystems Inc.
	*
	* @version $Id: XSDAbstractTraverser.java,v 1.8 2010-11-01 04:40:02 joehw Exp $
	*/
	private static var NO_NAME(default, null) : String;
	
	private static var NOT_ALL_CONTEXT(default, null) : Int;
	
	private static var PROCESSING_ALL_EL(default, null) : Int;
	
	private static var GROUP_REF_WITH_ALL(default, null) : Int;
	
	private static var CHILD_OF_GROUP(default, null) : Int;
	
	private static var PROCESSING_ALL_GP(default, null) : Int;
	
	private var fSchemaHandler : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDHandler;
	
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	private var fAttrChecker : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker;
	
	private var fValidateAnnotations : Bool;
	
	@:overload private function checkOccurrences(particle : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl, particleName : String, parent : org.w3c.dom.Element, allContextFlags : Int, defaultVals : haxe.Int64) : com.sun.org.apache.xerces.internal.impl.xs.XSParticleDecl;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$traversers$XSDAbstractTraverser$FacetInfo') @:internal extern class XSDAbstractTraverser_FacetInfo
{
	
}
