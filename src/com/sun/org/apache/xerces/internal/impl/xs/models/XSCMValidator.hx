package com.sun.org.apache.xerces.internal.impl.xs.models;
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
extern interface XSCMValidator
{
	/**
	* This methods to be called on entering a first element whose type
	* has this content model. It will return the initial state of the content model
	*
	* @return Start state of the content model
	*/
	@:overload @:public public function startContentModel() : java.NativeArray<Int>;
	
	/**
	* The method corresponds to one transaction in the content model.
	*
	* @param elementName
	* @param state  Current state
	* @return element decl or wildcard decl that
	*         corresponds to the element from the Schema grammar
	*/
	@:overload @:public public function oneTransition(elementName : com.sun.org.apache.xerces.internal.xni.QName, state : java.NativeArray<Int>, subGroupHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Dynamic;
	
	/**
	* The method indicates the end of list of children
	*
	* @param state  Current state of the content model
	* @return true if the last state was a valid final state
	*/
	@:overload @:public public function endContentModel(state : java.NativeArray<Int>) : Bool;
	
	/**
	* check whether this content violates UPA constraint.
	*
	* @param subGroupHandler the substitution group handler
	* @return true if this content model contains other or list wildcard
	*/
	@:overload @:public public function checkUniqueParticleAttribution(subGroupHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Bool;
	
	/**
	* Check which elements are valid to appear at this point. This method also
	* works if the state is in error, in which case it returns what should
	* have been seen.
	*
	* @param state  the current state
	* @return       a Vector whose entries are instances of
	*               either XSWildcardDecl or XSElementDecl.
	*/
	@:overload @:public public function whatCanGoHere(state : java.NativeArray<Int>) : java.util.Vector<Dynamic>;
	
	/**
	* Used by constant space algorithm for a{n,m} for n > 1 and
	* m <= unbounded. Called by a validator if validation of
	* countent model succeeds after subsuming a{n,m} to a*
	* (or a+) to check the n and m bounds.
	* Returns <code>null</code> if validation of bounds is
	* successful. Returns a list of strings with error info
	* if not. Even entries in list returned are error codes
	* (used to look up properties) and odd entries are parameters
	* to be passed when formatting error message. Each parameter
	* is associated with the error code that preceeds it in
	* the list.
	*/
	@:overload @:public public function checkMinMaxBounds() : java.util.ArrayList<Dynamic>;
	
	
}
