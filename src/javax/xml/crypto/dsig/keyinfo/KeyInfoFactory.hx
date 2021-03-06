package javax.xml.crypto.dsig.keyinfo;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
* $Id: KeyInfoFactory.java,v 1.12 2005/05/10 16:35:35 mullan Exp $
*/
extern class KeyInfoFactory
{
	/**
	* Default constructor, for invocation by subclasses.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Returns a <code>KeyInfoFactory</code> that supports the
	* specified XML processing mechanism and representation type (ex: "DOM").
	*
	* <p>This method uses the standard JCA provider lookup mechanism to
	* locate and instantiate a <code>KeyInfoFactory</code> implementation of
	* the desired mechanism type. It traverses the list of registered security
	* <code>Provider</code>s, starting with the most preferred
	* <code>Provider</code>. A new <code>KeyInfoFactory</code> object
	* from the first <code>Provider</code> that supports the specified
	* mechanism is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param mechanismType the type of the XML processing mechanism and
	*    representation. See the <a
	*    href="../../../../../../technotes/guides/security/xmldsig/overview.html#Service Provider">
	*    Service Providers</a> section of the API overview for a list of
	*    standard mechanism types.
	* @return a new <code>KeyInfoFactory</code>
	* @throws NullPointerException if <code>mechanismType</code> is
	*    <code>null</code>
	* @throws NoSuchMechanismException if no <code>Provider</code> supports a
	*    <code>KeyInfoFactory</code> implementation for the specified mechanism
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(mechanismType : String) : javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
	
	/**
	* Returns a <code>KeyInfoFactory</code> that supports the
	* requested XML processing mechanism and representation type (ex: "DOM"),
	* as supplied by the specified provider. Note that the specified
	* <code>Provider</code> object does not have to be registered in the
	* provider list.
	*
	* @param mechanismType the type of the XML processing mechanism and
	*    representation. See the <a
	*    href="../../../../../../technotes/guides/security/xmldsig/overview.html#Service Provider">
	*    Service Providers</a> section of the API overview for a list of
	*    standard mechanism types.
	* @param provider the <code>Provider</code> object
	* @return a new <code>KeyInfoFactory</code>
	* @throws NullPointerException if <code>mechanismType</code> or
	*    <code>provider</code> are <code>null</code>
	* @throws NoSuchMechanismException if a <code>KeyInfoFactory</code>
	*    implementation for the specified mechanism is not available from the
	*    specified <code>Provider</code> object
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(mechanismType : String, provider : java.security.Provider) : javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
	
	/**
	* Returns a <code>KeyInfoFactory</code> that supports the
	* requested XML processing mechanism and representation type (ex: "DOM"),
	* as supplied by the specified provider. The specified provider must be
	* registered in the security provider list.
	*
	* <p>Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param mechanismType the type of the XML processing mechanism and
	*    representation. See the <a
	*    href="../../../../../../technotes/guides/security/xmldsig/overview.html#Service Provider">
	*    Service Providers</a> section of the API overview for a list of
	*    standard mechanism types.
	* @param provider the string name of the provider
	* @return a new <code>KeyInfoFactory</code>
	* @throws NoSuchProviderException if the specified provider is not
	*    registered in the security provider list
	* @throws NullPointerException if <code>mechanismType</code> or
	*    <code>provider</code> are <code>null</code>
	* @throws NoSuchMechanismException if a <code>KeyInfoFactory</code>
	*    implementation for the specified mechanism is not available from the
	*    specified provider
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance(mechanismType : String, provider : String) : javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
	
	/**
	* Returns a <code>KeyInfoFactory</code> that supports the
	* default XML processing mechanism and representation type ("DOM").
	*
	* <p>This method uses the standard JCA provider lookup mechanism to
	* locate and instantiate a <code>KeyInfoFactory</code> implementation of
	* the default mechanism type. It traverses the list of registered security
	* <code>Provider</code>s, starting with the most preferred
	* <code>Provider</code>.  A new <code>KeyInfoFactory</code> object
	* from the first <code>Provider</code> that supports the DOM mechanism is
	* returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @return a new <code>KeyInfoFactory</code>
	* @throws NoSuchMechanismException if no <code>Provider</code> supports a
	*    <code>KeyInfoFactory</code> implementation for the DOM mechanism
	* @see Provider
	*/
	@:overload @:public @:static public static function getInstance() : javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
	
	/**
	* Returns the type of the XML processing mechanism and representation
	* supported by this <code>KeyInfoFactory</code> (ex: "DOM")
	*
	* @return the XML processing mechanism type supported by this
	*    <code>KeyInfoFactory</code>
	*/
	@:overload @:public @:final public function getMechanismType() : String;
	
	/**
	* Returns the provider of this <code>KeyInfoFactory</code>.
	*
	* @return the provider of this <code>KeyInfoFactory</code>
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Creates a <code>KeyInfo</code> containing the specified list of
	* key information types.
	*
	* @param content a list of one or more {@link XMLStructure}s representing
	*    key information types. The list is defensively copied to protect
	*    against subsequent modification.
	* @return a <code>KeyInfo</code>
	* @throws NullPointerException if <code>content</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>content</code> is empty
	* @throws ClassCastException if <code>content</code> contains any entries
	*    that are not of type {@link XMLStructure}
	*/
	@:overload @:public @:abstract public function newKeyInfo(content : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	/**
	* Creates a <code>KeyInfo</code> containing the specified list of key
	* information types and optional id. The
	* <code>id</code> parameter represents the value of an XML
	* <code>ID</code> attribute and is useful for referencing
	* the <code>KeyInfo</code> from other XML structures.
	*
	* @param content a list of one or more {@link XMLStructure}s representing
	*    key information types. The list is defensively copied to protect
	*    against subsequent modification.
	* @param id the value of an XML <code>ID</code> (may be <code>null</code>)
	* @return a <code>KeyInfo</code>
	* @throws NullPointerException if <code>content</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>content</code> is empty
	* @throws ClassCastException if <code>content</code> contains any entries
	*    that are not of type {@link XMLStructure}
	*/
	@:overload @:public @:abstract public function newKeyInfo(content : java.util.List<Dynamic>, id : String) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	/**
	* Creates a <code>KeyName</code> from the specified name.
	*
	* @param name the name that identifies the key
	* @return a <code>KeyName</code>
	* @throws NullPointerException if <code>name</code> is <code>null</code>
	*/
	@:overload @:public @:abstract public function newKeyName(name : String) : javax.xml.crypto.dsig.keyinfo.KeyName;
	
	/**
	* Creates a <code>KeyValue</code> from the specified public key.
	*
	* @param key the public key
	* @return a <code>KeyValue</code>
	* @throws KeyException if the <code>key</code>'s algorithm is not
	*    recognized or supported by this <code>KeyInfoFactory</code>
	* @throws NullPointerException if <code>key</code> is <code>null</code>
	*/
	@:overload @:public @:abstract public function newKeyValue(key : java.security.PublicKey) : javax.xml.crypto.dsig.keyinfo.KeyValue;
	
	/**
	* Creates a <code>PGPData</code> from the specified PGP public key
	* identifier.
	*
	* @param keyId a PGP public key identifier as defined in <a href=
	*    "http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>, section 11.2.
	*    The array is cloned to protect against subsequent modification.
	* @return a <code>PGPData</code>
	* @throws NullPointerException if <code>keyId</code> is <code>null</code>
	* @throws IllegalArgumentException if the key id is not in the correct
	*    format
	*/
	@:overload @:public @:abstract public function newPGPData(keyId : java.NativeArray<java.StdTypes.Int8>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	/**
	* Creates a <code>PGPData</code> from the specified PGP public key
	* identifier, and optional key material packet and list of external
	* elements.
	*
	* @param keyId a PGP public key identifier as defined in <a href=
	*    "http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>, section 11.2.
	*    The array is cloned to protect against subsequent modification.
	* @param keyPacket a PGP key material packet as defined in <a href=
	*    "http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>, section 5.5.
	*    The array is cloned to protect against subsequent modification. May
	*    be <code>null</code>.
	* @param other a list of {@link XMLStructure}s representing elements from
	*    an external namespace. The list is defensively copied to protect
	*    against subsequent modification. May be <code>null</code> or empty.
	* @return a <code>PGPData</code>
	* @throws NullPointerException if <code>keyId</code> is <code>null</code>
	* @throws IllegalArgumentException if the <code>keyId</code> or
	*    <code>keyPacket</code> is not in the correct format. For
	*    <code>keyPacket</code>, the format of the packet header is
	*    checked and the tag is verified that it is of type key material. The
	*    contents and format of the packet body are not checked.
	* @throws ClassCastException if <code>other</code> contains any
	*    entries that are not of type {@link XMLStructure}
	*/
	@:overload @:public @:abstract public function newPGPData(keyId : java.NativeArray<java.StdTypes.Int8>, keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	/**
	* Creates a <code>PGPData</code> from the specified PGP key material
	* packet and optional list of external elements.
	*
	* @param keyPacket a PGP key material packet as defined in <a href=
	*    "http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>, section 5.5.
	*    The array is cloned to protect against subsequent modification.
	* @param other a list of {@link XMLStructure}s representing elements from
	*    an external namespace. The list is defensively copied to protect
	*    against subsequent modification. May be <code>null</code> or empty.
	* @return a <code>PGPData</code>
	* @throws NullPointerException if <code>keyPacket</code> is
	*    <code>null</code>
	* @throws IllegalArgumentException if <code>keyPacket</code> is not in the
	*    correct format. For <code>keyPacket</code>, the format of the packet
	*    header is checked and the tag is verified that it is of type key
	*    material. The contents and format of the packet body are not checked.
	* @throws ClassCastException if <code>other</code> contains any
	*    entries that are not of type {@link XMLStructure}
	*/
	@:overload @:public @:abstract public function newPGPData(keyPacket : java.NativeArray<java.StdTypes.Int8>, other : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.PGPData;
	
	/**
	* Creates a <code>RetrievalMethod</code> from the specified URI.
	*
	* @param uri the URI that identifies the <code>KeyInfo</code> information
	*    to be retrieved
	* @return a <code>RetrievalMethod</code>
	* @throws NullPointerException if <code>uri</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>uri</code> is not RFC 2396
	*    compliant
	*/
	@:overload @:public @:abstract public function newRetrievalMethod(uri : String) : javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
	
	/**
	* Creates a <code>RetrievalMethod</code> from the specified parameters.
	*
	* @param uri the URI that identifies the <code>KeyInfo</code> information
	*    to be retrieved
	* @param type a URI that identifies the type of <code>KeyInfo</code>
	*    information to be retrieved (may be <code>null</code>)
	* @param transforms a list of {@link Transform}s. The list is defensively
	*    copied to protect against subsequent modification. May be
	*    <code>null</code> or empty.
	* @return a <code>RetrievalMethod</code>
	* @throws NullPointerException if <code>uri</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>uri</code> is not RFC 2396
	*    compliant
	* @throws ClassCastException if <code>transforms</code> contains any
	*    entries that are not of type {@link Transform}
	*/
	@:overload @:public @:abstract public function newRetrievalMethod(uri : String, type : String, transforms : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
	
	/**
	* Creates a <code>X509Data</code> containing the specified list of
	* X.509 content.
	*
	* @param content a list of one or more X.509 content types. Valid types are
	*    {@link String} (subject names), <code>byte[]</code> (subject key ids),
	*    {@link java.security.cert.X509Certificate}, {@link X509CRL},
	*    or {@link XMLStructure} ({@link X509IssuerSerial}
	*    objects or elements from an external namespace). Subject names are
	*    distinguished names in RFC 2253 String format. Implementations MUST
	*    support the attribute type keywords defined in RFC 2253 (CN, L, ST,
	*    O, OU, C, STREET, DC and UID). Implementations MAY support additional
	*    keywords. The list is defensively copied to protect against
	*    subsequent modification.
	* @return a <code>X509Data</code>
	* @throws NullPointerException if <code>content</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>content</code> is empty, or
	*    if a subject name is not RFC 2253 compliant or one of the attribute
	*    type keywords is not recognized.
	* @throws ClassCastException if <code>content</code> contains any entries
	*    that are not of one of the valid types mentioned above
	*/
	@:overload @:public @:abstract public function newX509Data(content : java.util.List<Dynamic>) : javax.xml.crypto.dsig.keyinfo.X509Data;
	
	/**
	* Creates an <code>X509IssuerSerial</code> from the specified X.500 issuer
	* distinguished name and serial number.
	*
	* @param issuerName the issuer's distinguished name in RFC 2253 String
	*    format. Implementations MUST support the attribute type keywords
	*    defined in RFC 2253 (CN, L, ST, O, OU, C, STREET, DC and UID).
	*    Implementations MAY support additional keywords.
	* @param serialNumber the serial number
	* @return an <code>X509IssuerSerial</code>
	* @throws NullPointerException if <code>issuerName</code> or
	*    <code>serialNumber</code> are <code>null</code>
	* @throws IllegalArgumentException if the issuer name is not RFC 2253
	*    compliant or one of the attribute type keywords is not recognized.
	*/
	@:overload @:public @:abstract public function newX509IssuerSerial(issuerName : String, serialNumber : java.math.BigInteger) : javax.xml.crypto.dsig.keyinfo.X509IssuerSerial;
	
	/**
	* Indicates whether a specified feature is supported.
	*
	* @param feature the feature name (as an absolute URI)
	* @return <code>true</code> if the specified feature is supported,
	*    <code>false</code> otherwise
	* @throws NullPointerException if <code>feature</code> is <code>null</code>
	*/
	@:overload @:public @:abstract public function isFeatureSupported(feature : String) : Bool;
	
	/**
	* Returns a reference to the <code>URIDereferencer</code> that is used by
	* default to dereference URIs in {@link RetrievalMethod} objects.
	*
	* @return a reference to the default <code>URIDereferencer</code>
	*/
	@:overload @:public @:abstract public function getURIDereferencer() : javax.xml.crypto.URIDereferencer;
	
	/**
	* Unmarshals a new <code>KeyInfo</code> instance from a
	* mechanism-specific <code>XMLStructure</code> (ex: {@link DOMStructure})
	* instance.
	*
	* @param xmlStructure a mechanism-specific XML structure from which to
	*   unmarshal the keyinfo from
	* @return the <code>KeyInfo</code>
	* @throws NullPointerException if <code>xmlStructure</code> is
	*   <code>null</code>
	* @throws ClassCastException if the type of <code>xmlStructure</code> is
	*   inappropriate for this factory
	* @throws MarshalException if an unrecoverable exception occurs during
	*   unmarshalling
	*/
	@:overload @:public @:abstract public function unmarshalKeyInfo(xmlStructure : javax.xml.crypto.XMLStructure) : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	
}
