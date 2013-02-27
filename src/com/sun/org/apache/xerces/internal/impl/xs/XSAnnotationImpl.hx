package com.sun.org.apache.xerces.internal.impl.xs;
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
extern class XSAnnotationImpl implements com.sun.org.apache.xerces.internal.xs.XSAnnotation
{
	@:overload public function new(contents : String, grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar) : Void;
	
	/**
	*  Write contents of the annotation to the specified DOM object. If the
	* specified <code>target</code> object is a DOM in-scope namespace
	* declarations for <code>annotation</code> element are added as
	* attributes nodes of the serialized <code>annotation</code>, otherwise
	* the corresponding events for all in-scope namespace declaration are
	* sent via specified document handler.
	* @param target  A target pointer to the annotation target object, i.e.
	*   <code>org.w3c.dom.Document</code>,
	*   <code>org.xml.sax.ContentHandler</code>.
	* @param targetType  A target type.
	* @return If the <code>target</code> is recognized type and supported by
	*   this implementation return true, otherwise return false.
	*/
	@:overload public function writeAnnotation(target : Dynamic, targetType : java.StdTypes.Int16) : Bool;
	
	/**
	* A text representation of annotation.
	*/
	@:overload public function getAnnotationString() : String;
	
	/**
	*  The <code>type</code> of this object, i.e.
	* <code>ELEMENT_DECLARATION</code>.
	*/
	@:overload public function getType() : java.StdTypes.Int16;
	
	/**
	* The name of type <code>NCName</code> of this declaration as defined in
	* XML Namespaces.
	*/
	@:overload public function getName() : String;
	
	/**
	*  The [target namespace] of this object, or <code>null</code> if it is
	* unspecified.
	*/
	@:overload public function getNamespace() : String;
	
	/**
	* A namespace schema information item corresponding to the target
	* namespace of the component, if it's globally declared; or null
	* otherwise.
	*/
	@:overload public function getNamespaceItem() : com.sun.org.apache.xerces.internal.xs.XSNamespaceItem;
	
	
}
