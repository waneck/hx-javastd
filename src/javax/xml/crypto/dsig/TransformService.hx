package javax.xml.crypto.dsig;
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
* $Id: TransformService.java,v 1.6.4.1 2005/09/15 12:42:11 mullan Exp $
*/
extern class TransformService implements javax.xml.crypto.dsig.Transform
{
	/**
	* Default constructor, for invocation by subclasses.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns a <code>TransformService</code> that supports the specified
	* algorithm URI (ex: {@link Transform#XPATH2}) and mechanism type
	* (ex: DOM).
	*
	* <p>This method uses the standard JCA provider lookup mechanism to
	* locate and instantiate a <code>TransformService</code> implementation
	* of the desired algorithm and <code>MechanismType</code> service
	* attribute. It traverses the list of registered security
	* <code>Provider</code>s, starting with the most preferred
	* <code>Provider</code>. A new <code>TransformService</code> object
	* from the first <code>Provider</code> that supports the specified
	* algorithm and mechanism type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the URI of the algorithm
	* @param mechanismType the type of the XML processing mechanism and
	*   representation
	* @return a new <code>TransformService</code>
	* @throws NullPointerException if <code>algorithm</code> or
	*   <code>mechanismType</code> is  <code>null</code>
	* @throws NoSuchAlgorithmException if no <code>Provider</code> supports a
	*   <code>TransformService</code> implementation for the specified
	*   algorithm and mechanism type
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String, mechanismType : String) : javax.xml.crypto.dsig.TransformService;
	
	/**
	* Returns a <code>TransformService</code> that supports the specified
	* algorithm URI (ex: {@link Transform#XPATH2}) and mechanism type
	* (ex: DOM) as supplied by the specified provider. Note that the specified
	* <code>Provider</code> object does not have to be registered in the
	* provider list.
	*
	* @param algorithm the URI of the algorithm
	* @param mechanismType the type of the XML processing mechanism and
	*   representation
	* @param provider the <code>Provider</code> object
	* @return a new <code>TransformService</code>
	* @throws NullPointerException if <code>provider</code>,
	*   <code>algorithm</code>, or <code>mechanismType</code> is
	*   <code>null</code>
	* @throws NoSuchAlgorithmException if a <code>TransformService</code>
	*   implementation for the specified algorithm and mechanism type is not
	*   available from the specified <code>Provider</code> object
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String, mechanismType : String, provider : java.security.Provider) : javax.xml.crypto.dsig.TransformService;
	
	/**
	* Returns a <code>TransformService</code> that supports the specified
	* algorithm URI (ex: {@link Transform#XPATH2}) and mechanism type
	* (ex: DOM) as supplied by the specified provider. The specified provider
	* must be registered in the security provider list.
	*
	* <p>Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param algorithm the URI of the algorithm
	* @param mechanismType the type of the XML processing mechanism and
	*   representation
	* @param provider the string name of the provider
	* @return a new <code>TransformService</code>
	* @throws NoSuchProviderException if the specified provider is not
	*   registered in the security provider list
	* @throws NullPointerException if <code>provider</code>,
	*   <code>mechanismType</code>, or <code>algorithm</code> is
	*   <code>null</code>
	* @throws NoSuchAlgorithmException if a <code>TransformService</code>
	*   implementation for the specified algorithm and mechanism type is not
	*   available from the specified provider
	* @see Provider
	*/
	@:overload public static function getInstance(algorithm : String, mechanismType : String, provider : String) : javax.xml.crypto.dsig.TransformService;
	
	/**
	* Returns the mechanism type supported by this <code>TransformService</code>.
	*
	* @return the mechanism type
	*/
	@:overload @:final public function getMechanismType() : String;
	
	/**
	* Returns the URI of the algorithm supported by this
	* <code>TransformService</code>.
	*
	* @return the algorithm URI
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Returns the provider of this <code>TransformService</code>.
	*
	* @return the provider
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this <code>TransformService</code> with the specified
	* parameters.
	*
	* <p>If the parameters exist in XML form, the
	* {@link #init(XMLStructure, XMLCryptoContext)} method should be used to
	* initialize the <code>TransformService</code>.
	*
	* @param params the algorithm parameters (may be <code>null</code> if
	*   not required or optional)
	* @throws InvalidAlgorithmParameterException if the specified parameters
	*   are invalid for this algorithm
	*/
	@:overload @:abstract public function init(params : javax.xml.crypto.dsig.spec.TransformParameterSpec) : Void;
	
	/**
	* Marshals the algorithm-specific parameters. If there are no parameters
	* to be marshalled, this method returns without throwing an exception.
	*
	* @param parent a mechanism-specific structure containing the parent
	*    node that the marshalled parameters should be appended to
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @throws ClassCastException if the type of <code>parent</code> or
	*    <code>context</code> is not compatible with this
	*    <code>TransformService</code>
	* @throws NullPointerException if <code>parent</code> is <code>null</code>
	* @throws MarshalException if the parameters cannot be marshalled
	*/
	@:overload @:abstract public function marshalParams(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	/**
	* Initializes this <code>TransformService</code> with the specified
	* parameters and document context.
	*
	* @param parent a mechanism-specific structure containing the parent
	*    structure
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @throws ClassCastException if the type of <code>parent</code> or
	*    <code>context</code> is not compatible with this
	*    <code>TransformService</code>
	* @throws NullPointerException if <code>parent</code> is <code>null</code>
	* @throws InvalidAlgorithmParameterException if the specified parameters
	*   are invalid for this algorithm
	*/
	@:overload @:abstract public function init(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	* If the output of this transform is an <code>OctetStreamData</code>, then
	* this method returns <code>null</code> and the bytes are written to the
	* specified <code>OutputStream</code>. Otherwise, the
	* <code>OutputStream</code> is ignored and the method behaves as if
	* {@link #transform(Data, XMLCryptoContext)} were invoked.
	*
	* @param data the data to be transformed
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @param os the <code>OutputStream</code> that should be used to write
	*    the transformed data to
	* @return the transformed data (or <code>null</code> if the data was
	*    written to the <code>OutputStream</code> parameter)
	* @throws NullPointerException if <code>data</code> or <code>os</code>
	*    is <code>null</code>
	* @throws TransformException if an error occurs while executing the
	*    transform
	*/
	@:overload @:abstract @:public public function transform(data : javax.xml.crypto.Data, context : javax.xml.crypto.XMLCryptoContext, os : java.io.OutputStream) : javax.xml.crypto.Data;
	
	/**
	* Indicates whether a specified feature is supported.
	*
	* @param feature the feature name (as an absolute URI)
	* @return <code>true</code> if the specified feature is supported,
	*    <code>false</code> otherwise
	* @throws NullPointerException if <code>feature</code> is <code>null</code>
	*/
	@:overload public function isFeatureSupported(feature : String) : Bool;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	*
	* @param data the data to be transformed
	* @param context the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @return the transformed data
	* @throws NullPointerException if <code>data</code> is <code>null</code>
	* @throws TransformException if an error occurs while executing the
	*    transform
	*/
	@:overload @:abstract @:public public function transform(data : javax.xml.crypto.Data, context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	/**
	* Returns the algorithm-specific input parameters associated with this
	* <code>Transform</code>.
	* <p>
	* The returned parameters can be typecast to a
	* {@link TransformParameterSpec} object.
	*
	* @return the algorithm-specific input parameters (may be <code>null</code>
	*    if not specified)
	*/
	@:overload public function getParameterSpec() : java.security.spec.AlgorithmParameterSpec;
	
	
}
@:native('javax$xml$crypto$dsig$TransformService$MechanismMapEntry') @:internal extern class TransformService_MechanismMapEntry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function setValue(value : Dynamic) : Dynamic;
	
	@:overload public function hashCode() : Int;
	
	
}
