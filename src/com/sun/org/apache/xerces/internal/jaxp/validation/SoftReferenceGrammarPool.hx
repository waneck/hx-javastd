package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class SoftReferenceGrammarPool implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
{
	/** Default size. */
	@:protected @:static @:final private static var TABLE_SIZE(default, null) : Int;
	
	/** Zero length grammar array. */
	@:protected @:static @:final private static var ZERO_LENGTH_GRAMMAR_ARRAY(default, null) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	/** Grammars. */
	@:protected private var fGrammars : java.NativeArray<com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry>;
	
	/** Flag indicating whether this pool is locked */
	@:protected private var fPoolIsLocked : Bool;
	
	/** The number of grammars in the pool */
	@:protected private var fGrammarCount : Int;
	
	/** Reference queue for cleared grammar references */
	@:protected @:final private var fReferenceQueue(default, null) : java.lang.ref.ReferenceQueue<Dynamic>;
	
	/** Constructs a grammar pool with a default number of buckets. */
	@:overload @:public public function new() : Void;
	
	/** Constructs a grammar pool with a specified number of buckets. */
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	/* <p> Retrieve the initial known set of grammars. This method is
	* called by a validator before the validation starts. The application
	* can provide an initial set of grammars available to the current
	* validation attempt. </p>
	*
	* @param grammarType The type of the grammar, from the
	*                    <code>com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription</code>
	*                    interface.
	* @return            The set of grammars the validator may put in its "bucket"
	*/
	@:overload @:public public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	/* <p> Return the final set of grammars that the validator ended up
	* with. This method is called after the validation finishes. The
	* application may then choose to cache some of the returned grammars.</p>
	* <p>In this implementation, we make our choice based on whether this object
	* is "locked"--that is, whether the application has instructed
	* us not to accept any new grammars.</p>
	*
	* @param grammarType The type of the grammars being returned;
	* @param grammars    An array containing the set of grammars being
	*                    returned; order is not significant.
	*/
	@:overload @:public public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	/* <p> This method requests that the application retrieve a grammar
	* corresponding to the given GrammarIdentifier from its cache.
	* If it cannot do so it must return null; the parser will then
	* call the EntityResolver. </p>
	* <strong>An application must not call its EntityResolver itself
	* from this method; this may result in infinite recursions.</strong>
	*
	* This implementation chooses to use the root element name to identify a DTD grammar
	* and the target namespace to identify a Schema grammar.
	*
	* @param desc The description of the Grammar being requested.
	* @return     The Grammar corresponding to this description or null if
	*             no such Grammar is known.
	*/
	@:overload @:public public function retrieveGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Puts the specified grammar into the grammar pool and associates it to
	* its root element name or its target namespace.
	*
	* @param grammar The Grammar.
	*/
	@:overload @:public public function putGrammar(grammar : com.sun.org.apache.xerces.internal.xni.grammars.Grammar) : Void;
	
	/**
	* Returns the grammar associated to the specified grammar description.
	* Currently, the root element name is used as the key for DTD grammars
	* and the target namespace  is used as the key for Schema grammars.
	*
	* @param desc The Grammar Description.
	*/
	@:overload @:public public function getGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Removes the grammar associated to the specified grammar description from the
	* grammar pool and returns the removed grammar. Currently, the root element name
	* is used as the key for DTD grammars and the target namespace  is used
	* as the key for Schema grammars.
	*
	* @param desc The Grammar Description.
	* @return     The removed grammar.
	*/
	@:overload @:public public function removeGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Returns true if the grammar pool contains a grammar associated
	* to the specified grammar description. Currently, the root element name
	* is used as the key for DTD grammars and the target namespace  is used
	* as the key for Schema grammars.
	*
	* @param desc The Grammar Description.
	*/
	@:overload @:public public function containsGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : Bool;
	
	/* <p> Sets this grammar pool to a "locked" state--i.e.,
	* no new grammars will be added until it is "unlocked".
	*/
	@:overload @:public public function lockPool() : Void;
	
	/* <p> Sets this grammar pool to an "unlocked" state--i.e.,
	* new grammars will be added when putGrammar or cacheGrammars
	* are called.
	*/
	@:overload @:public public function unlockPool() : Void;
	
	/*
	* <p>This method clears the pool-i.e., removes references
	* to all the grammars in it.</p>
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* This method checks whether two grammars are the same. Currently, we compare
	* the root element names for DTD grammars and the target namespaces for Schema grammars.
	* The application can override this behaviour and add its own logic.
	*
	* @param desc1 The grammar description
	* @param desc2 The grammar description of the grammar to be compared to
	* @return      True if the grammars are equal, otherwise false
	*/
	@:overload @:public public function equals(desc1 : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription, desc2 : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : Bool;
	
	/**
	* Returns the hash code value for the given grammar description.
	*
	* @param desc The grammar description
	* @return     The hash code value
	*/
	@:overload @:public public function hashCode(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : Int;
	
	
}
/**
* This class is a grammar pool entry. Each entry acts as a node
* in a doubly linked list.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$SoftReferenceGrammarPool$Entry') @:internal extern class SoftReferenceGrammarPool_Entry
{
	@:public public var hash : Int;
	
	@:public public var bucket : Int;
	
	@:public public var prev : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry;
	
	@:public public var next : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry;
	
	@:public public var desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
	
	@:public public var grammar : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_SoftGrammarReference;
	
	@:overload @:protected private function new(hash : Int, bucket : Int, desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription, grammar : com.sun.org.apache.xerces.internal.xni.grammars.Grammar, next : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry, queue : java.lang.ref.ReferenceQueue<Dynamic>) : Void;
	
	@:overload @:protected private function clear() : Void;
	
	
}
/**
* This class stores a soft reference to a grammar object. It keeps a reference
* to its associated entry, so that it can be easily removed from the pool.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$SoftReferenceGrammarPool$SoftGrammarReference') @:internal extern class SoftReferenceGrammarPool_SoftGrammarReference extends java.lang.ref.SoftReference<Dynamic>
{
	@:public public var entry : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry;
	
	@:overload @:protected private function new(entry : com.sun.org.apache.xerces.internal.jaxp.validation.SoftReferenceGrammarPool.SoftReferenceGrammarPool_Entry, grammar : com.sun.org.apache.xerces.internal.xni.grammars.Grammar, queue : java.lang.ref.ReferenceQueue<Dynamic>) : Void;
	
	
}
