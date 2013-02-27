package com.sun.org.apache.xerces.internal.impl.xs.models;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
extern class XSDFACM implements com.sun.org.apache.xerces.internal.impl.xs.models.XSCMValidator
{
	/**
	* Constructs a DFA content model.
	*
	* @param syntaxTree    The syntax tree of the content model.
	* @param leafCount     The number of leaves.
	*
	* @exception RuntimeException Thrown if DFA can't be built.
	*/
	@:overload public function new(syntaxTree : com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode, leafCount : Int) : Void;
	
	/**
	* check whether the given state is one of the final states
	*
	* @param state       the state to check
	*
	* @return whether it's a final state
	*/
	@:overload public function isFinalState(state : Int) : Bool;
	
	/**
	* one transition only
	*
	* @param curElem The current element's QName
	* @param state stack to store the previous state
	* @param subGroupHandler the substitution group handler
	*
	* @return  null if transition is invalid; otherwise the Object corresponding to the
	*      XSElementDecl or XSWildcardDecl identified.  Also, the
	*      state array will be modified to include the new state; this so that the validator can
	*      store it away.
	*
	* @exception RuntimeException thrown on error
	*/
	@:overload public function oneTransition(curElem : com.sun.org.apache.xerces.internal.xni.QName, state : java.NativeArray<Int>, subGroupHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Dynamic;
	
	@:overload public function startContentModel() : java.NativeArray<Int>;
	
	@:overload public function endContentModel(state : java.NativeArray<Int>) : Bool;
	
	/**
	* check whether this content violates UPA constraint.
	*
	* @param subGroupHandler the substitution group handler
	* @return true if this content model contains other or list wildcard
	*/
	@:overload public function checkUniqueParticleAttribution(subGroupHandler : com.sun.org.apache.xerces.internal.impl.xs.SubstitutionGroupHandler) : Bool;
	
	/**
	* Check which elements are valid to appear at this point. This method also
	* works if the state is in error, in which case it returns what should
	* have been seen.
	*
	* @param state  the current state
	* @return       a Vector whose entries are instances of
	*               either XSWildcardDecl or XSElementDecl.
	*/
	@:overload public function whatCanGoHere(state : java.NativeArray<Int>) : java.util.Vector<Dynamic>;
	
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
	@:overload public function checkMinMaxBounds() : java.util.ArrayList<Dynamic>;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$models$XSDFACM$Occurence') @:internal extern class XSDFACM_Occurence
{
	@:overload public function new(leaf : com.sun.org.apache.xerces.internal.impl.xs.models.XSCMRepeatingLeaf, elemIndex : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}
