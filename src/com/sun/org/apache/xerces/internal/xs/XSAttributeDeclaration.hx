package com.sun.org.apache.xerces.internal.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
/**
* The interface represents the Attribute Declaration schema component.
*/
extern interface XSAttributeDeclaration extends com.sun.org.apache.xerces.internal.xs.XSObject
{
	/**
	* [type definition]: A simple type definition.
	*/
	@:overload public function getTypeDefinition() : com.sun.org.apache.xerces.internal.xs.XSSimpleTypeDefinition;
	
	/**
	* [scope]. One of <code>SCOPE_GLOBAL</code>, <code>SCOPE_LOCAL</code>, or
	* <code>SCOPE_ABSENT</code>. If the scope is local, then the
	* <code>enclosingCTDefinition</code> is present.
	*/
	@:overload public function getScope() : java.StdTypes.Int16;
	
	/**
	* The complex type definition for locally scoped declarations (see
	* <code>scope</code>), otherwise <code>null</code> if no such
	* definition exists.
	*/
	@:overload public function getEnclosingCTDefinition() : com.sun.org.apache.xerces.internal.xs.XSComplexTypeDefinition;
	
	/**
	* Value constraint: one of <code>VC_NONE, VC_DEFAULT, VC_FIXED</code>.
	*/
	@:overload public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* Value constraint: The constraint value with respect to the [type
	* definition], otherwise <code>null</code>.
	*/
	@:overload public function getConstraintValue() : String;
	
	/**
	* Value Constraint: Binding specific actual constraint value or
	* <code>null</code> if the value is in error or there is no value
	* constraint.
	* @exception XSException
	*   NOT_SUPPORTED_ERR: Raised if the implementation does not support this
	*   method.
	*/
	@:overload public function getActualVC() : Dynamic;
	
	/**
	* The actual constraint value built-in datatype, e.g.
	* <code>STRING_DT, SHORT_DT</code>. If the type definition of this
	* value is a list type definition, this method returns
	* <code>LIST_DT</code>. If the type definition of this value is a list
	* type definition whose item type is a union type definition, this
	* method returns <code>LISTOFUNION_DT</code>. To query the actual
	* constraint value of the list or list of union type definitions use
	* <code>itemValueTypes</code>. If the <code>actualValue</code> is
	* <code>null</code>, this method returns <code>UNAVAILABLE_DT</code>.
	* @exception XSException
	*   NOT_SUPPORTED_ERR: Raised if the implementation does not support this
	*   method.
	*/
	@:overload public function getActualVCType() : java.StdTypes.Int16;
	
	/**
	* In the case the actual constraint value represents a list, i.e. the
	* <code>actualValueType</code> is <code>LIST_DT</code>, the returned
	* array consists of one type kind which represents the itemType. If the
	* actual constraint value represents a list type definition whose item
	* type is a union type definition, i.e. <code>LISTOFUNION_DT</code>,
	* for each actual constraint value in the list the array contains the
	* corresponding memberType kind. For examples, see
	* <code>ItemPSVI.itemValueTypes</code>.
	* @exception XSException
	*   NOT_SUPPORTED_ERR: Raised if the implementation does not support this
	*   method.
	*/
	@:overload public function getItemValueTypes() : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/**
	* An annotation if it exists, otherwise <code>null</code>.
	* If not null then the first [annotation] from the sequence of annotations.
	*/
	@:overload public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* A sequence of [annotations] or an empty  <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
