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
* This interface represents the Wildcard schema component.
*/
extern interface XSWildcard extends com.sun.org.apache.xerces.internal.xs.XSTerm
{
	/**
	* Namespace constraint: A constraint type: any, not, list.
	*/
	@:overload public function getConstraintType() : java.StdTypes.Int16;
	
	/**
	* Namespace constraint: For <code>constraintType</code>
	* <code>NSCONSTRAINT_LIST</code>, the list contains allowed namespaces.
	* For <code>constraintType</code> <code>NSCONSTRAINT_NOT</code>, the
	* list contains disallowed namespaces. For <code>constraintType</code>
	* <code>NSCONSTRAINT_ANY</code>, the <code>StringList</code> is empty.
	*/
	@:overload public function getNsConstraintList() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* [process contents]: one of skip, lax or strict. Valid constants values
	* are: <code>PC_LAX</code>, <code>PC_SKIP</code> and
	* <code>PC_STRICT</code>.
	*/
	@:overload public function getProcessContents() : java.StdTypes.Int16;
	
	/**
	* An annotation if it exists, otherwise <code>null</code>. If not null
	* then the first [annotation] from the sequence of annotations.
	*/
	@:overload public function getAnnotation() : com.sun.org.apache.xerces.internal.xs.XSAnnotation;
	
	/**
	* A sequence of [annotations] or an empty <code>XSObjectList</code>.
	*/
	@:overload public function getAnnotations() : com.sun.org.apache.xerces.internal.xs.XSObjectList;
	
	
}
