package com.sun.org.apache.xerces.internal.impl.xs.identity;
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
extern class KeyRef extends com.sun.org.apache.xerces.internal.impl.xs.identity.IdentityConstraint
{
	/** The key (or unique) being referred to. */
	@:protected private var fKey : com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey;
	
	/** Constructs a keyref with the specified name. */
	@:overload @:public public function new(namespace : String, identityConstraintName : String, elemName : String, key : com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey) : Void;
	
	/** Returns the key being referred to.  */
	@:overload @:public public function getKey() : com.sun.org.apache.xerces.internal.impl.xs.identity.UniqueOrKey;
	
	/**
	* {referenced key} Required if {identity-constraint category} is keyref,
	* forbidden otherwise. An identity-constraint definition with
	* {identity-constraint category} equal to key or unique.
	*/
	@:overload @:public override public function getRefKey() : com.sun.org.apache.xerces.internal.xs.XSIDCDefinition;
	
	
}
