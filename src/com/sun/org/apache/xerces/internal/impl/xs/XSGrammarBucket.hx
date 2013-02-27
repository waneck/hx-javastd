package com.sun.org.apache.xerces.internal.impl.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class XSGrammarBucket
{
	/**
	* Get the schema grammar for the specified namespace
	*
	* @param namespace
	* @return SchemaGrammar associated with the namespace
	*/
	@:overload public function getGrammar(namespace : String) : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar;
	
	/**
	* Put a schema grammar into the registry
	* This method is for internal use only: it assumes that a grammar with
	* the same target namespace is not already in the bucket.
	*
	* @param grammar   the grammar to put in the registry
	*/
	@:overload public function putGrammar(grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar) : Void;
	
	/**
	* put a schema grammar and any grammars imported by it (directly or
	* inderectly) into the registry. when a grammar with the same target
	* namespace is already in the bucket, and different from the one being
	* added, it's an error, and no grammar will be added into the bucket.
	*
	* @param grammar   the grammar to put in the registry
	* @param deep      whether to add imported grammars
	* @return          whether the process succeeded
	*/
	@:overload public function putGrammar(grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, deep : Bool) : Bool;
	
	/**
	* put a schema grammar and any grammars imported by it (directly or
	* inderectly) into the registry. when a grammar with the same target
	* namespace is already in the bucket, and different from the one being
	* added, no grammar will be added into the bucket.
	*
	* @param grammar        the grammar to put in the registry
	* @param deep           whether to add imported grammars
	* @param ignoreConflict whether to ignore grammars that already exist in the grammar
	*                       bucket or not - including 'grammar' parameter.
	* @return               whether the process succeeded
	*/
	@:overload public function putGrammar(grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, deep : Bool, ignoreConflict : Bool) : Bool;
	
	/**
	* get all grammars in the registry
	*
	* @return an array of SchemaGrammars.
	*/
	@:overload public function getGrammars() : java.NativeArray<com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar>;
	
	/**
	* Clear the registry.
	* REVISIT: update to use another XSGrammarBucket
	*/
	@:overload public function reset() : Void;
	
	
}
