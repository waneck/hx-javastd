package com.sun.org.apache.xerces.internal.impl.xs.traversers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
@:internal extern class XSDocumentInfo
{
	/**
	* Objects of this class hold all information pecular to a
	* particular XML Schema document.  This is needed because
	* namespace bindings and other settings on the <schema/> element
	* affect the contents of that schema document alone.
	*
	* @xerces.internal
	*
	* @author Neil Graham, IBM
	* @version $Id: XSDocumentInfo.java,v 1.5 2007/10/15 22:27:48 spericas Exp $
	*/
	@:protected private var fNamespaceSupport : com.sun.org.apache.xerces.internal.impl.xs.SchemaNamespaceSupport;
	
	@:protected private var fNamespaceSupportRoot : com.sun.org.apache.xerces.internal.impl.xs.SchemaNamespaceSupport;
	
	@:protected private var SchemaNamespaceSupportStack : java.util.Stack<Dynamic>;
	
	@:protected private var fAreLocalAttributesQualified : Bool;
	
	@:protected private var fAreLocalElementsQualified : Bool;
	
	@:protected private var fBlockDefault : java.StdTypes.Int16;
	
	@:protected private var fFinalDefault : java.StdTypes.Int16;
	
	@:protected private var fIsChameleonSchema : Bool;
	
	@:protected private var fSchemaElement : org.w3c.dom.Element;
	
	@:protected private var fValidationContext : com.sun.org.apache.xerces.internal.impl.validation.ValidationState;
	
	@:protected private var fAttrChecker : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAttributeChecker;
	
	@:protected private var fSchemaAttrs : java.NativeArray<Dynamic>;
	
	@:protected private var fAnnotations : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSAnnotationInfo;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function addAllowedNS(namespace : String) : Void;
	
	@:overload @:public public function isAllowedNS(namespace : String) : Bool;
	
	
}
