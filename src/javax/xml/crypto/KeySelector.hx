package javax.xml.crypto;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* $Id: KeySelector.java,v 1.6 2005/05/10 15:47:42 mullan Exp $
*/
extern class KeySelector
{
	/**
	* Default no-args constructor; intended for invocation by subclasses only.
	*/
	@:overload private function new() : Void;
	
	/**
	* Attempts to find a key that satisfies the specified constraints.
	*
	* @param keyInfo a <code>KeyInfo</code> (may be <code>null</code>)
	* @param purpose the key's purpose ({@link Purpose#SIGN},
	*    {@link Purpose#VERIFY}, {@link Purpose#ENCRYPT}, or
	*    {@link Purpose#DECRYPT})
	* @param method the algorithm method that this key is to be used for.
	*    Only keys that are compatible with the algorithm and meet the
	*    constraints of the specified algorithm should be returned.
	* @param context an <code>XMLCryptoContext</code> that may contain
	*    useful information for finding an appropriate key. If this key
	*    selector supports resolving {@link RetrievalMethod} types, the
	*    context's <code>baseURI</code> and <code>dereferencer</code>
	*    parameters (if specified) should be used by the selector to
	*    resolve and dereference the URI.
	* @return the result of the key selector
	* @throws KeySelectorException if an exceptional condition occurs while
	*    attempting to find a key. Note that an inability to find a key is not
	*    considered an exception (<code>null</code> should be
	*    returned in that case). However, an error condition (ex: network
	*    communications failure) that prevented the <code>KeySelector</code>
	*    from finding a potential key should be considered an exception.
	* @throws ClassCastException if the data type of <code>method</code>
	*    is not supported by this key selector
	*/
	@:overload @:abstract public function select(keyInfo : javax.xml.crypto.dsig.keyinfo.KeyInfo, purpose : KeySelector_Purpose, method : javax.xml.crypto.AlgorithmMethod, context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.KeySelectorResult;
	
	/**
	* Returns a <code>KeySelector</code> that always selects the specified
	* key, regardless of the <code>KeyInfo</code> passed to it.
	*
	* @param key the sole key to be stored in the key selector
	* @return a key selector that always selects the specified key
	* @throws NullPointerException if <code>key</code> is <code>null</code>
	*/
	@:overload public static function singletonKeySelector(key : java.security.Key) : KeySelector;
	
	
}
/**
* The purpose of the key that is to be selected.
*/
@:native('javax$xml$crypto$KeySelector$Purpose') extern class KeySelector_Purpose
{
	/**
	* Returns a string representation of this purpose ("sign",
	* "verify", "encrypt", or "decrypt").
	*
	* @return a string representation of this purpose
	*/
	@:overload public function toString() : String;
	
	/**
	* A key for signing.
	*/
	public static var SIGN(default, null) : KeySelector_Purpose;
	
	/**
	* A key for verifying.
	*/
	public static var VERIFY(default, null) : KeySelector_Purpose;
	
	/**
	* A key for encrypting.
	*/
	public static var ENCRYPT(default, null) : KeySelector_Purpose;
	
	/**
	* A key for decrypting.
	*/
	public static var DECRYPT(default, null) : KeySelector_Purpose;
	
	
}
@:native('javax$xml$crypto$KeySelector$SingletonKeySelector') @:internal extern class KeySelector_SingletonKeySelector extends KeySelector
{
	@:overload override public function select(keyInfo : javax.xml.crypto.dsig.keyinfo.KeyInfo, purpose : KeySelector_Purpose, method : javax.xml.crypto.AlgorithmMethod, context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.KeySelectorResult;
	
	
}
